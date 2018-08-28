USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_Report]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_Report](
	[NGS_ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [varchar](50) NULL,
	[HTMLLine] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
