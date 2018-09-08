USE [TD5R1]
GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_WBROADCAST]    Script Date: 09/11/2014 20:16:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER TRIGGER [dbo].[AFTER_ORDER_WBROADCAST] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_ford_wbroadcast int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_ford_wbroadcast=ISNULL(use_ford_wbroadcast,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_ford_wbroadcast>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewSyncValue INT,
		@OldSyncValue int, @newDrId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b

	IF ( ((@nNewValue<8) AND (@RSOldValue=0) AND (@nNewValue>0) 
		AND (@newDrId<=0))
		OR ((@nNewValue=8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId>0)) )
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END





GO


