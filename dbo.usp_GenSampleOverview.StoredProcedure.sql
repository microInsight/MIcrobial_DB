USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenSampleOverview]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[usp_GenSampleOverview] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(50) = 'Sample information for '

) as 
/**/
if @miid <> 'x'
Begin

	Select 0 as Sort1, 0 as Sort2,'<h3>Sample Overview for ' + @miid + '</h3>' As HTMLLine
	Union Select 1, 0,'<table><tr><td class="FirstLabel">Table '+@tableNum+':</td><td class="FirstColumn">' + @tableTitle + @miid + '</td></tr></table>'
	Union Select 2, 0,'<table class="full">'
	Union Select 3, 0,'<tr class="RedBackLabelBottom"><th>MI&nbsp;Identifier</th><th>Sample Name</th><th>Sample Date</th><th>Reads Passing Quality Filtering</th><th>% Reads Classified to Genus</th></tr>'
	Union Select 4, 0,'<tr><td class="FirstColumn">'+MI_Identitfier + '</td><td class="CenterData">' + ClientSampleID + '</td><td class="CenterData">' + convert(varchar(20), datesampled,101) 
		+ '</td><td class="CenterData">' + format(ClusterCntPF, 'N0', 'en-us')+ '</td><td class="CenterData">' + format([ClassificationRate], 'P1', 'en-us')+ '</td></tr>'
		from NGS_SampleAggregate nsa join lims_sample ls on nsa.ProjectID = ls.ProjectID and nsa.SampleNumber = ls.LabSampleID where ls.ProjectID = @miid
	Union Select 5, 0,'</table><br /><br />'
	Order by Sort1, Sort2
End
GO
