USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_SampleHits]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_SampleHits](
	[NGS_SampleHits_ID] [int] IDENTITY(1,1) NOT NULL,
	[SampleName] [varchar](6) NOT NULL,
	[Kingdom] [varchar](50) NULL,
	[Phylum] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Order] [varchar](50) NULL,
	[Family] [varchar](50) NULL,
	[Genus] [varchar](50) NULL,
	[Species] [varchar](50) NULL,
	[NumHits] [int] NULL,
	[HitPercent] [numeric](18, 5) NULL
) ON [PRIMARY]
GO
