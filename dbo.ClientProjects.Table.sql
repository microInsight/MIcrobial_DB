USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[ClientProjects]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[Report] [varchar](250) NULL,
	[OutputToScreen] [char](1) NULL,
	[Genwiz] [char](1) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ClientProjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
