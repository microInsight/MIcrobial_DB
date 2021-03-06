USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[NGS_Characteristics]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS_Characteristics](
	[Kingdom] [nvarchar](8) NULL,
	[Phylum] [nvarchar](21) NULL,
	[Class] [nvarchar](21) NULL,
	[Order] [nvarchar](24) NULL,
	[Family] [nvarchar](40) NULL,
	[Genus] [nvarchar](33) NULL,
	[genera] [nvarchar](33) NULL,
	[pH_max] [nvarchar](3) NULL,
	[pH_optimum] [nvarchar](3) NULL,
	[pH_min] [nvarchar](2) NULL,
	[temp_max] [nvarchar](3) NULL,
	[temp_min] [nvarchar](3) NULL,
	[temp_optimum] [nvarchar](3) NULL,
	[Low_NaCL] [nvarchar](3) NULL,
	[High_NaCL] [nvarchar](3) NULL,
	[obligate_anaerobe] [nvarchar](1) NULL,
	[facultatively_anaerobic] [nvarchar](1) NULL,
	[microanaerobic] [nvarchar](1) NULL,
	[moderately_anaerobic] [nvarchar](1) NULL,
	[moderately_aerobic] [nvarchar](1) NULL,
	[microaerobic] [nvarchar](1) NULL,
	[facultatively_aerobic] [nvarchar](1) NULL,
	[obligate_aerobic] [nvarchar](1) NULL,
	[Fermentation] [nvarchar](1) NULL,
	[Oxygen] [nvarchar](1) NULL,
	[Nitrate_denitrification] [nvarchar](1) NULL,
	[Manganese] [nvarchar](1) NULL,
	[Iron] [nvarchar](1) NULL,
	[Sulfate] [nvarchar](1) NULL,
	[Sulfite] [nvarchar](1) NULL,
	[Sulfur_elemental] [nvarchar](1) NULL,
	[Thiosulfate] [nvarchar](1) NULL,
	[Methanogen] [nvarchar](1) NULL,
	[Phototroph] [nvarchar](1) NULL,
	[Lithotroph] [nvarchar](1) NULL,
	[Heterotroph] [nvarchar](1) NULL,
	[Hydrogen] [nvarchar](1) NULL,
	[Acetogen] [nvarchar](1) NULL,
	[Ammonia_nitrification] [nvarchar](1) NULL,
	[Manganese_source] [nvarchar](1) NULL,
	[Iron_source] [nvarchar](1) NULL,
	[Sulfur_oxidizing_bacteria] [nvarchar](1) NULL,
	[Methanotroph] [nvarchar](1) NULL,
	[Notes] [nvarchar](61) NULL
) ON [PRIMARY]
GO
