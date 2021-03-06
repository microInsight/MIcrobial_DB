USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenTTLSqlStatistics]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[usp_GenTTLSqlStatistics] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(50) = 'Sequencing Statistics for '

) as 
/**/
if @miid <> 'x'
Begin

	Select 0 as Sort1, 0 as Sort2,'<h3>Results for ' + @sampleName + '</h3>' As HTMLLine
	Union Select 1, 0,'<table><tr><td class="FirstLabel">Table '+@tableNum+':</td><td class="FirstColumn">' + @tableTitle + @sampleName + '</td></tr></table>'
	Union Select 2, 0,'<table class="full">'
	Union Select 3, 0,'<tr class="RedBackLabelBottom"><td>Total Reads</td><td>Reads Passing Quality Filtering</td><td>% Reads Passing Quality Filtering </td></tr>'
	Union Select 4, 0,'<tr><td class="FirstColumn">'+Format(clusterCnt,'N0','en-us') + '</td><td class="CenterData">' + Format(clusterCntPF,'N0','en-us') 
			+ '</td><td class="CenterData">' + Format(convert(decimal(18,5), ClusterCnt) / ClusterCntPF,'P1','en-us') + '</td></tr>'
			from NGS_SampleAggregate nsa join lims_sample ls on nsa.ProjectID = ls.ProjectID and nsa.SampleNumber = ls.LabSampleID where ls.ClientSampleID = @sampleName
	Union Select 5, 0,'</table><br /><br />'
	Order by Sort1, Sort2
End
GO
