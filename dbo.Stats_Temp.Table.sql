USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[Stats_Temp]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stats_Temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DataRow] [varchar](4000) NULL
) ON [PRIMARY]
GO
