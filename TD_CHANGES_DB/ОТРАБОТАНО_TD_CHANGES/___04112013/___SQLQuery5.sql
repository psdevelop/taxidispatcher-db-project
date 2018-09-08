CREATE TRIGGER [dbo].[AFTER_DRIVER_WBROADCAST] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int,
		@use_sector_wbroadcast int;
	
	SET @has_dr_changes = 0;
	SET @use_sector_wbroadcast = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_sector_wbroadcast = ISNULL(use_sect_wbroadcast,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if ((@db_version>=5) AND (@use_sector_wbroadcast=1))
	BEGIN
	
	DECLARE @nOldValue int, @nNewValue int,
		@RSOldValue int, @itsRemoteDr int,
		@NewLaunchValue int, @NewComplValue int,
		@OldLaunchValue int, @OldComplValue int,
		@newSectId int, @oldSectId int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @oldSyncStat int, @newSyncStat INT,
		@oldOrdDate DATETIME, @newOrdDate DATETIME;
		
	
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_STATUS,
	@RSOldValue=b.REMOTE_STATUS,
	@NewLaunchValue=a.Na_pereryve,
	@NewComplValue=a.Zanyat_drugim_disp,
	@OldLaunchValue=b.Na_pereryve,
	@OldComplValue=b.Zanyat_drugim_disp,
	@newSectId = a.rabotaet_na_sektore,
	@oldSectId = b.rabotaet_na_sektore,
	@newOnLineValue = a.V_rabote,
	@oldOnLineValue = b.V_rabote,
	@itsRemoteDr = b.ITS_REMOTE_CLIENT,
	@oldSyncStat = b.SYNC_STATUS,
	@newSyncStat = a.SYNC_STATUS,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki -- Get the Old and New values
	FROM inserted a, deleted b;
		/*		
		IF (@NewLaunchValue<>@OldLaunchValue)
		BEGIN
		
		END;
		
		IF ((@oldOrdDate<>@newOrdDate) OR
			(@NewComplValue<>@OldComplValue))
		BEGIN
			SET @has_dr_changes = 1;
		END;
		
		IF ((@OldComplValue=0) AND
			(@NewComplValue<>@OldComplValue))
		BEGIN
			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		END;*/
		
		IF ((@newSectId<>@oldSectId) OR 
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
		
			EXEC SetWideBroadcasts 1, '';
			UPDATE Voditelj SET SEND_WBROADCAST=1
			WHERE rabotaet_na_sektore=@oldSectId;
			IF(@newSectId<>@oldSectId)
			BEGIN
				UPDATE Voditelj SET SEND_WBROADCAST=1
				WHERE rabotaet_na_sektore=@newSectId;
			END; 
			/*SET @has_dr_changes = 1;*/
		
		END;
	
	/*
	IF (@has_dr_changes>0)
	BEGIN
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	END;
	*/
	
	END;

END



