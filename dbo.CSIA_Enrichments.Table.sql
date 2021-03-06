USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[CSIA_Enrichments]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSIA_Enrichments](
	[row_names] [text] NULL,
	[Reference] [text] NULL,
	[Compound] [text] NULL,
	[Enrichment Factor 13C/12C] [float] NULL,
	[Enrichment Factor 37Cl/35Cl] [float] NULL,
	[Enrichment Factor 2H/H] [float] NULL,
	[Biotic or Abiotic] [text] NULL,
	[Conditions] [text] NULL,
	[Biotic Organism] [text] NULL,
	[Abiotic Mechanism] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
