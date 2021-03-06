USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_Gen_GenClassificationResultsTable]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec usp_Gen_GenClassificationResultsTable '124PF','T5-D3-0618', '4','','',0,60
/**/
/*
Create table GenClassificationResultsTable (
	GenClassificationResultsTableID int identity(1,1)
	, tableRow			int
	, tablePage			int
	, ProjectName		varchar(250)
	, TableLabel		varchar(250)
	, TableNum			varchar(5)
	, TableTitle		varchar(250)
	, SampleName		varchar(50)
	, numHits			int
	, Genus				varchar(50)
	, fmtHits			varchar(15)
	, percentHits		varchar(6)
	, GenusDescription	varchar(4000)
	,
 CONSTRAINT [PK_GenClassificationResultsTable] PRIMARY KEY CLUSTERED 
(
	GenClassificationResultsTableID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
--*/
CREATE procedure [dbo].[usp_Gen_GenClassificationResultsTable] (
--Declare 
		@miid varchar(25) = '124PF'
		, @sampleName varchar(250) = 'FD-1-IN-0618'
		, @tableNum varchar(3) = '6'
		, @tableTitle varchar(250) = ''
		, @tableLabel varchar(400) = 'Default Label goes here'
		, @offset int = 0
		, @rowMax int = 60
)  as 
 if coalesce(@tableTitle,'')='' set @tableTitle = 'Top genera classification results ';
 Declare @ttlHits numeric(18,5)
 
 select @ttlHits = sum(num_hits)
  FROM [MicrobialInsights].[dbo].[NGS_Statistics]
 where SampleName = @sampleName and coalesce(Phylum, '') <>''


 select @ttlHits = sum(num_hits)
  FROM [NGS_Statistics]
 where SampleName = @sampleName and coalesce(Genus, '') <>''

INSERT INTO [NGS_GenClassificationResultsTable]
           ([tableRow]
           ,[tablePage]
           ,[ProjectName]
           ,[TableLabel]
           ,[TableNum]
           ,[TableTitle]
           ,[numHits]
           ,[SampleName]
           ,[Genus]
           ,[fmtHits]
           ,[percentHits]
           ,[GenusDescription])
Select ROW_NUMBER() over (order by t.num_hits desc) tableRow
	, (ROW_NUMBER() over (order by t.num_hits desc)+@offset) / @rowMax tablePage
	, @miid ProjectName
	, @tableLabel TableLabel
	, @tableNum TableNum
	, @tableTitle TableTitle
	, t.num_hits as hits
	, @sampleName SampleName
	, t.Genus
	, format(t.num_hits,'N0', 'en-us') numHits
	, format(t.percentHits, 'P1', 'en-us') percentHits
	, coalesce(t.description,'') Descrip
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
	order by num_hits desc

--select * from NGS_GenClassificationResultsTable
	
--*/
GO
