USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_SampleAggregate]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_SampleAggregate](
	[NGS_SampleAggregateID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [varchar](50) NOT NULL,
	[SampleID] [varchar](50) NULL,
	[SampleNumber] [int] NULL,
	[SampleName] [varchar](50) NULL,
	[ClientSampleNum] [int] NULL,
	[MI_Identitfier] [varchar](50) NULL,
	[MainFilePath] [varchar](250) NULL,
	[SubFilePath] [varchar](250) NULL,
	[CSVName] [varchar](250) NULL,
	[FileRoot] [varchar](50) NULL,
	[KingdomCnt] [int] NULL,
	[PhylumCnt] [int] NULL,
	[ClassCnt] [int] NULL,
	[OrderCnt] [int] NULL,
	[FamilyCnt] [int] NULL,
	[GenusCnt] [int] NULL,
	[SpeciesCnt] [int] NULL,
	[ttlReads] [int] NULL,
	[ClusterCnt] [int] NULL,
	[ClusterCntPF] [int] NULL,
	[ClassificationRate] [numeric](18, 5) NULL,
	[Shannon] [numeric](18, 5) NULL,
	[Simpson] [numeric](18, 5) NULL,
	[ChaolPredicted] [int] NULL,
	[TtlGenera] [int] NULL,
	[TtlEubacteria] [bigint] NULL,
	[ClientSampleID] [varchar](50) NULL,
 CONSTRAINT [PK_NGS_SampleAggregate] PRIMARY KEY CLUSTERED 
(
	[NGS_SampleAggregateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
