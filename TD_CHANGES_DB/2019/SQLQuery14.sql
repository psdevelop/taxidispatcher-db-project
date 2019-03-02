USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 02.03.2019 2:06:21 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDriverRatingLevel]  (@driver_id int)
RETURNS smallint
AS
BEGIN
  declare @res smallint
   
  SET @res=0
   
  select @res=rating_level   
  from Voditelj 
  where BOLD_ID=@driver_id 

  SET @res=ISNULL(@res, 0);

  RETURN(@res)
END
GO


