USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ProjectReportParameters]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectReportParameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClientProjectReportsID] [int] NOT NULL,
	[SpecialLabel] [varchar](2000) NULL,
	[MinimumRange] [numeric](19, 5) NULL,
	[MaximumRange] [numeric](19, 5) NULL,
	[GraphsPerPage] [int] NULL,
	[DataFilter] [varchar](500) NULL,
	[SpecialNote] [varchar](500) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ProjectReportParameters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
