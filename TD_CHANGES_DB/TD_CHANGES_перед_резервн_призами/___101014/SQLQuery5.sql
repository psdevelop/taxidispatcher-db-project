USE [TD5R1]
GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_ASSIGN]    Script Date: 10/10/2014 17:48:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER TRIGGER [dbo].[AFTER_DRASS_TPLAN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @autotarif_by_driver smallint,
		@overtar_by_driver smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@autotarif_by_driver=ISNULL(autotarif_by_driver,0),
	@overtar_by_driver=ISNULL(overtar_by_driver,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@autotarif_by_driver=1))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b;
	
	IF((@newDrId<>@oldDrId) and (@newDrId>0))
	BEGIN
	
		UPDATE Zakaz SET PR_POLICY_ID=dbo.GetDrTariffPlanId(@newDrId),
		TARIFF_ID=-1, OPT_COMB_STR='-' 
		WHERE ((PR_POLICY_ID<=0) OR (@overtar_by_driver=1)) 
		AND (BOLD_ID=@nOldValue);
	
	END;

	END;
	
	
	
END



GO


