USE [MicrobialInsights]
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateTPCR]    Script Date: 8/28/2018 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_CreateTPCR] (
	@SampleName varchar(25)
)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @query nvarchar(max) =  
  N'SELECT top 8 [Phylum],sum([num_hits]) num_hits
  	  FROM [MicrobialInsights].[dbo].[NGS_Statistics]
	  where SampleName = '''+@sampleName+''' and coalesce(phylum, '') <> ''
	  group by phylum
	  order by sum(num_hits) desc'
  EXECUTE sp_execute_external_script @language = N'R',  
                                     @script = N'  
    mainDir <- ''C:\\temp\\plots''  
    dir.create(mainDir, recursive = TRUE, showWarnings = FALSE)  
    setwd(mainDir);  
   
   image_file = tempfile();  
   jpeg(filename = image_file);  
   dest_filename = tempfile(pattern = ''cftr_Tipped_'', tmpdir = mainDir)  
    dest_filename = paste(dest_filename, ''.jpg'',sep="")  
    print(dest_filename, quote=FALSE);  
    jpeg(filename=dest_filename);  
    
   #Plot histogram  
   pie(Num_HIts, Phylum, col=''lightgreen'',   
   title = ''Tpp Phylum'', xlab =''Tipped or not'', ylab =''Counts'');  
   dev.off();  
   OutputDataSet <- data.frame(data=readBin(file(image_file, "rb"), what=raw(), n=1e6));  
   ',  
   @input_data_1 = @query  
   WITH RESULT SETS ((plot varbinary(max)));  
END
GO
