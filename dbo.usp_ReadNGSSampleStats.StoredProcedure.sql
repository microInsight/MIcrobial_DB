USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_ReadNGSSampleStats]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
create table Stats_Temp
(
id int identity(1,1)
, DataRow varchar(4000)
)

create table NGS_SampleAggregate
(
	NGS_SampleAggregate int identity(1,1)
	, SampleID varchar(50)
	, SampleName varchar(50)
	, SampleNum int
	, KingdomCnt int
	, PhylumCnt int
	, ClassCnt int
	, OrderCnt int
	, FamilyCnt int
	, GenusCnt int
	, SpeciesCnt int
	, ClusterCnt int
	, ClusterCntPF int
)
--   <ClassifiedReadCount>     <long>929267</long>     <long>922053</long>     <long>905835</long>     <long>896631</long>     <long>891344</long>     <long>864675</long>     <long>627607</long>     <long>0</long>   </ClassifiedReadCount>   <ClusterCount>940371</ClusterCount>   <ClusterCountPF>940371</ClusterCountPF>   <SampleID>124PF1</SampleID>   <SampleName>124PF1</SampleName>   <SampleNumber>10</SampleNumber> </MetagenomicsStatistics>
*/
CREATE procedure [dbo].[usp_ReadNGSSampleStats] (
--Declare 
	@FilePath varchar(500) = 'C:\Users\bob\Documents\BCS\Microbial\Report Examples\PF 2018\124PF\NGS\124PF-2\124PF2_S9.stats.xml'
	, @ProjectID varchar(250) = '124PF'
) AS
Declare @strSql nvarchar(4000)

truncate table stats_temp
Select @strSql = N'INSERT INTO Stats_Temp SELECT * FROM OPENROWSET(BULK ''' +@filePath +''', SINGLE_CLOB) AS x;';
Select @strSql
exec  sp_sqlexec @strSql;
   Declare @Kingdom int
	, @Phylum int
	, @Class int
	, @Order int
	, @Family int
	, @Genus int
	, @species int
	, @ClusterCnt int
	, @ClusterCntPF int
	, @sampleID varchar(50)
	, @sampleName varchar(50)
	, @sampleNum int;

--   Select *, PATINDEX('%<ClassifiedReadCount>%', datarow) from stats_temp
  
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Kingdom = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Phylum = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
  
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Class = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Order = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Family = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @Genus = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<Long>%', datarow)+5))
   Select @species = convert(int, left(datarow,PATINDEX('%</Long>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<ClusterCount>%', datarow)+13))
   Select @ClusterCnt = convert(int, left(datarow,PATINDEX('%</ClusterCount>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<ClusterCountPF>%', datarow)+15))
   Select @ClusterCntPF = convert(int, left(datarow,PATINDEX('%</ClusterCountPF>%', datarow)-1)) from Stats_Temp
   
   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<SampleID>%', datarow)+9))
   Select @sampleID = left(datarow,PATINDEX('%</SampleID>%', datarow)-1) from Stats_Temp

   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<SampleName>%', datarow)+11))
   Select @sampleName = left(datarow,PATINDEX('%</SampleName>%', datarow)-1) from Stats_Temp

   update stats_temp set datarow = right(datarow, len(datarow) - (PATINDEX('%<SampleNumber>%', datarow)+13))
   Select @sampleNum = convert(int, left(datarow,PATINDEX('%</SampleNumber>%', datarow)-1)) from Stats_Temp

INSERT INTO [dbo].[NGS_SampleAggregate]
           ([ProjectID]
		   ,[SampleID]
           ,[SampleName]
           ,[SampleNumber]
           ,[KingdomCnt]
           ,[PhylumCnt]
           ,[ClassCnt]
           ,[OrderCnt]
           ,[FamilyCnt]
           ,[GenusCnt]
           ,[SpeciesCnt]
           ,[ClusterCnt]
           ,[ClusterCntPF])

   Select @ProjectID	as [ProjectID]
		, @sampleID 	as [sampleID] 
		, @sampleName 	as [sampleName] 
		, @sampleNum 	as [sampleNum] 
		, @kingdom		as [kingdomCnt]		
   		, @Phylum 		as [PhylumCnt]
		, @Class 		as [ClassCnt]
		, @Order 		as [OrderCnt]
		, @Family		as [FamilyCnt]
		, @Genus 		as [GenusCnt]
		, @species 		as [SpeciesCnt]
		, @ClusterCnt 	as [ClusterCnt]
		, @ClusterCntPF	as [ClusterCntPF]
  from stats_temp
   
--Select * from NGS_SampleAggregate where SampleID = @sampleID;

GO
