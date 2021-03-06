USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenTTLPhylumClassificationResults]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[usp_GenTTLPhylumClassificationResults] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '5'
		, @tableTitle varchar(250) = 'Top phyla classification results for '
		, @tableTitle2 varchar(250) = '. Additional identified phyla included in accompanying Excel data file'

) as 
/**/
if @miid <> 'x'
Begin
	declare @ttlHits int
	Select @ttlHits = sum(num_hits)
	  FROM [NGS_Statistics]
	  where SampleName = 'FD-1-IN-0618' and coalesce(phylum, '') <> ''

	declare @tmpTable table
	(
		Phylum varchar(250)
		, num_hits int
	)
	
	insert into @tmpTable
	(
	Phylum
	, num_hits
	)
	SELECT top 8 [Phylum],sum([num_hits])
	  FROM [NGS_Statistics]
	  where SampleName = @sampleName and coalesce(phylum, '') <> ''
	  group by phylum
	  order by sum(num_hits) desc

	Select 0 as Sort1, 0 as Sort2,'<h3>' + @sampleName + ' Classification Results by Taxonomic Level</h3>' As HTMLLine
	Union Select 1, 0,'<table><tr><td class="FirstLabel">Table '+@tableNum+':</td><td class="FirstColumn">' + @tableTitle + @sampleName + @tableTitle2 + '</td></tr></table>'
	Union Select 2, 0,'<table class="full">'
	Union Select 3, 0,'<tr class="RedBackLabelBottom"><td>Classification</td><td>Number of Reads </td><td>% Total Reads</td></tr>'
	Union Select top 8 4, num_hits as Sort2,'<tr><td class="FirstColumn">'+[Phylum] + '</td><td class="CenterData">' + format([num_hits], 'N0', 'en-us')
			+ '</td><td class="CenterData">' + format(convert(decimal(18,5), [num_hits])/@ttlHits, 'P1', 'en-us') + '</td></tr>' from @tmpTable
	Union Select 5, 0,'</table><br /><br />'
	Order by Sort1, Sort2 desc
End
GO
