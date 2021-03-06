USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ReportSections]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportSections](
	[ReportSectionID] [int] IDENTITY(1,1) NOT NULL,
	[ReportDefinitionID] [int] NOT NULL,
	[SectionOrder] [int] NULL,
	[SectionTitle] [varchar](250) NULL,
	[SectionDesc] [varchar](max) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ReportSections] PRIMARY KEY CLUSTERED 
(
	[ReportSectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
