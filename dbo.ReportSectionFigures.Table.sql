USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ReportSectionFigures]    Script Date: 8/28/2018 10:33:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportSectionFigures](
	[ReportSectionFigureID] [int] IDENTITY(1,1) NOT NULL,
	[ReportSectionID] [int] NOT NULL,
	[SectionFigureOrder] [int] NULL,
	[FigureType] [int] NULL,
	[FigureTypeText] [varchar](250) NULL,
	[FigureDesc] [varchar](max) NULL,
	[FigureSuffix] [varchar](max) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ReportSectionFigures] PRIMARY KEY CLUSTERED 
(
	[ReportSectionFigureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
