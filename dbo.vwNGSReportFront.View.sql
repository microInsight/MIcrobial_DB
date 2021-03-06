USE [MicrobialInsights]
GO
/****** Object:  View [dbo].[vwNGSReportFront]    Script Date: 8/28/2018 10:33:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[vwNGSReportFront]
as

Select p.ProjectID 
	, Contact_Name ContactName
	, Contact_Phone Phone
	, Branch_Address1 + case when coalesce(Branch_Address2, '') <> '' then '<BR />' + Branch_Address2 else '' end
		+ case when coalesce(Branch_Address3, '') <> '' then '<BR />' + Branch_Address3 else '' end
		+ '<BR />' + Branch_City + ', ' + Branch_StateOrProvince + ' ' +Branch_PostalCode ProjectAddress
	, coalesce(Contact_Email, '') ContactEmail
	, convert(varchar(20),Getdate(),101) ReportDate 
	, coalesce(p.ClientProjectName + ' ' + p.ClientReference, '') ProjectName
	
from LIMS_ProjectClient PC 
Join LIMS_Project p on PC.ProjectID = p.ProjectID
where sort = 1


GO
