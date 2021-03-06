USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_ClientContact]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_ClientContact](
	[ContactID] [int] NOT NULL,
	[BranchID] [int] NULL,
	[Contact_Type] [nvarchar](1) NULL,
	[Contact_Name] [nvarchar](50) NULL,
	[Contact_Title] [nvarchar](50) NULL,
	[Contact_Phone] [nvarchar](30) NULL,
	[Contact_PhoneExt] [nvarchar](30) NULL,
	[Contact_Fax] [nvarchar](30) NULL,
	[Contact_Email] [nvarchar](50) NULL,
	[Contact_Dept] [nvarchar](50) NULL,
	[Contact_Method] [nvarchar](10) NULL,
	[Contact_Notes] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[Contact_FirstName] [nvarchar](45) NULL,
	[Contact_LastName] [nvarchar](45) NULL,
	[Contact_MiddleName] [nvarchar](45) NULL,
 CONSTRAINT [PK_LIMS_ClientContract] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
