USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 11/20/2014 07:06:19 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


ALTER FUNCTION [dbo].[GetDrDayliTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @day_pay decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @day_pay=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @day_pay=dr.day_payment from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @day_pay>0 begin
		SET @res=@day_pay
	 end
	 else
	 begin
		select @res=ovo.day_payment from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO


