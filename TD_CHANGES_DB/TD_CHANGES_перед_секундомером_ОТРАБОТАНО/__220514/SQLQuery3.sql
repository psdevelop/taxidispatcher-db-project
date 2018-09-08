SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_EVENT_UPDATE] 
   ON  [dbo].[TD_EVENTS] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int;
	
	SET @has_dr_changes = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @DrIdValue int, @closedNewValue smallint,
		@closedOldValue smallint, @actEvCount int;
		
		SELECT @DrIdValue=a.DRIVER_ID,
			@closedOldValue=b.CLOSED,
			@closedNewValue=a.CLOSED
		FROM inserted a, deleted b;
		
		if ((@closedOldValue<>@closedNewValue) and 
			(ISNULL(@DrIdValue,0)>0))	
		begin
			select @actEvCount=COUNT(*) 
			FROM TD_EVENTS
			WHERE CLOSED=0 and DRIVER_ID=@DrIdValue;
			
			if (@actEvCount=0)
			begin
				UPDATE Voditelj
				SET has_active_events=0 
				WHERE BOLD_ID=@DrIdValue;
			end
		end
		
	END
END