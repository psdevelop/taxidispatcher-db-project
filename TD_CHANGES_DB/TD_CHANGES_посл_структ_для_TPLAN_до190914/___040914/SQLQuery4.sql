USE [TD5R1]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTakePercent]    Script Date: 09/04/2014 18:29:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetDrTaxTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.tmeter_tariff from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.tmeter_tariff from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END

