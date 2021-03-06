USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[LIMS_DataType]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIMS_DataType](
	[dID] [int] NOT NULL,
	[datatype] [nvarchar](45) NULL,
	[datatable] [nvarchar](45) NULL,
	[columnheadings] [nvarchar](max) NULL,
	[columnattributes] [nvarchar](max) NULL,
	[columns] [nvarchar](max) NULL,
	[description] [nvarchar](100) NULL,
	[filename] [nvarchar](60) NULL,
	[filetype] [nvarchar](45) NULL,
	[fileextension] [nvarchar](5) NULL,
	[includecolumnheader] [nvarchar](3) NULL,
	[customtype] [nvarchar](5) NULL,
	[active] [nvarchar](3) NULL,
	[file] [nvarchar](100) NULL,
	[searchcriteria] [nvarchar](max) NULL,
	[searchoptions] [nvarchar](max) NULL,
 CONSTRAINT [PK_LIMS_DataType] PRIMARY KEY CLUSTERED 
(
	[dID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
