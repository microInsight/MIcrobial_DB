USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenTTLPhylumClassificationResultsTable]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Drop table NGS_TTLPhylumClassificationResults

Create table NGS_TTLPhylumClassificationResults
(
	NGS_TTLPhylumClassificationResultsID int identity(1,1)
	, ProjectID varchar(50)
	, sampleName varchar(50)
	, PhylumRank int
	, Phylum varchar(250)
	, numHits int
	, fmtHits varchar(20)
	, hitPercent varchar(6)
	, tableNum varchar(3)
	, tableTitle varchar(250)
	, tableTitle2 varchar(250)
	,
 CONSTRAINT [pk_TTLPhylumClassificationResults] PRIMARY KEY CLUSTERED 
(
	 NGS_TTLPhylumClassificationResultsID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



*/



CREATE procedure [dbo].[usp_GenTTLPhylumClassificationResultsTable] (
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
	  where SampleName = @sampleName and coalesce(phylum, '') <> ''

	delete from NGS_TTLPhylumClassificationResults where projectID = @miid and sampleName = @sampleName

	
	insert into NGS_TTLPhylumClassificationResults
	(
	 ProjectID
	, sampleName
	, PhylumRank
	, Phylum
	, numHits 
	, fmtHits
	, hitPercent 
	, tableNum 
	, tableTitle 
	, tableTitle2 
	)
	SELECT 
		@miid	ProjectID
		, @sampleName SampleName
		, ROW_NUMBER() over (order by phits desc) PhylumRank
		, Phylum
		, PHits  NumHits
		, format(PHits, 'N0', 'en-us') fmtHits
		, format(convert(decimal(18,5), PHits)/@ttlHits, 'P1', 'en-us') hitPercent
		, @tableNum tableNum
		, @tableTitle tableTitle
		, @tableTitle2 tableTitle2
	From (
		Select [Phylum]
			, sum([num_hits]) PHits
		  FROM [NGS_Statistics]
		  where SampleName = @sampleName and coalesce(phylum, '') <> ''
		  group by phylum
		) a
	 order by PHits desc

--	Select * from NGS_TTLPhylumClassificationResults where projectID = @miid and sampleName = @sampleName
End
GO
