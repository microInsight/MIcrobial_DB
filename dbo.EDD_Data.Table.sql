USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[EDD_Data]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDD_Data](
	[EDD_DataID] [int] IDENTITY(1,1) NOT NULL,
	[EDD_FileName] [varchar](250) NULL,
	[EDD_Sheet] [varchar](50) NULL,
	[Lab Name] [varchar](510) NULL,
	[Sample Name] [varchar](510) NULL,
	[Sample Date] [datetime] NULL,
	[Date Received] [datetime] NULL,
	[Sample Matrix] [varchar](510) NULL,
	[LIMS Identifier] [varchar](510) NULL,
	[Extraction Date] [datetime] NULL,
	[Analysis Date] [datetime] NULL,
	[Analysis Method] [varchar](510) NULL,
	[Parameter] [varchar](510) NULL,
	[Result] [float] NULL,
	[Result Qualifier] [varchar](510) NULL,
	[Units] [varchar](510) NULL,
	[Detection Limit] [float] NULL,
	[Report Limit] [float] NULL,
 CONSTRAINT [PK_EDD_Data] PRIMARY KEY CLUSTERED 
(
	[EDD_DataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
