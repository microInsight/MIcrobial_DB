USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[EDD_QAData]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDD_QAData](
	[EDD_QADataID] [int] IDENTITY(1,1) NOT NULL,
	[EDD_FileName] [varchar](250) NULL,
	[EDD_Sheet] [varchar](50) NULL,
	[Component] [varchar](750) NULL,
	[DateRecieved] [datetime] NULL,
	[DateAnalyzed] [datetime] NULL,
	[ArrivalTemp] [int] NULL,
	[PositiveControl] [int] NULL,
	[ExtractionBlank] [int] NULL,
	[NegativeControl] [int] NULL,
 CONSTRAINT [PK_EDD_QAData] PRIMARY KEY CLUSTERED 
(
	[EDD_QADataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
