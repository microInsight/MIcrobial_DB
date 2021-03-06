USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[lims_project]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lims_project](
	[ProjectIndex] [int] NULL,
	[ProjectID] [varchar](8) NOT NULL,
	[QuoteID] [varchar](15) NULL,
	[DateOpened] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[DateReceived] [datetime] NULL,
	[InitiatedBy] [varchar](50) NULL,
	[PrimaryClient] [int] NULL,
	[ClientProjectName] [varchar](60) NULL,
	[ClientReference] [varchar](60) NULL,
	[ClientPONumber] [varchar](60) NULL,
	[SubcontractNumber] [varchar](40) NULL,
	[IncludeProjName] [int] NOT NULL,
	[ProjectType] [varchar](8) NULL,
	[DateApproved] [datetime] NULL,
	[ApprovedBy] [varchar](50) NULL,
	[ProjectNotes] [varchar](max) NULL,
	[PM] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
	[LastChangeBy] [varchar](20) NULL,
	[LastChangeDate] [datetime] NULL,
	[LastChangeType] [varchar](10) NULL,
	[EDD] [int] NULL,
	[SiteLocation] [varchar](50) NULL,
	[InvoiceID] [varchar](45) NULL,
	[Corrosion] [int] NOT NULL,
	[ProjType] [varchar](6) NULL,
	[internalnotes] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [QuoteID]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [DateOpened]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [DateClosed]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [DateReceived]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [InitiatedBy]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [PrimaryClient]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ClientProjectName]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ClientReference]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ClientPONumber]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [SubcontractNumber]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ProjectType]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [DateApproved]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ApprovedBy]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [PM]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [Status]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [LastChangeBy]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [LastChangeDate]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [LastChangeType]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [EDD]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [SiteLocation]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [InvoiceID]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT ((0)) FOR [Corrosion]
GO
ALTER TABLE [dbo].[lims_project] ADD  DEFAULT (NULL) FOR [ProjType]
GO
