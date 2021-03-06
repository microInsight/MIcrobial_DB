USE [MicrobialInsights]
GO
/****** Object:  Table [dbo].[company_info]    Script Date: 8/28/2018 10:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_info](
	[cid] [bigint] NULL,
	[company_name] [nvarchar](150) NULL,
	[company_logo_app] [nvarchar](200) NULL,
	[company_logo_admin_login] [nvarchar](200) NULL,
	[company_sidebar_image_admin] [nvarchar](200) NULL,
	[company_address] [nvarchar](150) NULL,
	[company_state] [nvarchar](50) NULL,
	[company_city] [nvarchar](150) NULL,
	[company_zip] [nvarchar](12) NULL,
	[company_phone] [nvarchar](20) NULL,
	[company_fax] [nvarchar](20) NULL,
	[background_color_app] [nvarchar](10) NULL,
	[background_color_admin] [nvarchar](10) NULL,
	[background_image_app] [nvarchar](200) NULL,
	[background_image_admin] [nvarchar](200) NULL,
	[table_color_app] [nvarchar](10) NULL,
	[table_color_admin] [nvarchar](10) NULL,
	[table_background_image_app] [nvarchar](200) NULL,
	[table_background_image_admin] [nvarchar](200) NULL,
	[email_notification_applicant] [nvarchar](max) NULL,
	[email_notification_client] [nvarchar](max) NULL,
	[font_color_title_app] [nvarchar](10) NULL,
	[font_color_table_app] [nvarchar](10) NULL,
	[email_from_address_applicant] [nvarchar](150) NULL,
	[email_from_address_client] [nvarchar](150) NULL,
	[email_from_address_admin] [nvarchar](200) NULL,
	[company_logo_admin] [nvarchar](200) NULL,
	[email_from_address] [nvarchar](200) NULL,
	[email_from_name] [nvarchar](200) NULL,
	[email_notification] [nvarchar](200) NULL,
	[email_subject] [nvarchar](200) NULL,
	[even_table_row_color] [nvarchar](200) NULL,
	[odd_table_row_color] [nvarchar](200) NULL,
	[company_website] [nvarchar](200) NULL,
	[projectid_type] [nvarchar](200) NULL,
	[projectid_start] [nvarchar](200) NULL,
	[default_sort] [nvarchar](200) NULL,
	[report_location] [nvarchar](200) NULL,
	[report_output] [nvarchar](200) NULL,
	[smtp_server] [nvarchar](200) NULL,
	[smtp_user] [nvarchar](200) NULL,
	[smtp_pass] [nvarchar](200) NULL,
	[default_date_format] [nvarchar](200) NULL,
	[default_time_format] [nvarchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
