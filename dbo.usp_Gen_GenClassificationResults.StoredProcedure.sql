USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_Gen_GenClassificationResults]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--exec usp_Gen_GenClassificationResults '124PF','T5-D3-0618', '4','','',0,60
/**/
CREATE procedure [dbo].[usp_Gen_GenClassificationResults] (
--Declare 
		@miid varchar(25)
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(250) = ''
		, @tableLabel varchar(400) = ''
		, @offset int = 0
		, @rowMax int = 60
 )  as 
 if coalesce(@tableTitle,'')='' set @tableTitle = 'Top genera classification results ';
 Declare @ttlHits numeric(18,5)
/****** Script for SelectTopNRows command from SSMS  ******
SELECT  [NGS_StatisticsID]
      ,[SourceFile]
      ,[MIID]
      ,[SampleName]
      ,[Kingdom]
      ,[Phylum]
      ,[Class]
      ,[Order]
      ,[Family]
      ,[Genus]
      ,[Species]
      ,[num_hits]
      ,[PercentHits]
  FROM [MicrobialInsights].[dbo].[NGS_Statistics]
 where SampleName = @sampleName
 --*/
 
-- Select @sampleName 
 
 select @ttlHits = sum(num_hits)
  FROM [MicrobialInsights].[dbo].[NGS_Statistics]
 where SampleName = @sampleName and coalesce(Phylum, '') <>''
-- select @ttlHits
 /*
 Select Phylum, sum(num_hits), round(sum(num_hits)/@ttlHits, 3) hitPercent
   FROM [MicrobialInsights].[dbo].[NGS_Statistics]
 where SampleName = 'FD-1-IN-0618' and coalesce(Phylum, '') <>''
Group by Phylum
order by sum(num_hits) desc
*/
 select @ttlHits = sum(num_hits)
  FROM [NGS_Statistics]
 where SampleName = @sampleName and coalesce(Genus, '') <>''
-- select @ttlHits

Select 0 as displayorder, 0 as num_hits, '<h3></h3><!--Table ' + @tableNum + ' Top Genus Classification Results -->' as HTML_Line
Union Select 1 as displayorder, 0 as num_hits, '    <table><tr><td class="FirstLabel">Table ' + @tableNum + ':</td><td class="FirstColumn">'+ @tableTitle +' for sample ' + @sampleName + '. Additional identified genera are included in the accompanying Excel data file.</td></tr></table>'
Union Select 2 as displayorder, 0 as num_hits, '    <table class="full"><tr class="RedBackLabelBottom"><td width="25%">Classiﬁcation</td><td width="13%">Number of Reads</td><td width="12%">% Total Reads</td><td>Description</td></tr>'
Union Select 3 as displayorder, t.num_hits as hits, '<tr><td class="FirstColumn">'+t.Genus+'</td>'
		+'<td class="CenterData">'+format(t.num_hits,'N0', 'en-us')+'</td>'+
		+'<td class="CenterData">'+format(t.percentHits, 'P1', 'en-us') + '</td>'+
		+'<td>'+coalesce(t.description,'') +'</td></tr>'
	from (
		Select sh.genus, num_hits, sh.PercentHits
		, d.description
		From (Select sh.genus, sum(num_hits) num_hits, round(sum(num_hits)/@ttlHits,3) percentHits
		from NGS_Statistics sh
		 where SampleName = @sampleName and coalesce(Genus, '') <>''
		 group by sh.genus
		) sh
		left join NGS_Descriptions d on sh.Genus = d.genus

	) t
	where num_hits > 1000
Union Select 4 as displayorder, 0 as num_hits, '</table>'
Union Select 5 as displayorder, 0 as num_hits, '<p>Note: The ”Other” category in this pie chart is the sum of all classiﬁcations with less than 3.50</p>'
order by displayorder, num_hits desc
	
--*/
GO
