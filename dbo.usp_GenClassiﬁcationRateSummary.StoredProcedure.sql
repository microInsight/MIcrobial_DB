USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenClassiﬁcationRateSummary]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[usp_GenClassiﬁcationRateSummary] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(50) = 'Classification Rate Summary for '

) as 
/**/
if @miid <> 'x'
Begin
	Declare 
		   @KingdomCnt	Int
		  ,@PhylumCnt	Int
		  ,@ClassCnt	Int
		  ,@OrderCnt	Int
		  ,@FamilyCnt	Int
		  ,@GenusCnt	Int
		  ,@SpeciesCnt	Int
		  ,@ClusterCntPF INT

    Select 
		   @KingdomCnt	= KingdomCnt
		  ,@PhylumCnt	= PhylumCnt
		  ,@ClassCnt	= ClassCnt	
		  ,@OrderCnt	= OrderCnt	
		  ,@FamilyCnt	= FamilyCnt
		  ,@GenusCnt	= GenusCnt	
		  ,@SpeciesCnt	= SpeciesCnt
		  ,@ClusterCntPF =ClusterCntPF
		   
	from NGS_SampleAggregate where ClientSampleID = @sampleName


	Select 0 as Sort1, 0 as Sort2,''  as HTML_Line
	Union Select 1, 0,'<table><tr><td class="FirstLabel">Table '+@tableNum+':</td><td class="FirstColumn">' + @tableTitle + @sampleName +'</td></tr></table>'
	Union Select 2, 0,'<table class="full">'
	Union Select 3, 0,'<tr class="RedBackLabelBottom"><td>Taxonomic Level</td><td>Reads Related to Taxonomic Level</td><td>% Total Reads Classified to Taxonomic Level</td></tr>'
	Union Select 4, 6,'<tr><td class="FirstColumn">Kingdom</td><td class="CenterData">'+Format(@KingdomCnt,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @KingdomCnt )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 5,'<tr><td class="FirstColumn">Phylum </td><td class="CenterData">'+Format(@PhylumCnt ,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @PhylumCnt )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 4,'<tr><td class="FirstColumn">Class  </td><td class="CenterData">'+Format(@ClassCnt  ,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @ClassCnt  )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 3,'<tr><td class="FirstColumn">Order  </td><td class="CenterData">'+Format(@OrderCnt  ,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @OrderCnt  )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 2,'<tr><td class="FirstColumn">Family </td><td class="CenterData">'+Format(@FamilyCnt ,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @FamilyCnt )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 1,'<tr><td class="FirstColumn">Genus  </td><td class="CenterData">'+Format(@GenusCnt  ,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @GenusCnt  )/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 4, 0,'<tr><td class="FirstColumn">Species</td><td class="CenterData">'+Format(@SpeciesCnt,'N0','en-us')+'</td><td class="CenterData">'+Format(convert(numeric(18,5), @SpeciesCnt)/ @ClusterCntPF,'P1', 'en-us')+'</td></tr>'
	Union Select 5, 0,'</table><br /><br />'
	Order by Sort1, Sort2
End
GO
