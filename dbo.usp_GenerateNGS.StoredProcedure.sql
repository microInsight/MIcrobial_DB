USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenerateNGS]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[usp_GenerateNGS] (
	@ProjectID varchar(50)  = '124PF'
) as 
Declare 
	  @SampleName varchar(50) = 'FD-1-IN-0618'
	  , @SampleNum int = 1
	  , @TableNum int = 0
	  , @TablesPerSample int = 4
	  , @FigureNum int = 0
	  , @FiguresPerSample int = 3
	  , @SectionNum int = 0
	  , @MI_Identifier varchar(50) = '124PF-1'

Declare @HTMLTable table (
	SampleNum int
	, SectionID int
	, Sort1 int
	, Sort2 int
	, HtmlLine Varchar(4000)
)

Declare @SectionTemp table (
	Sort1 int
	, Sort2 int
	, HtmlLine Varchar(4000)
)


Insert @sectionTemp exec usp_GenReportFront @projectID
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select '', -1, Sort1, Sort2,  HtmlLine from @SectionTemp
Delete From @SectionTemp


Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_GenSampleOverview @ProjectID,'',1
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select '', 0, Sort1, Sort2,  HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_GenDiversistyIndexes @ProjectID,'',2
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select '', 1,Sort1, Sort2,  HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @FigureNum = @FigureNum+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_DspPrincipalCoordinateAnalysis @ProjectID, @FigureNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select '', 3,Sort1, Sort2,  HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @FigureNum = @FigureNum+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_HierarchicalClusteringDendrogram @ProjectID, @FigureNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select '', 4,Sort1, Sort2,  HtmlLine from @SectionTemp
Delete From @SectionTemp

Declare curSamples cursor for 
Select ClientSampleID, LabSampleID 
from LIMS_Sample 
where ProjectID = @ProjectID
order by LabSampleID;


open curSamples
Fetch next from curSamples into @sampleName, @sampleNum

While @@FETCH_STATUS = 0
begin
set @MI_Identifier = @ProjectID + '-' + convert(varchar(3), @sampleNum)
Set @TableNum = 2+(@SampleNum-1)*@TablesPerSample+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_GenTTLSqlStatistics @ProjectID, @SampleName, @TableNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @TableNum = 2+(@SampleNum-1)*@TablesPerSample+2;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_GenClassiﬁcationRateSummary @ProjectID, @SampleName, @TableNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @FigureNum = @FigureNum+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_DspClassificationRateTaxonomicLevel @ProjectID, @SampleName, @MI_Identifier, @FigureNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @TableNum = 2+(@SampleNum-1)*@TablesPerSample+3;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_GenTTLPhylumClassificationResults @ProjectID, @SampleName, @TableNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @FigureNum = @FigureNum+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_DspTopPhylumClassiﬁcationResults @ProjectID, @SampleName, @MI_Identifier, @FigureNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @TableNum = 2+(@SampleNum-1)*@TablesPerSample+4;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_Gen_GenClassificationResults @ProjectID, @SampleName, @TableNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Set @FigureNum = @FigureNum+1;
Set @SectionNum = @SectionNum+1;
Insert @sectionTemp exec usp_DspTopGenusClassiﬁcationResults @ProjectID, @SampleName, @MI_Identifier, @FigureNum
Insert into @HTMLTable (SampleNum, SectionID, Sort1, Sort2, HtmlLine) select @SampleNum, @SectionNum, Sort1, Sort2, HtmlLine from @SectionTemp
Delete From @SectionTemp

Fetch next from curSamples into @sampleName, @sampleNum

End
close curSamples
deallocate curSamples

Delete from NGS_Report where ProjectID = @ProjectID

Insert Into NGS_Report 
(
	ProjectID
	, HTMLLine
)
Select @ProjectID, HtmlLine from @HTMLTable
order by SampleNum, SectionID, sort1, sort2 desc

GO
