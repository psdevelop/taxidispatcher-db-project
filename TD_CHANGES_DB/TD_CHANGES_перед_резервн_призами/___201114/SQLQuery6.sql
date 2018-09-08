USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursSumm]    Script Date: 11/20/2014 11:39:04 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


ALTER FUNCTION [dbo].[GetDrLastHoursRateOrdCount]  (@DriverId int, @hours int, @rating_summ decimal(28,10))
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @order_count int
   
   SET @order_count=0
   
   select @order_count=COUNT(*) from Zakaz
   where vypolnyaetsya_voditelem=@DriverId 
   and (Konec_zakaza_data<=CURRENT_TIMESTAMP) 
   and (Konec_zakaza_data>=DATEADD(hour,@hours,CURRENT_TIMESTAMP)) 
   and Arhivnyi=0 and Soobsheno_voditelyu=0 and 
   Zavershyon=1 and Uslovn_stoim>=@rating_summ;   

   RETURN(@order_count)
END


GO


