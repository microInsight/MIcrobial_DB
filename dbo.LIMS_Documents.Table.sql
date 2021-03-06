USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_Documents]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_Documents](
	[DocIndex] [int] NOT NULL,
	[DocumentName] [nvarchar](150) NULL,
	[DocumentLocation] [nvarchar](250) NULL,
	[DocumentDescription] [nvarchar](45) NULL,
	[DocumentActive] [nvarchar](5) NULL,
 CONSTRAINT [PK_LIMS_Documents] PRIMARY KEY CLUSTERED 
(
	[DocIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
