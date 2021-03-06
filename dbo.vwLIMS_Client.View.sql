USE [MicrobialInsights]
GO
/****** Object:  View [dbo].[vwLIMS_Client]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[vwLIMS_Client]
as
SELECT [DisplayName]
      ,[CompanyName]
      ,[ClientNotes]
      ,lc.[active]
	  ,count(*) as numBranches 
  FROM [MicrobialInsights].[dbo].[LIMS_Client] lc
  left join LIMS_Branches lb on lc.ClientID = lb.ClientID
  where companyname <> ''
  Group by  [DisplayName]
      ,[CompanyName]
      ,[ClientNotes]
      ,lc.[active]
GO
