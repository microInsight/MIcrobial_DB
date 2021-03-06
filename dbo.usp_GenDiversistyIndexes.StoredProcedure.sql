USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenDiversistyIndexes]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[usp_GenDiversistyIndexes] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(50) = 'Genus diversity indices for '
		, @tableTitle2 varchar(50) = '. Please refer to the Interpretation section for more information on what these diversity indices mean.'

) as 
/**/
if @miid <> 'x'
Begin

	Select 0 as Sort1, 0 as Sort2,'' As HTMLLine
	Union Select 1, 0,'<table><tr><td class="FirstLabel">Table '+@tableNum+':</td><td class="FirstColumn">' + @tableTitle + @miid + @tableTitle2 + '</td></tr></table>'
	Union Select 2, 0,'<table class="full">'
	Union Select 3, 0,'<tr class="RedBackLabelBottom"><th>MI&nbsp;Identifier</th><th>Sample Name</th><th>Shannon</th><th>Simpson</th><th>Chao1 Predicted Genera</th><th>Total Genera Observed</th><th>Total Eubacteria (cells/mL)</th></tr>'
	Union Select 4, 100-SampleNumber,'<tr><td class="FirstColumn">'+MI_Identitfier + '</td><td class="CenterData">' + ClientSampleID + '</td><td class="CenterData">' + Format(Shannon, 'N1', 'en-us')
		+ '</td><td class="CenterData">' + format(Simpson, 'N2', 'en-us')+ '</td><td class="CenterData">' + format(ChaolPredicted, 'N0', 'en-us')+ '</td><td class="CenterData">' + format(TtlGenera, 'N0', 'en-us')+ '</td><td class="CenterData">' + format(TtlEubacteria, '0.00 e00')+ '</td></tr>'
		from NGS_SampleAggregate nsa join lims_sample ls on nsa.ProjectID = ls.ProjectID and nsa.SampleNumber = ls.LabSampleID where ls.ProjectID = @miid
	Union Select 5, 0,'</table><br /><br />'
	Order by Sort1, Sort2 desc
End
GO
