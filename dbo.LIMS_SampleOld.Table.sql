USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_SampleOld]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_SampleOld](
	[samp_id] [int] NULL,
	[ProjectID] [nvarchar](8) NULL,
	[LabSampleID] [int] NULL,
	[SampleType] [nvarchar](3) NULL,
	[DateReceived] [nvarchar](max) NULL,
	[DateSampled] [nvarchar](max) NULL,
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
	[LastChangeDate] [nvarchar](max) NULL,
	[LastChangeType] [nvarchar](10) NULL,
	[cocid] [nvarchar](50) NULL,
	[coc_signedby] [nvarchar](50) NULL,
	[coc_signeddate] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_Lims_Sample_ID]    Script Date: 8/28/2018 10:33:53 AM ******/
CREATE NONCLUSTERED INDEX [idx_Lims_Sample_ID] ON [dbo].[LIMS_SampleOld]
(
	[ClientSampleID] ASC,
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
