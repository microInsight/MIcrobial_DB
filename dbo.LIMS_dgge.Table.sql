USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_dgge]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_dgge](
	[ID] [int] NULL,
	[Closest Match] [nvarchar](255) NULL,
	[Affiliation] [nvarchar](255) NULL,
	[Donors] [nvarchar](255) NULL,
	[Acceptors] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
