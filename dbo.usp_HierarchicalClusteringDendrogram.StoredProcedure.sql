USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_HierarchicalClusteringDendrogram]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_HierarchicalClusteringDendrogram
CREATE procedure [dbo].[usp_HierarchicalClusteringDendrogram](
--Declare 
	@ProjectID varchar(50) = '124PF'
	, @SampleName varchar(50) = ''
	, @MI_Identitfier varchar(50) = ''
	, @FigureNum int = 2
	, @FigureTitle varchar(250) = ''
	, @FigureText varchar(500) = 'Hierarchical Clustering Dendrogram. This dendrogram shows a hierarchical clustering of samples based on genus-level classifications. Branch length is representative of relatedness between samples. The barchart beneath each sample show the relative abundance of the top 8 genus-level classifications, along with all other classified and unclassified genera. See the following detailed analysis by sample to identify the dominant genera in each sample.'
	, @ImageRoot varchar(250) = 'images'
) as

Declare @ImagePath varchar(250)
	, @ImageName varchar(50)
	Set @ImageName = @ProjectID + '-hcd.png'
	Select 0 as Sort1, 0 as Sort2,'<h3></H3>' As HTMLLine
	Union Select 1, 0,'<img src="'+@ImageRoot+'\'+@ProjectID+'\'+ @ImageName +'" height="800" width="800" />'
    Union Select 2, 0,'<table><tr><td class="FirstLabel">Figure '+convert(varchar(3), @FigureNum) +':</td><td class="FirstColumn">' + @FigureText + '</td></tr></table><br /><br />'


	
GO
