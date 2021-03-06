USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_ClientVals]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_ClientVals](
	[id] [int] NOT NULL,
	[concatvals] [nvarchar](45) NULL,
 CONSTRAINT [PK_LIMS_ClientVals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
