USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNum]    Script Date: 07/27/2014 16:04:49 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrUseDynBByNumWithSettParam]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res smallint, @use_dr_bcounter int;
   
   SET @res=0
   
   SELECT @use_dr_bcounter=use_dr_balance_counter 
   FROM Objekt_vyborki_otchyotnosti 
   WHERE Tip_objekta='for_drivers';  

   SET @use_dr_bcounter=ISNULL(@use_dr_bcounter,0)
   
   if (@dr_num>0)
   begin
	select @res=use_dyn_balance   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);
   
   IF((@use_dr_bcounter=1) AND (@res=1))
   BEGIN
		SET @res=1;
   END
   ELSE
   BEGIN
		SET @res=0;
   END;

   RETURN(@res)
END
GO


