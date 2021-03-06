USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[SubReportDefinitions]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubReportDefinitions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReportDefinitionsID] [int] NOT NULL,
	[ReportType] [varchar](50) NULL,
	[DefinitionDesc] [varchar](max) NULL,
	[ReportFunction] [varchar](2000) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
	[ReportSectionsID] [int] NULL,
	[SectionOrder] [int] NULL,
 CONSTRAINT [PK_SubReportDefinitions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubReportDefinitions] ADD  DEFAULT ('bboyle') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[SubReportDefinitions] ADD  DEFAULT (sysdatetime()) FOR [createDate]
GO
ALTER TABLE [dbo].[SubReportDefinitions] ADD  DEFAULT (sysdatetime()) FOR [modifiedDate]
GO
