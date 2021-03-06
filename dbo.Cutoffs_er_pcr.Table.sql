USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[Cutoffs_er_pcr]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cutoffs_er_pcr](
	[Media] [nvarchar](5) NULL,
	[Target] [nvarchar](7) NULL,
	[MinDataCutoff] [int] NULL,
	[MaxDataCutoff] [int] NULL,
	[Minimum Reported Percentile Value] [decimal](9, 2) NULL,
	[Maximum Reported Percentile Value] [bigint] NULL,
	[Minimum Reporting Percentage] [int] NULL,
	[Maximum Reporting Percentage] [int] NULL
) ON [PRIMARY]
GO
