USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 06/18/2015 23:28:09 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetDevNumByCode]  ( @phone varchar(255))
RETURNS int
AS
BEGIN
   declare @res int, @code varchar(50)
   
   SET @res=0
   
   IF LEN(@phone)=10
   BEGIN
		SET @code=LEFT(@phone,3)
		SELECT @res=device_num FROM DEVICE_CODES WHERE code=@code
   END

   if @res=NULL begin
       SET @res=0
   end  

   RETURN(@res)
END
GO


