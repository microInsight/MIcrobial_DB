USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenReportFront]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[usp_GenReportFront] (
--Declare 
		@miid varchar(25) = '124PF'
		, @Comments varchar(250) = ''
) as 
--/**/
Declare @Contact varchar(100)
	, @Phone varchar(25)
	, @Address varchar(250)
	, @Email varchar(50)
	, @ReportDate varchar(20)
	, @Project varchar(50)

Select @Contact = Contact_Name
	, @Phone = Contact_Phone
	, @Address = Branch_Address1 + case when coalesce(Branch_Address2, '') <> '' then '<BR />' + Branch_Address2 else '' end
		+ case when coalesce(Branch_Address3, '') <> '' then '<BR />' + Branch_Address3 else '' end
		+ '<BR />' + Branch_City + ', ' + Branch_StateOrProvince + ' ' +Branch_PostalCode
	, @Email = Contact_Email
	, @ReportDate = convert(varchar(20),Getdate(),101) 
	, @Project = p.ClientProjectName + ' ' + p.ClientReference
	
from LIMS_ProjectClient PC 
Join LIMS_Project p on PC.ProjectID = p.ProjectID
where pc.ProjectID = @miid and sort = 1


	Select 0 as Sort1, 0 as Sort2,'' As HTMLLine
	Union Select 1, 0,'<h1>Site Logic Report</h1>'
    Union Select 2, 0,'<hr class="redline" />'
    Union Select 3, 0,'<h2><i>Next Generation Sequencing (NGS) Report</i></h2>'
    Union Select 4, 0,'<table class="full" cellspacing="20">'
    Union Select 5, 0,'<tr><td class="FirstLabel">Contact:</td><td class="FirstColumn">'+@Contact+'</td><td></td><td class="SecondLabel">Phone:</td><td class="SecondColumn">'+@Phone+'</td></tr>'
    Union Select 6, 0,'<tr><td class="FirstLabel">Address:</td><td class="FirstColumn">'+@Address+'</td><td></td><td class="SecondLabel">Email:</td><td class="SecondColumn">'+@Email+'</td></tr>'
    Union Select 7, 0,'</table>'
	Union Select 8, 0,'<table class="full"><tr><td width="50%"><table class="full"><tr class="RedBackLabel"><td>MI Identifier:</td><td class="CenterData">'+@miid+'</td></tr></table></td>'
	Union Select 9, 0,'<td class="SecondLabel" width="10%">Report Date:</td><td class="SecondColumn">'+@ReportDate+'</td></tr></table>'
	Union Select 10, 0,'<table class="full"><tr><td class="FirstLabel" width="20%">Project:</td><td></td><td class="FirstColumn">'+@Project+'</td></tr>'
    Union Select 11, 0,'<tr><td class="FirstLabel" width="20%">Comments:</td><td></td><td class="FirstColumn">'+@Comments+'</td></tr></table>'



GO
