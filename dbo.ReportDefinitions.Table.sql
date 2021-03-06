USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ReportDefinitions]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDefinitions](
	[ReportDefinitionID] [int] IDENTITY(1,1) NOT NULL,
	[ReportType] [varchar](50) NULL,
	[DefinitionDesc] [varchar](max) NULL,
	[ReportFunction] [varchar](2000) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
	[ReportTitle] [nchar](250) NULL,
 CONSTRAINT [PK_ReportDefinitions] PRIMARY KEY CLUSTERED 
(
	[ReportDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
