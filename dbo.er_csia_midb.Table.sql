USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[er_csia_midb]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[er_csia_midb](
	[ResultsID] [int] NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Branch_Name] [nvarchar](50) NULL,
	[StateOrProvince] [nvarchar](20) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[Contact_Name] [nvarchar](50) NULL,
	[ProjectID] [nvarchar](8) NULL,
	[ClientProjectName] [nvarchar](100) NULL,
	[DateReceived] [nvarchar](max) NULL,
	[LabSampleID] [int] NULL,
	[ClientSampleID] [nvarchar](100) NULL,
	[TestCode] [nvarchar](50) NULL,
	[Component] [nvarchar](50) NULL,
	[Media] [nvarchar](16) NULL,
	[ContainerType] [nvarchar](30) NULL,
	[Volume] [real] NULL,
	[final_result] [float] NULL,
	[units] [nvarchar](50) NULL,
	[ordered] [int] NULL,
	[DateLastChange] [nvarchar](max) NULL,
	[detection_limit] [real] NULL,
	[reporting_limit] [real] NULL,
	[result_qualifier] [nvarchar](8) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
