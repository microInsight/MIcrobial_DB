USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_Sample]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_Sample](
	[samp_id] [int] NULL,
	[ProjectID] [nvarchar](8) NULL,
	[LabSampleID] [int] NULL,
	[SampleType] [nvarchar](3) NULL,
	[DateReceived] [datetime] NULL,
	[DateSampled] [datetime] NULL,
	[TimeSampled] [int] NULL,
	[ClientSampleID] [nvarchar](100) NULL,
	[ClientLocation] [nvarchar](50) NULL,
	[Media] [nvarchar](16) NULL,
	[Condition] [nvarchar](50) NULL,
	[ContainerNum] [int] NULL,
	[ContainerType] [nvarchar](30) NULL,
	[Initial_Amount] [int] NULL,
	[Initial_Amount_Units] [nvarchar](10) NULL,
	[Temperature] [nvarchar](10) NULL,
	[sort] [smallint] NULL,
	[comment] [nvarchar](255) NULL,
	[BottleOrderID] [int] NULL,
	[ImpactHoles] [int] NULL,
	[Lmin] [float] NULL,
	[LminTime] [int] NULL,
	[LastChangeBy] [nvarchar](20) NULL,
	[LastChangeDate] [datetime] NULL,
	[LastChangeType] [nvarchar](10) NULL,
	[cocid] [nvarchar](50) NULL,
	[coc_signedby] [nvarchar](50) NULL,
	[coc_signeddate] [datetime] NULL
) ON [PRIMARY]
GO
