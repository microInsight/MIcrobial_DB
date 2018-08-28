USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_Descriptions]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_Descriptions](
	[id] [int] NOT NULL,
	[genus] [nvarchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
