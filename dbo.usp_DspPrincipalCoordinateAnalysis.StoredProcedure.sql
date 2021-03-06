USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_DspPrincipalCoordinateAnalysis]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_DspPrincipalCoordinateAnalysis
CREATE procedure [dbo].[usp_DspPrincipalCoordinateAnalysis](
--Declare 
	@ProjectID varchar(50) = '124PF'
	, @SampleName varchar(50) = ''
	, @MI_Identitfier varchar(50) = ''
	, @FigureNum int = 2
	, @FigureTitle varchar(250) = ''
	, @FigureText varchar(500) = 'Principal Coordinate Analysis. This scatterplot shows a Principal Coordinate Analysis (PCoA) of the normalized relative abundance of all samples at the genus-level classifications. Increasing distance between sample points on this plot indicate increasing dissimilarity between bacterial populations in the samples.'
	, @ImageRoot varchar(250) = 'images'
) as

Declare @ImagePath varchar(250)
	, @ImageName varchar(50)
	Set @ImageName = @ProjectID + '-pcoa.png'
	Select 0 as Sort1, 0 as Sort2,'<h3></H3>' As HTMLLine
	Union Select 1, 0,'<img src="'+@ImageRoot+'\'+@ProjectID+'\'+ @ImageName +'" height="800" width="800" />'
    Union Select 2, 0,'<table><tr><td class="FirstLabel">Figure '+convert(varchar(3), @FigureNum) +':</td><td class="FirstColumn">' + @FigureText + '</td></tr></table><br /><br />'


	
GO
