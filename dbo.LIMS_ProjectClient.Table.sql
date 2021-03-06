USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_ProjectClient]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_ProjectClient](
	[ProjectClientID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [nvarchar](8) NOT NULL,
	[BranchID] [int] NULL,
	[sort] [tinyint] NULL,
	[Branch_Address1] [nvarchar](255) NULL,
	[Branch_Address2] [nvarchar](50) NULL,
	[Branch_Address3] [nvarchar](50) NULL,
	[Branch_City] [nvarchar](50) NULL,
	[Branch_StateOrProvince] [nvarchar](20) NULL,
	[Branch_PostalCode] [nvarchar](20) NULL,
	[Branch_CountryRegion] [nvarchar](50) NULL,
	[Branch_Phone] [nvarchar](50) NULL,
	[Branch_Fax] [nvarchar](50) NULL,
	[Branch_Notes] [nvarchar](max) NULL,
	[Contact_Name] [nvarchar](50) NULL,
	[Contact_Title] [nvarchar](50) NULL,
	[Contact_Dept] [nvarchar](50) NULL,
	[Contact_Phone] [nvarchar](30) NULL,
	[Contact_PhoneExt] [nvarchar](30) NULL,
	[Contact_Fax] [nvarchar](30) NULL,
	[Contact_Email] [nvarchar](50) NULL,
	[Contact_Method] [nvarchar](10) NULL,
	[Contact_Notes] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[LastChangeBy] [nvarchar](20) NULL,
	[LastChangeDate] [datetime] NULL,
	[LastChangeType] [nvarchar](10) NULL,
	[ClientIndex] [bigint] NULL,
 CONSTRAINT [PK_ProjectClient] PRIMARY KEY CLUSTERED 
(
	[ProjectClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
