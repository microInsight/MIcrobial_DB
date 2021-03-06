USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_GenClassificationResultsTable]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_GenClassificationResultsTable](
	[GenClassificationResultsTableID] [int] IDENTITY(1,1) NOT NULL,
	[tableRow] [int] NULL,
	[tablePage] [int] NULL,
	[ProjectName] [varchar](250) NULL,
	[TableLabel] [varchar](250) NULL,
	[TableNum] [varchar](5) NULL,
	[TableTitle] [varchar](250) NULL,
	[numHits] [int] NULL,
	[SampleName] [varchar](50) NULL,
	[Genus] [varchar](50) NULL,
	[fmtHits] [varchar](15) NULL,
	[percentHits] [varchar](6) NULL,
	[GenusDescription] [varchar](4000) NULL,
 CONSTRAINT [PK_GenClassificationResultsTable] PRIMARY KEY CLUSTERED 
(
	[GenClassificationResultsTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
