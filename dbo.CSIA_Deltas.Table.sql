USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[CSIA_Deltas]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSIA_Deltas](
	[row_names] [text] NULL,
	[Reference] [text] NULL,
	[Compound] [text] NULL,
	[Manufactured d13C] [float] NULL,
	[Manufactured d2H] [float] NULL,
	[Manufactured d37Cl] [float] NULL,
	[Biotic or Abiotic] [text] NULL,
	[Conditions] [text] NULL,
	[Biotic Organism] [text] NULL,
	[Abiotic Mechanism] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
