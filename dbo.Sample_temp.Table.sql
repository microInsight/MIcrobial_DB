USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[Sample_temp]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sample_temp](
	[Kingdom] [varchar](250) NULL,
	[Phylum] [varchar](250) NULL,
	[Class] [varchar](250) NULL,
	[Order] [varchar](250) NULL,
	[Family] [varchar](250) NULL,
	[Genus] [varchar](250) NULL,
	[Species] [varchar](250) NULL,
	[num_hits] [varchar](50) NULL,
	[%_hits] [varchar](50) NULL
) ON [PRIMARY]
GO
