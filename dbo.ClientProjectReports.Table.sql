USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ClientProjectReports]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProjectReports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClientProjectsID] [int] NULL,
	[ReportParametersID] [int] NULL,
	[ReportDefinitionsID] [int] NULL,
	[datafile] [varchar](250) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ClientProjectReports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientProjectReports] ADD  DEFAULT ((0)) FOR [ClientProjectsID]
GO
ALTER TABLE [dbo].[ClientProjectReports] ADD  DEFAULT ((0)) FOR [ReportParametersID]
GO
ALTER TABLE [dbo].[ClientProjectReports] ADD  DEFAULT ((0)) FOR [ReportDefinitionsID]
GO
