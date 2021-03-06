USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_Statistics]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_Statistics](
	[NGS_StatisticsID] [int] IDENTITY(1,1) NOT NULL,
	[SourceFile] [varchar](250) NULL,
	[MIID] [varchar](20) NULL,
	[SampleName] [varchar](250) NULL,
	[Kingdom] [varchar](250) NULL,
	[Phylum] [varchar](250) NULL,
	[Class] [varchar](250) NULL,
	[Order] [varchar](250) NULL,
	[Family] [varchar](250) NULL,
	[Genus] [varchar](250) NULL,
	[Species] [varchar](250) NULL,
	[num_hits] [int] NULL,
	[PercentHits] [numeric](18, 5) NULL
) ON [PRIMARY]
GO
