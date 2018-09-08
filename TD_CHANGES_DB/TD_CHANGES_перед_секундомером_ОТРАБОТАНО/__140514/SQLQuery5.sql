USE [TD5R1]
GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_SYNC]    Script Date: 05/14/2014 12:34:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_COMPLETE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @min_debet decimal(28,10), 
	@use_dr_bcounter int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@min_debet=ISNULL(MIN_DEBET,0),
	@use_dr_bcounter=ISNULL(use_dr_balance_counter,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	DECLARE @nOldValue int, @completeNewValue int, 
		@completeOldValue INT, @NewSyncValue INT,
		@summValue decimal(28,10), @newDrId int, @dr_num int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@completeNewValue=a.Zavershyon,
	@completeOldValue=b.Zavershyon,
	@summValue=a.Uslovn_stoim,
	@newDrId=a.vypolnyaetsya_voditelem,
	@dr_num=a.Pozyvnoi_ustan
	FROM inserted a, deleted b
	
	IF (@summValue IS NULL)
	BEGIN
		UPDATE Zakaz SET Uslovn_stoim=0 WHERE BOLD_ID=@nOldValue;
	END
	
	SET @summValue=ISNULL(@summValue,0);
	
	IF((@db_version>=5) AND (@use_dr_bcounter=1))
	BEGIN

	IF ((@completeNewValue=1) AND (@completeNewValue<>@completeOldValue) 
		AND (@newDrId>0))
	BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=
		DRIVER_BALANCE-@summValue*dbo.GetDrTakePercent(@dr_num) 
		WHERE BOLD_ID=@newDrId;
	END;

	END;
	
	
	
END

GO


