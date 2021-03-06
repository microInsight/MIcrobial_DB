USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_SampleAggregateOld]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_SampleAggregateOld](
	[NGS_SampleAggregate] [int] IDENTITY(1,1) NOT NULL,
	[SampleID] [varchar](50) NULL,
	[SampleName] [varchar](50) NULL,
	[SampleNum] [int] NULL,
	[KingdomCnt] [int] NULL,
	[PhylumCnt] [int] NULL,
	[ClassCnt] [int] NULL,
	[OrderCnt] [int] NULL,
	[FamilyCnt] [int] NULL,
	[GenusCnt] [int] NULL,
	[SpeciesCnt] [int] NULL,
	[ClusterCnt] [int] NULL,
	[ClusterCntPF] [int] NULL,
	[ttlReads] [int] NULL,
	[ClassificationRate] [numeric](18, 5) NULL,
	[Shannon] [numeric](18, 5) NULL,
	[Simpson] [numeric](18, 5) NULL,
	[ChaolPredicted] [int] NULL,
	[TtlGenera] [int] NULL,
	[ttlEubacteria] [bigint] NULL,
	[MI_Identitfier] [varchar](50) NULL
) ON [PRIMARY]
GO
