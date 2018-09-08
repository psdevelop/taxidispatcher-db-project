USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 10/10/2014 17:37:04 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrTariffPlanId]  (@driver_id int)
RETURNS int
AS
BEGIN
	DECLARE @tplan_id int, @gr_tplan_id int
   
	SET @tplan_id=-1
	SET @gr_tplan_id=-1
   
	select @tplan_id=ISNULL(PR_POLICY_ID,-1)  
	from Voditelj where BOLD_ID=@driver_id;
	
	SELECT @gr_tplan_id=ISNULL(gr.PR_POLICY_ID,-1) 
	FROM Voditelj dr, Gruppa_voditelei gr 
	WHERE dr.otnositsya_k_gruppe=gr.BOLD_ID AND
	dr.BOLD_ID=@driver_id;
   
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=@gr_tplan_id
	END
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=-1
	END 

	RETURN(@tplan_id)
END


GO


