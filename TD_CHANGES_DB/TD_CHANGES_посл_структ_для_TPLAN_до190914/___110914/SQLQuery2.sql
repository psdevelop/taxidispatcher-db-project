USE [TD5R1]
GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_WBROADCAST]    Script Date: 09/11/2014 22:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDERDEL_WBROADCAST] 
   ON  [dbo].[Zakaz] 
   AFTER DELETE
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
		
		
	SELECT @RSOldValue=b.REMOTE_SET 
	FROM deleted b

	IF ((@RSOldValue>0) AND (@RSOldValue<8) )
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END
