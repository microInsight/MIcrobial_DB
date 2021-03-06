USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_SampleGroups]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_SampleGroups](
	[gID] [bigint] NULL,
	[ListName] [nvarchar](45) NULL,
	[SampleGroup] [nvarchar](10) NULL,
	[itemorder] [bigint] NULL,
	[Matrix] [nvarchar](45) NULL,
	[TestCode] [nvarchar](45) NULL,
	[Component] [nvarchar](45) NULL,
	[primaryprice] [nvarchar](4) NULL,
	[HideCost] [nvarchar](4) NULL,
	[active] [nvarchar](4) NULL,
	[Quantity] [bigint] NULL
) ON [PRIMARY]
GO
