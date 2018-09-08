USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 10/11/2014 18:26:32 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetTarTimeTariff]  (@tar_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE  @res decimal(28, 10)
   
   SET @res=0
   
   select @res=ISNULL(ot.TIME_TARIF,0) from ORDER_TARIF ot
   where ot.ID=@tar_id 
   
   SET @res=ISNULL(@res,0);  

   RETURN(@res)
END


GO


