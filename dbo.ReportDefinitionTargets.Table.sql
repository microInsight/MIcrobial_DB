USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ReportDefinitionTargets]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDefinitionTargets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ValidTargetID] [int] NOT NULL,
	[ReportDefinitionsID] [int] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ReportDefinitionTargets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
