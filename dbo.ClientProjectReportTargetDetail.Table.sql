USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ClientProjectReportTargetDetail]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProjectReportTargetDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ValidTargetID] [int] NOT NULL,
	[ClientProjectReportsID] [int] NOT NULL,
	[LineAssignment] [int] NOT NULL,
	[PointColor] [varchar](25) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ClientProjectReportTargetDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientProjectReportTargetDetail] ADD  DEFAULT ((1)) FOR [LineAssignment]
GO
