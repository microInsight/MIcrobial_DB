USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_Branches]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_Branches](
	[BranchID] [int] NOT NULL,
	[ClientID] [int] NULL,
	[Abbr] [nvarchar](5) NULL,
	[Branch_Name] [nvarchar](50) NULL,
	[Branch_Display] [nvarchar](50) NULL,
	[Branch_Type] [nvarchar](1) NULL,
	[Address_1] [nvarchar](255) NULL,
	[Address_2] [nvarchar](50) NULL,
	[Address_3] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateOrProvince] [nvarchar](20) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Notes] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[EDD] [int] NULL,
	[DateAdded] [nvarchar](max) NULL,
 CONSTRAINT [PK_LIMS_Branches] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LIMS_Branches]  WITH CHECK ADD  CONSTRAINT [fk_Branches_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[LIMS_Client] ([ClientID])
GO
ALTER TABLE [dbo].[LIMS_Branches] CHECK CONSTRAINT [fk_Branches_Client]
GO
