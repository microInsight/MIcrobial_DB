USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_TTLPhylumClassificationResults]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_TTLPhylumClassificationResults](
	[NGS_TTLPhylumClassificationResultsID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [varchar](50) NULL,
	[sampleName] [varchar](50) NULL,
	[PhylumRank] [int] NULL,
	[Phylum] [varchar](250) NULL,
	[numHits] [int] NULL,
	[fmtHits] [varchar](20) NULL,
	[hitPercent] [varchar](6) NULL,
	[tableNum] [varchar](3) NULL,
	[tableTitle] [varchar](250) NULL,
	[tableTitle2] [varchar](250) NULL,
 CONSTRAINT [pk_TTLPhylumClassificationResults] PRIMARY KEY CLUSTERED 
(
	[NGS_TTLPhylumClassificationResultsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
