USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_DspTopPhylumClassiﬁcationResults]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- exec usp_DspPrincipalCoordinateAnalysis
CREATE procedure [dbo].[usp_DspTopPhylumClassiﬁcationResults](
--Declare 
	@ProjectID varchar(50) = '124PF'
	, @SampleName varchar(50) = 'FD-1-IN-0618'
	, @MI_Identitfier varchar(50) = '124PF-1'
	, @FigureNum int = 4
	, @FigureTitle varchar(250) = ''
	, @FigureText varchar(500) = 'Top Phylum Classification Results for '
	, @ImageRoot varchar(250) = 'images'
) as

Declare @ImagePath varchar(250)
	, @ImageName varchar(50)
	Set @ImageName = @MI_Identitfier + '-tpcr.png'
	Select 0 as Sort1, 0 as Sort2,'' As HTMLLine
	Union Select 1, 0,'<img src="'+@ImageRoot+'\'+@ProjectID+'\'+ @ImageName +'" height="600" width="800" />'
    Union Select 2, 0,'<table><tr><td class="FirstLabel">Figure '+convert(varchar(3), @FigureNum) +':</td><td class="FirstColumn">' + @FigureText + @SampleName + '</td></tr></table><br /><br />'


	
GO
