USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_Client]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_Client](
	[ClientID] [int] NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[ClientNotes] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[primaryinvname] [bigint] NULL,
	[secondaryinvname] [bigint] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_LIMS_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
