USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[er_pcr_midb]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[er_pcr_midb](
	[ResultsID] [int] NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[Branch_Name] [varchar](50) NULL,
	[StateOrProvince] [varchar](20) NULL,
	[CountryRegion] [varchar](50) NULL,
	[Contact_Name] [varchar](50) NULL,
	[ProjectID] [varchar](8) NULL,
	[ClientProjectName] [varchar](100) NULL,
	[DateReceived] [date] NULL,
	[LabSampleID] [int] NULL,
	[ClientSampleID] [varchar](100) NULL,
	[TestCode] [varchar](50) NULL,
	[Component] [varchar](50) NULL,
	[Media] [varchar](16) NULL,
	[ContainerType] [varchar](30) NULL,
	[Volume] [real] NULL,
	[final_result] [float] NULL,
	[units] [varchar](50) NULL,
	[ordered] [int] NULL,
	[DateLastChange] [datetime] NULL,
	[detection_limit] [real] NULL,
	[reporting_limit] [real] NULL,
	[result_qualifier] [varchar](8) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[er_pcr_midb] ADD  DEFAULT ((0)) FOR [ordered]
GO
