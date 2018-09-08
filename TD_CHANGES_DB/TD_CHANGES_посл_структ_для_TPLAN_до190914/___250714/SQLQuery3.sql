USE [TD5R1]
GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_COMPLETE]    Script Date: 07/25/2014 17:49:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_DRIVER_ASSIGN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b;
	
	IF((@newDrId<>@oldDrId) and (@newDrId>0))
	BEGIN
	
		UPDATE Zakaz SET dr_assign_date=GETDATE() WHERE BOLD_ID=@nOldValue;
	
	END;

	END;
	
	
	
END


GO


