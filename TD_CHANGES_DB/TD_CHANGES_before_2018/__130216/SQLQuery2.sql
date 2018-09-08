USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 13.02.2016 12:15:24 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetDrJSONCoordsByNum]  ( @dr_num int )
RETURNS varchar(255)
AS
BEGIN
   declare @res int, @coords_json varchar(255);
   
   SET @res=-1
   SET @dr_num=ISNULL(@dr_num,0)
   SET @coords_json=''
   
  if @dr_num>0 begin
  select @coords_json=BOLD_ID, @coords_json=',"dlat":"'+ISNULL(last_lat,'')+'"'+',"dlon":"'+ISNULL(last_lon,'')+'"'  
   from Voditelj where 
     Pozyvnoi=@dr_num and ISNULL(last_lat,'')<>'' and ISNULL(last_lon,'')<>''
  end

   if @coords_json=NULL begin
       SET @coords_json=''
   end  

   RETURN(@coords_json)
END
GO


