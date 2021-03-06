USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[midb]    Script Date: 8/28/2018 10:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[midb](
	[Merged_ID] [int] NOT NULL,
	[MI_Project_ID] [nvarchar](6) NULL,
	[MI_Sample_Number] [int] NULL,
	[Client_Sample_ID] [nvarchar](80) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](37) NULL,
	[Country] [nvarchar](14) NULL,
	[State] [nvarchar](14) NULL,
	[ClientProjectName] [nvarchar](60) NULL,
	[DateReceived] [nvarchar](10) NULL,
	[TestCode] [nvarchar](6) NULL,
	[Media] [nvarchar](15) NULL,
	[ContainerType] [nvarchar](15) NULL,
	[Volume] [nvarchar](8) NULL,
	[PCE_ug_L] [nvarchar](6) NULL,
	[TCE_ug_L] [nvarchar](6) NULL,
	[cis_DCE_ug_L] [nvarchar](6) NULL,
	[trans_DCE_ug_L] [nvarchar](6) NULL,
	[Vinyl_Chloride_ug_L] [nvarchar](6) NULL,
	[1_1_DCE_ug_L] [nvarchar](5) NULL,
	[1_1_2_2-TCA_ug_L] [nvarchar](6) NULL,
	[1_1_2_TCA_ug_L] [nvarchar](7) NULL,
	[1_2_DCA_ug_L] [nvarchar](7) NULL,
	[1_1,1_TCA_ug_L] [nvarchar](5) NULL,
	[1_1_DCA_ug_L] [nvarchar](5) NULL,
	[Carbon_Tetrachloride_ug_L] [nvarchar](4) NULL,
	[Chloroform_ug_L] [nvarchar](5) NULL,
	[Methylene_Chloride_ug_L] [nvarchar](5) NULL,
	[Chlorobenzene_ug_L] [nvarchar](5) NULL,
	[Benzene_ug_L] [nvarchar](6) NULL,
	[Toluene_ug_L] [nvarchar](6) NULL,
	[Ethyl_Benzene_ug_L] [nvarchar](6) NULL,
	[Xylene_ug_L] [nvarchar](6) NULL,
	[Naphthalene_ug_L] [nvarchar](6) NULL,
	[PAHs_ug_L] [nvarchar](7) NULL,
	[Methane_ug_L] [nvarchar](7) NULL,
	[Ethane_ug_L] [nvarchar](7) NULL,
	[Ethene_ug_L] [nvarchar](5) NULL,
	[Dioxane_mg_l] [nvarchar](2) NULL,
	[MTBE_mg_l] [nvarchar](2) NULL,
	[TBA_mg_l] [nvarchar](2) NULL,
	[TOC_mg_l] [nvarchar](5) NULL,
	[Total_VFA_mg_l] [nvarchar](5) NULL,
	[Pyruvic_Acid_mg_l] [nvarchar](4) NULL,
	[Lactic_Acid_mg_l] [nvarchar](5) NULL,
	[Formic_Acid_mg_l] [nvarchar](3) NULL,
	[Acetic_Acid_mg_l] [nvarchar](4) NULL,
	[Propionic_Acid_mg_l] [nvarchar](4) NULL,
	[Butyric_Acid_mg_l] [nvarchar](4) NULL,
	[hydrogen] [nvarchar](3) NULL,
	[pH] [nvarchar](3) NULL,
	[ORP] [nvarchar](5) NULL,
	[Dissolved_Oxygen_mg_l] [nvarchar](3) NULL,
	[Nitrate_mg_l] [nvarchar](5) NULL,
	[Mn2+_mg_l] [nvarchar](5) NULL,
	[Total_Iron_mg_l] [nvarchar](6) NULL,
	[Fe2+mg_l] [nvarchar](6) NULL,
	[Sulfate_mg_l] [nvarchar](6) NULL,
	[Chloride_mg_l] [nvarchar](6) NULL,
	[alkalinity] [nvarchar](6) NULL,
	[Bicarbonate_mg_l] [nvarchar](5) NULL,
	[CO2] [nvarchar](6) NULL,
	[Mg_2+_mg_l] [nvarchar](6) NULL,
	[Ca_2+_mg_l] [nvarchar](6) NULL,
	[Na_2+_mg_l] [nvarchar](6) NULL,
	[units] [nvarchar](2) NULL,
	[ng_ul] [nvarchar](3) NULL,
	[1_2_DCP] [nvarchar](6) NULL,
	[1_2_DCP-1] [nvarchar](2) NULL,
	[1_2_DCP-2] [nvarchar](2) NULL,
	[1_2_DCP-3] [nvarchar](2) NULL,
	[AAB-1] [nvarchar](7) NULL,
	[AAB-2] [nvarchar](6) NULL,
	[abcA] [nvarchar](7) NULL,
	[AC] [nvarchar](2) NULL,
	[ACBLN] [nvarchar](3) NULL,
	[ACCBN] [nvarchar](4) NULL,
	[Acr_strict] [nvarchar](2) NULL,
	[AGLN] [nvarchar](2) NULL,
	[AGN] [nvarchar](8) NULL,
	[AGN-1] [nvarchar](7) NULL,
	[AGN-2] [nvarchar](6) NULL,
	[AGN-3] [nvarchar](6) NULL,
	[AGN-4] [nvarchar](2) NULL,
	[AGN-5] [nvarchar](2) NULL,
	[AGN-6] [nvarchar](5) NULL,
	[AGN-7] [nvarchar](8) NULL,
	[AGN-8] [nvarchar](7) NULL,
	[ALDH] [nvarchar](5) NULL,
	[ALKB] [nvarchar](8) NULL,
	[ALKB-1] [nvarchar](6) NULL,
	[ALKB-2] [nvarchar](7) NULL,
	[ALKB-3] [nvarchar](8) NULL,
	[ALKB-4] [nvarchar](8) NULL,
	[ALKB-5] [nvarchar](8) NULL,
	[ALKB-6] [nvarchar](8) NULL,
	[ALKB-7] [nvarchar](8) NULL,
	[ALKB-8] [nvarchar](8) NULL,
	[alkBA1] [nvarchar](3) NULL,
	[alkBA2] [nvarchar](2) NULL,
	[alkBG1] [nvarchar](6) NULL,
	[alkBG2] [nvarchar](7) NULL,
	[alkBP1] [nvarchar](6) NULL,
	[alkBP2] [nvarchar](5) NULL,
	[alkBR1] [nvarchar](6) NULL,
	[Alkbr2] [nvarchar](6) NULL,
	[alkM] [nvarchar](4) NULL,
	[ALMA] [nvarchar](6) NULL,
	[ALMA-1] [nvarchar](5) NULL,
	[ALMA-4] [nvarchar](2) NULL,
	[AMO] [nvarchar](3) NULL,
	[AMO-1] [nvarchar](4) NULL,
	[AMO-2] [nvarchar](7) NULL,
	[AMO-3] [nvarchar](6) NULL,
	[AMO-4] [nvarchar](5) NULL,
	[AMO-5] [nvarchar](7) NULL,
	[AMO-6] [nvarchar](2) NULL,
	[AMO-7] [nvarchar](5) NULL,
	[AMXNIRK] [nvarchar](7) NULL,
	[AMXNIRS-1] [nvarchar](7) NULL,
	[AMXNIRS-2] [nvarchar](5) NULL,
	[AMXNIRS-3] [nvarchar](8) NULL,
	[AMXNIRS-4] [nvarchar](4) NULL,
	[ANA] [nvarchar](8) NULL,
	[Anammox] [nvarchar](8) NULL,
	[ANC] [nvarchar](6) NULL,
	[ANIRK] [nvarchar](8) NULL,
	[ANIRS] [nvarchar](7) NULL,
	[ANPN] [nvarchar](3) NULL,
	[AOA] [nvarchar](8) NULL,
	[AOB] [nvarchar](8) NULL,
	[APCLN] [nvarchar](4) NULL,
	[ApFN] [nvarchar](4) NULL,
	[APHN] [nvarchar](3) NULL,
	[APS] [nvarchar](8) NULL,
	[APS-1] [nvarchar](8) NULL,
	[APS-2] [nvarchar](8) NULL,
	[APS-3] [nvarchar](8) NULL,
	[APS-4] [nvarchar](8) NULL,
	[APS-5] [nvarchar](8) NULL,
	[APS-6] [nvarchar](8) NULL,
	[APS-7] [nvarchar](7) NULL,
	[ARC] [nvarchar](8) NULL,
	[ARG] [nvarchar](6) NULL,
	[ARHA] [nvarchar](3) NULL,
	[Asp_fumi] [nvarchar](2) NULL,
	[Asp_versi] [nvarchar](2) NULL,
	[Asp_Pen] [nvarchar](6) NULL,
	[assA] [nvarchar](8) NULL,
	[assA-1] [nvarchar](8) NULL,
	[assA-2] [nvarchar](8) NULL,
	[assA-3] [nvarchar](8) NULL,
	[assA-4] [nvarchar](8) NULL,
	[assA-5] [nvarchar](8) NULL,
	[assA-6] [nvarchar](7) NULL,
	[BacH-1] [nvarchar](3) NULL,
	[BacH-2] [nvarchar](3) NULL,
	[BacH-3] [nvarchar](3) NULL,
	[BacR] [nvarchar](7) NULL,
	[BASN-1] [nvarchar](3) NULL,
	[BASN-2] [nvarchar](3) NULL,
	[BCE] [nvarchar](4) NULL,
	[BCR] [nvarchar](7) NULL,
	[BCR-1] [nvarchar](8) NULL,
	[BCR-2] [nvarchar](8) NULL,
	[BCR-3] [nvarchar](8) NULL,
	[BIF] [nvarchar](3) NULL,
	[BLMN] [nvarchar](2) NULL,
	[BOD] [nvarchar](2) NULL,
	[BPH1] [nvarchar](7) NULL,
	[BPH2] [nvarchar](2) NULL,
	[BPH3] [nvarchar](7) NULL,
	[BPH4] [nvarchar](8) NULL,
	[BSFN-1] [nvarchar](3) NULL,
	[BSFN-3] [nvarchar](3) NULL,
	[bssA] [nvarchar](8) NULL,
	[bssA-1] [nvarchar](7) NULL,
	[bssA-2] [nvarchar](6) NULL,
	[bssA-3] [nvarchar](5) NULL,
	[bssA-4] [nvarchar](7) NULL,
	[bssA-5] [nvarchar](8) NULL,
	[bssA-6] [nvarchar](5) NULL,
	[bssA-7] [nvarchar](6) NULL,
	[BTM] [nvarchar](2) NULL,
	[BVC] [nvarchar](8) NULL,
	[bvcA] [nvarchar](3) NULL,
	[C-EPA1] [nvarchar](7) NULL,
	[C-EPA2] [nvarchar](7) NULL,
	[CAMP] [nvarchar](2) NULL,
	[CARp] [nvarchar](3) NULL,
	[CARs] [nvarchar](5) NULL,
	[Cat] [nvarchar](8) NULL,
	[CAT_1_2] [nvarchar](8) NULL,
	[CAT_2_3] [nvarchar](8) NULL,
	[CBACT] [nvarchar](6) NULL,
	[CBACT-EPA] [nvarchar](2) NULL,
	[CBACT-EPA2] [nvarchar](2) NULL,
	[CBACT-EPA3] [nvarchar](2) NULL,
	[CBZ] [nvarchar](4) NULL,
	[CFR] [nvarchar](6) NULL,
	[CFR-1] [nvarchar](8) NULL,
	[CFR-2] [nvarchar](5) NULL,
	[CG_Bact1] [nvarchar](5) NULL,
	[CG_Bact2] [nvarchar](3) NULL,
	[CG_COI] [nvarchar](3) NULL,
	[CGBACT-1] [nvarchar](2) NULL,
	[CGBACT-2] [nvarchar](2) NULL,
	[CHRSN] [nvarchar](4) NULL,
	[Ck_COI] [nvarchar](3) NULL,
	[CLAD] [nvarchar](2) NULL,
	[Clad_clad] [nvarchar](2) NULL,
	[CLAD-1] [nvarchar](5) NULL,
	[CLAD-2] [nvarchar](3) NULL,
	[CLD] [nvarchar](2) NULL,
	[CLKN] [nvarchar](5) NULL,
	[CMSN] [nvarchar](2) NULL,
	[COD] [nvarchar](2) NULL,
	[CPHDN] [nvarchar](3) NULL,
	[CRE] [nvarchar](7) NULL,
	[DA] [nvarchar](2) NULL,
	[DBACT] [nvarchar](7) NULL,
	[DBFA] [nvarchar](3) NULL,
	[DCA] [nvarchar](7) NULL,
	[DCAR] [nvarchar](5) NULL,
	[DCAR-1] [nvarchar](5) NULL,
	[DCAR-2] [nvarchar](5) NULL,
	[DCAR-3] [nvarchar](5) NULL,
	[DCM] [nvarchar](7) NULL,
	[DCMA] [nvarchar](2) NULL,
	[DCMA-1] [nvarchar](4) NULL,
	[DCMA-2] [nvarchar](4) NULL,
	[DCMA-3] [nvarchar](2) NULL,
	[DCS] [nvarchar](7) NULL,
	[DECO] [nvarchar](8) NULL,
	[DHB] [nvarchar](8) NULL,
	[DHBMF] [nvarchar](3) NULL,
	[DHBt] [nvarchar](8) NULL,
	[DHC] [nvarchar](8) NULL,
	[DHG] [nvarchar](8) NULL,
	[DHG-1] [nvarchar](5) NULL,
	[DHG-2] [nvarchar](4) NULL,
	[DLMN] [nvarchar](3) NULL,
	[DNT-1] [nvarchar](6) NULL,
	[Dog_COI] [nvarchar](2) NULL,
	[DR] [nvarchar](2) NULL,
	[DSB] [nvarchar](8) NULL,
	[DSB-1] [nvarchar](8) NULL,
	[DSB-2] [nvarchar](7) NULL,
	[DSM] [nvarchar](8) NULL,
	[DSM-1] [nvarchar](8) NULL,
	[DSM-2] [nvarchar](8) NULL,
	[DSM-3] [nvarchar](8) NULL,
	[DSR] [nvarchar](8) NULL,
	[DSV] [nvarchar](6) NULL,
	[DtDSP] [nvarchar](2) NULL,
	[DXMO] [nvarchar](6) NULL,
	[EBAC] [nvarchar](14) NULL,
	[ECMCN] [nvarchar](7) NULL,
	[ECPAN] [nvarchar](3) NULL,
	[ECPHN] [nvarchar](3) NULL,
	[EDO] [nvarchar](7) NULL,
	[EDO-2] [nvarchar](7) NULL,
	[ETHB] [nvarchar](2) NULL,
	[etnC] [nvarchar](6) NULL,
	[EtnC-1] [nvarchar](6) NULL,
	[EtnC-2] [nvarchar](6) NULL,
	[EtnC-3] [nvarchar](6) NULL,
	[EtnC-4] [nvarchar](5) NULL,
	[etne] [nvarchar](7) NULL,
	[etnE-1] [nvarchar](6) NULL,
	[etnE-2] [nvarchar](6) NULL,
	[EtnE-3] [nvarchar](7) NULL,
	[EtnE1] [nvarchar](7) NULL,
	[EtnE2] [nvarchar](2) NULL,
	[EtnEb] [nvarchar](4) NULL,
	[FEOB] [nvarchar](8) NULL,
	[FEOB-1] [nvarchar](8) NULL,
	[FEOB-2] [nvarchar](7) NULL,
	[FEOB-3] [nvarchar](8) NULL,
	[FEOB-4] [nvarchar](8) NULL,
	[FEOB-5] [nvarchar](8) NULL,
	[FEOB-6] [nvarchar](7) NULL,
	[FEOB-7] [nvarchar](6) NULL,
	[FEOB-8] [nvarchar](8) NULL,
	[FER] [nvarchar](8) NULL,
	[FER-1] [nvarchar](8) NULL,
	[FER-2] [nvarchar](8) NULL,
	[FER-3] [nvarchar](8) NULL,
	[FER-4] [nvarchar](8) NULL,
	[FER-5] [nvarchar](8) NULL,
	[FER-6] [nvarchar](8) NULL,
	[FER-7] [nvarchar](8) NULL,
	[FER-8] [nvarchar](8) NULL,
	[FER1] [nvarchar](8) NULL,
	[FER2] [nvarchar](8) NULL,
	[FER3] [nvarchar](8) NULL,
	[FER4] [nvarchar](8) NULL,
	[FER5] [nvarchar](6) NULL,
	[FER6] [nvarchar](8) NULL,
	[FER7] [nvarchar](8) NULL,
	[FER8] [nvarchar](8) NULL,
	[FLCN-1] [nvarchar](3) NULL,
	[FLCN-2] [nvarchar](3) NULL,
	[GenBac] [nvarchar](8) NULL,
	[GEO] [nvarchar](8) NULL,
	[GEO-1] [nvarchar](7) NULL,
	[GEO-2] [nvarchar](7) NULL,
	[GEO-3] [nvarchar](6) NULL,
	[GEO-4] [nvarchar](7) NULL,
	[GLK] [nvarchar](2) NULL,
	[GLPN] [nvarchar](3) NULL,
	[GMET] [nvarchar](2) NULL,
	[GMET-1] [nvarchar](3) NULL,
	[GMET-2] [nvarchar](3) NULL,
	[GMET1] [nvarchar](2) NULL,
	[GMET2] [nvarchar](2) NULL,
	[Gull_COI] [nvarchar](3) NULL,
	[GULL-CAT] [nvarchar](7) NULL,
	[H-EPA1] [nvarchar](8) NULL,
	[H-EPA2] [nvarchar](8) NULL,
	[HBACT] [nvarchar](8) NULL,
	[HCM] [nvarchar](4) NULL,
	[HCMA] [nvarchar](6) NULL,
	[HCMB] [nvarchar](7) NULL,
	[HdCN-1] [nvarchar](3) NULL,
	[HdCN-2] [nvarchar](2) NULL,
	[HdGLY] [nvarchar](2) NULL,
	[HF183] [nvarchar](8) NULL,
	[HpLN] [nvarchar](2) NULL,
	[HPyV] [nvarchar](3) NULL,
	[HtSN-1] [nvarchar](3) NULL,
	[HtSN-2] [nvarchar](4) NULL,
	[HuBACT] [nvarchar](8) NULL,
	[HuBACT-EPA1] [nvarchar](7) NULL,
	[HuBACT-EPA2] [nvarchar](6) NULL,
	[Hum_COI] [nvarchar](2) NULL,
	[IRA] [nvarchar](2) NULL,
	[IRA-1] [nvarchar](2) NULL,
	[IRA-2] [nvarchar](2) NULL,
	[IRB] [nvarchar](8) NULL,
	[IRB-1] [nvarchar](8) NULL,
	[IRB-10] [nvarchar](2) NULL,
	[IRB-11] [nvarchar](2) NULL,
	[IRB-12] [nvarchar](2) NULL,
	[IRB-13] [nvarchar](2) NULL,
	[IRB-14] [nvarchar](2) NULL,
	[IRB-2] [nvarchar](2) NULL,
	[IRB-3] [nvarchar](7) NULL,
	[IRB-4] [nvarchar](5) NULL,
	[IRB-5] [nvarchar](8) NULL,
	[IRB-6] [nvarchar](8) NULL,
	[IRB-7] [nvarchar](6) NULL,
	[IRB-8] [nvarchar](6) NULL,
	[IRB-9] [nvarchar](2) NULL,
	[IRB/SRB] [nvarchar](8) NULL,
	[IRBA] [nvarchar](6) NULL,
	[IRBG] [nvarchar](2) NULL,
	[IRBG-1] [nvarchar](2) NULL,
	[IRBG-2] [nvarchar](2) NULL,
	[IRBG-3] [nvarchar](2) NULL,
	[IRBG-4] [nvarchar](2) NULL,
	[IRBS] [nvarchar](3) NULL,
	[IRG] [nvarchar](4) NULL,
	[IRG-1] [nvarchar](8) NULL,
	[IRG-2] [nvarchar](8) NULL,
	[IRG-3] [nvarchar](6) NULL,
	[IRG-4] [nvarchar](7) NULL,
	[IRN] [nvarchar](8) NULL,
	[IRS] [nvarchar](8) NULL,
	[LAB] [nvarchar](6) NULL,
	[LBMN-1] [nvarchar](3) NULL,
	[LBMN-2] [nvarchar](2) NULL,
	[LeeSeaGull] [nvarchar](2) NULL,
	[LEG] [nvarchar](2) NULL,
	[LGDN-1] [nvarchar](4) NULL,
	[LGDN-2] [nvarchar](2) NULL,
	[LGDN-3] [nvarchar](3) NULL,
	[LUCI] [nvarchar](8) NULL,
	[MAEN-1] [nvarchar](8) NULL,
	[MAEN-2] [nvarchar](2) NULL,
	[MCRN] [nvarchar](5) NULL,
	[MDLN-1] [nvarchar](4) NULL,
	[MDLN-2] [nvarchar](4) NULL,
	[MgHAP] [nvarchar](2) NULL,
	[MgICG] [nvarchar](2) NULL,
	[MGN] [nvarchar](8) NULL,
	[MGN-1] [nvarchar](8) NULL,
	[MGN-2] [nvarchar](7) NULL,
	[MGN-3] [nvarchar](6) NULL,
	[MGN-4] [nvarchar](8) NULL,
	[MGN-5] [nvarchar](6) NULL,
	[MGN-6] [nvarchar](4) NULL,
	[MGN-7] [nvarchar](7) NULL,
	[MGN-8] [nvarchar](8) NULL,
	[MgRKN] [nvarchar](2) NULL,
	[MHBN-1] [nvarchar](3) NULL,
	[MHBN-2] [nvarchar](3) NULL,
	[MLCN] [nvarchar](5) NULL,
	[MnOB] [nvarchar](7) NULL,
	[MnOB-1] [nvarchar](7) NULL,
	[MnOB-2] [nvarchar](7) NULL,
	[MnOB-3] [nvarchar](6) NULL,
	[MnOB-4] [nvarchar](2) NULL,
	[mnssA] [nvarchar](7) NULL,
	[mnssA-1] [nvarchar](7) NULL,
	[mnssA-2] [nvarchar](2) NULL,
	[MOB] [nvarchar](8) NULL,
	[MOB-1] [nvarchar](8) NULL,
	[MOB-2] [nvarchar](8) NULL,
	[MOB-3] [nvarchar](8) NULL,
	[MOB-4] [nvarchar](7) NULL,
	[MOBI] [nvarchar](8) NULL,
	[MOBII] [nvarchar](8) NULL,
	[MRLN] [nvarchar](2) NULL,
	[mtDNA-CanGoose] [nvarchar](8) NULL,
	[mtDNA-Chicken] [nvarchar](8) NULL,
	[mtDNA-Cow] [nvarchar](5) NULL,
	[mtDNA-Dog] [nvarchar](7) NULL,
	[mtDNA-Human] [nvarchar](5) NULL,
	[mtDNA-Raccoon] [nvarchar](7) NULL,
	[mtDNA-seagull] [nvarchar](6) NULL,
	[mtDNA-Swine] [nvarchar](7) NULL,
	[MTS] [nvarchar](7) NULL,
	[MYCO] [nvarchar](4) NULL,
	[NAH] [nvarchar](8) NULL,
	[NAH-1] [nvarchar](8) NULL,
	[NAH-2] [nvarchar](8) NULL,
	[NAHt] [nvarchar](4) NULL,
	[NidA] [nvarchar](6) NULL,
	[NidA-1] [nvarchar](6) NULL,
	[NidA-2] [nvarchar](7) NULL,
	[NidA-3] [nvarchar](7) NULL,
	[NidA1] [nvarchar](4) NULL,
	[NidA2] [nvarchar](4) NULL,
	[nidA3] [nvarchar](2) NULL,
	[NIF] [nvarchar](7) NULL,
	[NIF-1] [nvarchar](7) NULL,
	[NIF-2] [nvarchar](8) NULL,
	[NIF-3] [nvarchar](7) NULL,
	[NIF-4] [nvarchar](5) NULL,
	[NIF-5] [nvarchar](7) NULL,
	[NIF-6] [nvarchar](4) NULL,
	[NIF-7] [nvarchar](4) NULL,
	[NIF-8] [nvarchar](8) NULL,
	[NirK] [nvarchar](8) NULL,
	[nirK-1] [nvarchar](8) NULL,
	[nirK-2] [nvarchar](6) NULL,
	[nirK-3] [nvarchar](7) NULL,
	[nirk-4] [nvarchar](6) NULL,
	[nirK-5] [nvarchar](8) NULL,
	[nirK-6] [nvarchar](6) NULL,
	[NirS] [nvarchar](8) NULL,
	[nirS-1] [nvarchar](5) NULL,
	[nirS-2] [nvarchar](4) NULL,
	[nirS-4] [nvarchar](5) NULL,
	[nirS-6] [nvarchar](2) NULL,
	[nirS-7] [nvarchar](5) NULL,
	[NOB] [nvarchar](8) NULL,
	[NOD] [nvarchar](2) NULL,
	[NOR] [nvarchar](7) NULL,
	[NOR-1] [nvarchar](8) NULL,
	[NOR-2] [nvarchar](7) NULL,
	[NOR-3] [nvarchar](2) NULL,
	[OSCN-1] [nvarchar](3) NULL,
	[OSCN-2] [nvarchar](2) NULL,
	[PABN] [nvarchar](4) NULL,
	[Pae_vari] [nvarchar](2) NULL,
	[PaTYN] [nvarchar](3) NULL,
	[pcpB] [nvarchar](8) NULL,
	[pcpE] [nvarchar](8) NULL,
	[pcpR] [nvarchar](8) NULL,
	[pcrA] [nvarchar](8) NULL,
	[Percent_Recovery] [nvarchar](2) NULL,
	[PHE] [nvarchar](8) NULL,
	[PHE-1] [nvarchar](8) NULL,
	[PHE-2] [nvarchar](8) NULL,
	[PHE-3] [nvarchar](8) NULL,
	[PHE-4] [nvarchar](8) NULL,
	[PHNA] [nvarchar](8) NULL,
	[PHNA-1] [nvarchar](5) NULL,
	[PHNA-2] [nvarchar](8) NULL,
	[PHNA-3] [nvarchar](8) NULL,
	[Pig_COI] [nvarchar](3) NULL,
	[PLCN] [nvarchar](4) NULL,
	[PM1] [nvarchar](8) NULL,
	[PMMO] [nvarchar](6) NULL,
	[PMMO-1] [nvarchar](7) NULL,
	[PMMO-2] [nvarchar](8) NULL,
	[PMMO-3] [nvarchar](6) NULL,
	[PMMO-4] [nvarchar](8) NULL,
	[PMMO-5] [nvarchar](7) NULL,
	[PMMO-6] [nvarchar](7) NULL,
	[PMMO-7] [nvarchar](2) NULL,
	[PMMO-8] [nvarchar](4) NULL,
	[PNGLN] [nvarchar](4) NULL,
	[PNGN] [nvarchar](3) NULL,
	[PPO] [nvarchar](7) NULL,
	[PPO-1] [nvarchar](7) NULL,
	[PPO-2] [nvarchar](7) NULL,
	[PR] [nvarchar](4) NULL,
	[PRLN-1] [nvarchar](3) NULL,
	[PRLN-2] [nvarchar](4) NULL,
	[PRLN-3] [nvarchar](4) NULL,
	[PRSMN] [nvarchar](3) NULL,
	[PSTCN] [nvarchar](2) NULL,
	[PT] [nvarchar](2) NULL,
	[PTDN-1] [nvarchar](3) NULL,
	[PTDN-2] [nvarchar](2) NULL,
	[QA4] [nvarchar](2) NULL,
	[QNSN] [nvarchar](3) NULL,
	[ratio] [nvarchar](3) NULL,
	[RDEG] [nvarchar](8) NULL,
	[RDEG-1] [nvarchar](8) NULL,
	[RDEG-2] [nvarchar](8) NULL,
	[RDEG-3] [nvarchar](8) NULL,
	[RDEGt] [nvarchar](6) NULL,
	[RHBN] [nvarchar](2) NULL,
	[RHOD] [nvarchar](7) NULL,
	[RMO] [nvarchar](8) NULL,
	[RMO-1] [nvarchar](8) NULL,
	[RMO-2] [nvarchar](6) NULL,
	[RMO-3] [nvarchar](5) NULL,
	[RMO-4] [nvarchar](7) NULL,
	[RMO-5] [nvarchar](8) NULL,
	[Rum2Bac] [nvarchar](7) NULL,
	[SAL] [nvarchar](3) NULL,
	[SAUR] [nvarchar](6) NULL,
	[SEPI] [nvarchar](3) NULL,
	[Seq28] [nvarchar](8) NULL,
	[SHEW] [nvarchar](5) NULL,
	[SHW] [nvarchar](2) NULL,
	[SM] [nvarchar](2) NULL,
	[sMMO] [nvarchar](8) NULL,
	[SMMO-1] [nvarchar](5) NULL,
	[SMMO-2] [nvarchar](2) NULL,
	[SMMO-3] [nvarchar](2) NULL,
	[SOB] [nvarchar](7) NULL,
	[SOB-1] [nvarchar](8) NULL,
	[SOB-2] [nvarchar](8) NULL,
	[SOB-3] [nvarchar](7) NULL,
	[SOB-4] [nvarchar](7) NULL,
	[SOB-5] [nvarchar](6) NULL,
	[SRA] [nvarchar](2) NULL,
	[SRA-1] [nvarchar](4) NULL,
	[SRA-2] [nvarchar](2) NULL,
	[SRA-3] [nvarchar](2) NULL,
	[ST] [nvarchar](2) NULL,
	[Stac_char] [nvarchar](2) NULL,
	[STY] [nvarchar](2) NULL,
	[STY-1] [nvarchar](7) NULL,
	[STY-2] [nvarchar](6) NULL,
	[TBA] [nvarchar](8) NULL,
	[TBACT] [nvarchar](8) NULL,
	[tcb] [nvarchar](6) NULL,
	[TCBO] [nvarchar](5) NULL,
	[TCE] [nvarchar](8) NULL,
	[TECOLI] [nvarchar](7) NULL,
	[TENT] [nvarchar](8) NULL,
	[TFUN] [nvarchar](8) NULL,
	[THF] [nvarchar](7) NULL,
	[THNN] [nvarchar](2) NULL,
	[TLMLN] [nvarchar](3) NULL,
	[TNEM] [nvarchar](3) NULL,
	[TOD] [nvarchar](8) NULL,
	[TOD-1] [nvarchar](7) NULL,
	[TOD-2] [nvarchar](5) NULL,
	[TOL] [nvarchar](8) NULL,
	[Total_Protein_Biomass] [nvarchar](3) NULL,
	[TRDN] [nvarchar](4) NULL,
	[TYLMN] [nvarchar](4) NULL,
	[TYLRN] [nvarchar](3) NULL,
	[VC] [nvarchar](8) NULL,
	[VCR] [nvarchar](8) NULL,
	[VF] [nvarchar](4) NULL,
	[Volume_Filtered] [nvarchar](2) NULL,
	[WTCN] [nvarchar](3) NULL,
	[XPDN-1] [nvarchar](2) NULL,
	[XPDN-2] [nvarchar](2) NULL,
	[XPLA] [nvarchar](2) NULL,
	[Alternate_Units] [nvarchar](100) NULL,
 CONSTRAINT [PK_MIDB] PRIMARY KEY CLUSTERED 
(
	[Merged_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
