USE [TD5R1]
GO

------------------------------------------------------
------------------------------------------------------
---- ТРИГГЕРЫ
------------------------------------------------------
------------------------------------------------------

/****** Object:  Trigger [AFTER_TPLAN_ASSGN]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_TPLAN_ASSGN') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_TPLAN_ASSGN]
GO
/****** Object:  Trigger [AFTER_REMOTE_CLOSING]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_REMOTE_CLOSING') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_REMOTE_CLOSING]
GO
/****** Object:  Trigger [AFTER_ORDERDEL_WBROADCAST]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDERDEL_WBROADCAST') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDERDEL_WBROADCAST]
GO
/****** Object:  Trigger [AFTER_ORDER_WBROADCAST]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_WBROADCAST') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_WBROADCAST]
GO
/****** Object:  Trigger [AFTER_ORDER_TOPTS]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_TOPTS') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_TOPTS]
GO
/****** Object:  Trigger [AFTER_ORDER_SYNC]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_SYNC') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_SYNC]
GO
/****** Object:  Trigger [AFTER_ORDER_SDIRECTION]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_SDIRECTION') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_SDIRECTION]
GO
/****** Object:  Trigger [AFTER_ORDER_RSTATUS_CHANGE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_RSTATUS_CHANGE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_RSTATUS_CHANGE]
GO
/****** Object:  Trigger [AFTER_ORDER_PRIORITY]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_PRIORITY') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_PRIORITY]
GO
/****** Object:  Trigger [AFTER_ORDER_PHONE_CHANGE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_PHONE_CHANGE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_PHONE_CHANGE]
GO
/****** Object:  Trigger [AFTER_ORDER_INUM]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_INUM') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_INUM]
GO
/****** Object:  Trigger [AFTER_ORDER_INSERT_PRIORITY]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_INSERT_PRIORITY') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_INSERT_PRIORITY]
GO
/****** Object:  Trigger [AFTER_ORDER_INSERT]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_INSERT') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_INSERT]
GO
/****** Object:  Trigger [AFTER_ORDER_FIXTIMESET]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_FIXTIMESET') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_FIXTIMESET]
GO
/****** Object:  Trigger [AFTER_ORDER_COMPLETE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_COMPLETE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_COMPLETE]
GO
/****** Object:  Trigger [AFTER_ORDER_CL_SMS_STATUS_CHANGE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_CL_SMS_STATUS_CHANGE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_CL_SMS_STATUS_CHANGE]
GO
/****** Object:  Trigger [AFTER_ONPLACE_TOBE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ONPLACE_TOBE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ONPLACE_TOBE]
GO
/****** Object:  Trigger [AFTER_DRIVER_ASSIGN]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_ASSIGN') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_ASSIGN]
GO
/****** Object:  Trigger [AFTER_DRASS_TPLAN]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRASS_TPLAN') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRASS_TPLAN]
GO
/****** Object:  Trigger [AFTER_COORD_UPDATE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_COORD_UPDATE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_COORD_UPDATE]
GO
/****** Object:  Trigger [AFTER_INCOME_UPDATE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_INCOME_UPDATE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_INCOME_UPDATE]
GO
/****** Object:  Trigger [AFTER_INCOME_INSERT]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_INCOME_INSERT') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_INCOME_INSERT]
GO
/****** Object:  Trigger [AFTER_DRIVER_WORKSTART]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_WORKSTART') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_WORKSTART]
GO
/****** Object:  Trigger [AFTER_DRIVER_WBROADCAST]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_WBROADCAST') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_WBROADCAST]
GO
/****** Object:  Trigger [AFTER_DRIVER_UPDATE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_UPDATE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_UPDATE]
GO
/****** Object:  Trigger [AFTER_DRIVER_INSERT]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_INSERT') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_INSERT]
GO
/****** Object:  Trigger [AFTER_DRIVER_COORD_UPDATE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_COORD_UPDATE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_COORD_UPDATE]
GO
/****** Object:  Trigger [AFTER_EVENT_UPDATE]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_EVENT_UPDATE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_EVENT_UPDATE]
GO
/****** Object:  Trigger [AFTER_SECTOR_INSERT]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_SECTOR_INSERT') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_SECTOR_INSERT]
GO
/****** Object:  Trigger [AFTER_DRIVER_RATING_INSERT]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_DRIVER_RATING_INSERT') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_DRIVER_RATING_INSERT]
GO
/****** Object:  Trigger [AFTER_ORDER_DISTRICT_OR_SECTOR_SET]    Script Date: 08.12.2018 6:59:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_DISTRICT_OR_SECTOR_SET') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_DISTRICT_OR_SECTOR_SET]
GO

/****** Object:  Trigger [AFTER_WEB_DISP_DATA_CHANGE]    Script Date: 10.12.2019 22:30:40 ******/
IF OBJECT_ID('dbo.AFTER_WEB_DISP_DATA_CHANGE') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_WEB_DISP_DATA_CHANGE]
GO

/****** Object:  Trigger [AFTER_APP_CLIENT_ASSIGN]    Script Date: 01.02.2020 22:30:40 ******/
IF OBJECT_ID('dbo.AFTER_APP_CLIENT_ASSIGN') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_APP_CLIENT_ASSIGN]
GO

/****** Object:  Trigger [AFTER_ORDER_ROUTE_BUILD]    Script Date: 06.02.2020 22:30:40 ******/
IF OBJECT_ID('dbo.AFTER_ORDER_ROUTE_BUILD') IS NOT NULL
DROP TRIGGER [dbo].[AFTER_ORDER_ROUTE_BUILD]
GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_RATING_INSERT]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_DRIVER_RATING_INSERT] 
   ON  [dbo].[DRIVER_RATING] 
   AFTER INSERT, DELETE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT,
		@use_rating_levels smallint,
		@use_driver_rating smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_rating_levels = use_rating_levels,
	@use_driver_rating = use_drivers_rating
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if (@db_version>=5 AND @use_rating_levels = 1 AND @use_driver_rating = 1)
	BEGIN
	
		DECLARE @driverId int, @driverRating decimal(18, 5),
			@rating_level smallint, @insertCount int;

		SELECT @driverId = a.driver_id
		FROM inserted a;

		SELECT @insertCount = COUNT(a.driver_id)
		FROM inserted a;
		
		IF @insertCount = 0 BEGIN
			SELECT @driverId = b.driver_id
			FROM deleted b;
		END;
	
		IF (@driverId > 0)
		BEGIN
			SET @driverRating = dbo.GetDriverRating(@driverId);
			SET @rating_level = 0;

			SELECT TOP 1 @rating_level = rating_level 
			FROM RATING_LEVELS
			WHERE rating_start <= @driverRating AND
			rating_end >= @driverRating
			ORDER BY rating_level ASC

			SET @rating_level = ISNULL(@rating_level, 0);

			UPDATE Voditelj 
			SET rating_level = @rating_level
			WHERE BOLD_ID=@driverId;
		END;

	END;

END



GO
/****** Object:  Trigger [dbo].[AFTER_SECTOR_INSERT]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_SECTOR_INSERT] 
   ON  [dbo].[Sektor_raboty] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @newId int; 
	
		SELECT @newId=a.BOLD_ID
		FROM inserted a;
	
		UPDATE Sektor_raboty SET Nomer_sektora = @newId,
		Kod_sektora = CAST(@newId AS varchar(255))
		WHERE BOLD_ID = @newId;
	
	END;

END



GO
/****** Object:  Trigger [dbo].[AFTER_EVENT_UPDATE]    Script Date: 10.05.2019 0:20:42 ******/
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
GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_COORD_UPDATE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_DRIVER_COORD_UPDATE] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @nOldValue int, @newLat varchar(50),
			@newLon varchar(50), @oldLat varchar(50),
			@oldLon varchar(50);

		SELECT @nOldValue=b.BOLD_ID, 
		@newLat=a.last_lat,
		@newLon=a.last_lon,
		@oldLat=b.last_lat,
		@oldLon=b.last_lon
		FROM inserted a, deleted b;
	
		IF ((@newLat <> @oldLat AND ISNULL(@newLat, '') <> '') OR 
			(@newLon <> @oldLon  AND ISNULL(@newLon, '') <> '') )
		BEGIN
			UPDATE Voditelj 
			SET cc_monitoring_upd = 1
			WHERE BOLD_ID=@nOldValue;

			UPDATE Personal
			SET drivers_coord_updated = 1;
		END;

	END;

END


GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_INSERT]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_DRIVER_INSERT] 
   ON  [dbo].[Voditelj] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @newId int, @sectId int,
			@groupId int;

		SELECT TOP 1 @sectId = BOLD_ID FROM Sektor_raboty;
		SELECT TOP 1 @groupId = BOLD_ID FROM Gruppa_voditelei; 
		
	
		SELECT @newId=a.BOLD_ID
		FROM inserted a;
	
		UPDATE Voditelj SET rabotaet_na_sektore = ISNULL(@sectId, -1),
		Nomer_posl_sektora = ISNULL(@sectId, -1),
		otnositsya_k_gruppe = ISNULL(@groupId, -1) 
		WHERE BOLD_ID = @newId;
	
	END;

END


GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_UPDATE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_DRIVER_UPDATE] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int,
		@dont_reset_dr_queue smallint,
		@reset_time_after_dr_assign smallint;
	
	SET @has_dr_changes = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
		@dont_reset_dr_queue=ISNULL(dont_reset_dr_queue,0),
		@reset_time_after_dr_assign = reset_time_after_dr_assign
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
	DECLARE @nOldValue int, @nNewValue int,
		@RSOldValue int, @itsRemoteDr int,
		@NewLaunchValue int, @NewComplValue int,
		@OldLaunchValue int, @OldComplValue int,
		@newSectId int, @oldSectId int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @oldSyncStat int, @newSyncStat INT,
		@oldOrdDate DATETIME, @newOrdDate DATETIME,
		@oldHasAEv smallint, @newHasAEv smallint,
		@aEvCount int, @newRemoteDr int, @dont_restime smallint;
		
	
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
	@newRemoteDr = a.ITS_REMOTE_CLIENT,
	@itsRemoteDr = b.ITS_REMOTE_CLIENT,
	@oldSyncStat = b.SYNC_STATUS,
	@newSyncStat = a.SYNC_STATUS,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki,
	@oldHasAEv = b.has_active_events,
	@newHasAEv = a.has_active_events, -- Get the Old and New values
	@dont_restime = b.dont_reset_time
	FROM inserted a, deleted b;
	
	IF ((@itsRemoteDr=0) OR (1=1))
	BEGIN
	
		IF (@itsRemoteDr<>@newRemoteDr)
		BEGIN
			SET @has_dr_changes = 1;
		END;
	
		IF ((@OldLaunchValue=1) AND
			(@NewLaunchValue<>@OldLaunchValue))
		BEGIN
			SET @has_dr_changes = 1;
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Снялся с перерыва', -1, @order_id, 1;
		END;
		
		IF ((@OldLaunchValue=0) AND
			(@NewLaunchValue<>@OldLaunchValue))
		BEGIN
			SET @has_dr_changes = 1;
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Взял перерыв', -1, @order_id, 1;
		END;
		
		IF ((@oldOnLineValue=1) AND
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
			SET @has_dr_changes = 1;
			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Снятие с линии', -1, @order_id, 1;
		END;
		
		IF ((@oldOnLineValue=0) AND
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
			SET @has_dr_changes = 1;

			IF @dont_restime <> 1 BEGIN
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
				WHERE BOLD_ID=@nOldValue;
			END

			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Постановка на линию', -1, @order_id, 1;
		END;
		
		IF ((@oldOrdDate<>@newOrdDate) OR
			(@NewComplValue<>@OldComplValue))
		BEGIN
			SET @has_dr_changes = 1;
		END;
		
		IF ((@OldComplValue=0) AND
			(@NewComplValue<>@OldComplValue))
		BEGIN

			IF @reset_time_after_dr_assign = 1 BEGIN
                	    UPDATE Voditelj 
			    SET Vremya_poslednei_zayavki = CURRENT_TIMESTAMP 
			    WHERE BOLD_ID=@nOldValue;
            		END;
		
			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
		END;
		
		IF ((@newSectId<>@oldSectId))
		BEGIN
		
			
			
			if (@dont_reset_dr_queue<>1)
			begin
			
				SET @has_dr_changes = 1;
				EXEC InsertFictiveDrOrder @nOldValue, 
				'Перенос на сектор', -1, @order_id, 1;
			
				IF @dont_restime <> 1 BEGIN
					UPDATE Voditelj 
					SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
					WHERE BOLD_ID=@nOldValue;
				END
			end
			else
			begin
				SET @has_dr_changes = 1;
				EXEC InsertFictiveDrOrder @nOldValue, 
				'Перенос на сектор', -1, @order_id, -1;
			end
		
		END;
		
		
		
	END;
	
	IF (@newHasAEv<>@oldHasAEv)
	BEGIN
		
		SET @has_dr_changes = 1;
		
	END;
	
	IF ((@nNewValue<>@RSOldValue)) --OR (@newSyncStat<>@oldSyncStat))
	BEGIN
	
		SET @has_dr_changes = 1;
	
		UPDATE Voditelj 
		SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		WHERE BOLD_ID=@nOldValue;
	END;	
	
	IF (@has_dr_changes>0)
	BEGIN
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	END;
	
	END;

END


GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_WBROADCAST]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
			EXEC SetDriverStatSyncStatus @nOldValue, 1, 0;
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

GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_WORKSTART]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_DRIVER_WORKSTART] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @manual_day_sale int, @count int,
		@all_day_payment decimal(28, 10), @pt_offset int;
	
	SET @manual_day_sale = 0;
	SET @count = 0;
	SET @all_day_payment = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@manual_day_sale = ISNULL(manual_day_sale,0),
	@all_day_payment = ISNULL(day_payment,0),
	@pt_offset = ISNULL(dayli_pay_time_offset,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if ((@db_version>=5) AND (@manual_day_sale=1))
	BEGIN
	
	DECLARE @nOldValue int, @itsRemoteDr int,
		@dr_num int, @day_payment decimal(28, 10),
		@corruptedNew int, @dr_daily_sale smallint,
		@newDrNum int, @corruptedOld int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @paymentCount int,
		@oldOrdDate DATETIME, @newOrdDate DATETIME, @bold_id int,
		@dont_restime smallint, @daily_payment_expire smallint;
		
	
	SELECT @nOldValue=b.BOLD_ID, 
	@dr_num=a.Pozyvnoi,
	@day_payment=ISNULL(a.day_payment, 0),
	@corruptedOld=b.Zanyat_drugim_disp,
	@corruptedNew=a.Zanyat_drugim_disp,
	@dr_daily_sale=a.manual_day_sale,
	@newDrNum = a.Pozyvnoi,
	@newOnLineValue = a.V_rabote,
	@oldOnLineValue = b.V_rabote,
	@itsRemoteDr = a.ITS_REMOTE_CLIENT,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki, -- Get the Old and New values
	@dont_restime = b.dont_reset_time,
	@daily_payment_expire = a.daily_payment_expire
	FROM inserted a, deleted b;

		IF (@newOnLineValue<>@oldOnLineValue) AND (@dont_restime = 1)
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			WHERE BOLD_ID=@nOldValue;
		END

		IF ((@newOnLineValue<>@oldOnLineValue) AND 
			(@newOnLineValue=1)) BEGIN

		    UPDATE Voditelj SET last_status_query_time = GETDATE()
		    WHERE BOLD_ID = @nOldValue;
		END;
		
		IF (((@newOnLineValue<>@oldOnLineValue) AND 
			(@newOnLineValue=1)) or 
			((@corruptedNew<>@corruptedOld) AND 
			(@corruptedNew=1)))
		BEGIN
		
				--проверка насройки отчисления по данному водителю
				IF (@dr_daily_sale=1 AND ((@day_payment>0) or (@all_day_payment>0)))
				BEGIN
					--проверка актуальности времени
					--проверка отчислений в эти сутки
					IF (@day_payment<=0) BEGIN
						SET @day_payment=@all_day_payment;
					END
					SET @paymentCount=0;
					DECLARE @edate datetime, @temp_date datetime, @last_14hours_count int;

					
					IF @daily_payment_expire > 0 BEGIN
						SET @daily_payment_expire = -@daily_payment_expire
					END ELSE
					BEGIN
						SET @daily_payment_expire = -24
					END;

					SET @temp_date = DATEADD(hour, @daily_payment_expire, GETDATE());
					SELECT @last_14hours_count=COUNT(*) FROM Vyruchka_ot_voditelya vv
					WHERE vv.Pozyvnoi=@newDrNum and (vv.Data_postupleniya>@temp_date) and 
					(vv.Data_postupleniya<GETDATE()) and vv.ITS_DAYLY=1;
					--if()
					--set @edate = DATEADD(minute,-@pt_offset,GETDATE());
					IF (@last_14hours_count=0) 
					BEGIN
					set @edate = GETDATE();
					SELECT @paymentCount=COUNT(*) FROM Vyruchka_ot_voditelya vv
					WHERE vv.Pozyvnoi=@newDrNum and CAST(vv.Data_postupleniya as date)=CAST(@edate as DATE)
					and vv.ITS_DAYLY=1;
					--выставление признака необходимости отчисления
					IF (@paymentCount=0 OR @daily_payment_expire > -24) 
					BEGIN
                        DECLARE @uname varchar(255);
						set @uname=SUSER_NAME();
						DECLARE @desc varchar(255);
						set @desc='Водитель '+CAST(@dr_num as varchar(20))+' должен оплатить сутки! '+CAST(@edate as varchar(50));
					    UPDATE Voditelj SET daily_paym_status=1, online_set_uname=@uname,
					    paym_check_date=@edate WHERE BOLD_ID=@nOldValue;
					    IF (@itsRemoteDr=0) BEGIN
							EXEC InsertEvent3 7, -1, @nOldValue, -1, 
								@edate, @desc, '',
								'', @dr_num, '',
								'', 1, @uname, @day_payment, @count = @count OUTPUT;
						END
					END;
					END;
				END;

			    
		
		END;
	
	END;

END

GO
/****** Object:  Trigger [dbo].[AFTER_INCOME_INSERT]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_INCOME_INSERT] 
   ON  [dbo].[Vyruchka_ot_voditelya] 
   AFTER INSERT
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_dr_balance_counter int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_dr_balance_counter=ISNULL(use_dr_balance_counter,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_dr_balance_counter>0))
	BEGIN

	DECLARE @nOldValue int, @summNewValue decimal(28,10), 
		@pNewValue INT;
		
		
	SELECT @nOldValue=a.BOLD_ID,
	@summNewValue=a.Summa,
	@pNewValue=a.Pozyvnoi
	FROM inserted a

	IF ((@pNewValue>0) AND (@summNewValue<>0))
	BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+@summNewValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_INCOME_UPDATE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_INCOME_UPDATE] 
   ON  [dbo].[Vyruchka_ot_voditelya] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_dr_balance_counter int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_dr_balance_counter=ISNULL(use_dr_balance_counter,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_dr_balance_counter>0))
	BEGIN

	DECLARE @nOldValue int, @summNewValue decimal(28,10), 
		@summOldValue decimal(28,10), @pNewValue INT,
		@pOldValue int;
		
		
	SELECT @nOldValue=b.BOLD_ID,
	@summNewValue=a.Summa,
	@summOldValue=b.Summa,
	@pNewValue=a.Pozyvnoi,
	@pOldValue=b.Pozyvnoi
	FROM inserted a, deleted b

	IF (((@pNewValue<>@pOldValue) OR (@summNewValue<>@summOldValue)) 
		AND (@pNewValue>0))
	BEGIN
		IF (@pNewValue=@pOldValue)
		BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+(@summNewValue-@summOldValue) 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
		END
		ELSE
		BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+@summNewValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE-@summOldValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pOldValue;
		END
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_COORD_UPDATE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_COORD_UPDATE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT,
	@auto_assign_driver_by_coords smallint,
	@aass_driver_max_radius int, @count int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@auto_assign_driver_by_coords = auto_assign_driver_by_coords,
	@aass_driver_max_radius = aass_driver_max_radius
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @nOldValue int, @newClLat varchar(50),
			@newClLon varchar(50), @oldClLat varchar(50),
			@oldClLon varchar(50), @newAdrLat varchar(50),
			@newAdrLon varchar(50), @oldAdrLat varchar(50),
			@oldAdrLon varchar(50), @cnt int;

		SELECT @nOldValue=b.BOLD_ID, 
		@newClLat=ISNULL(a.rclient_lat, ''),
		@newClLon=ISNULL(a.rclient_lon, ''),
		@oldClLat=ISNULL(b.rclient_lat, ''),
		@oldClLon=ISNULL(b.rclient_lon, ''),
		@newAdrLat=ISNULL(a.adr_detect_lat, ''),
		@newAdrLon=ISNULL(a.adr_detect_lon, ''),
		@oldAdrLat=ISNULL(b.adr_detect_lat, ''),
		@oldAdrLon=ISNULL(b.adr_detect_lon, '')
		FROM inserted a, deleted b;
	
		IF ((@newClLat <> @oldClLat AND @newClLat <> '') OR 
			(@newClLon <> @oldClLon  AND @newClLon <> '') OR 
			(@newAdrLat <> @oldAdrLat  AND @newAdrLat <> '') OR 
			(@newAdrLon <> @oldAdrLon  AND @newAdrLon <> '') )
		BEGIN
			UPDATE Zakaz 
			SET is_coordinates_upd = 1
			WHERE BOLD_ID=@nOldValue;

			SELECT @cnt=COUNT(BOLD_ID) FROM Zakaz
			WHERE BOLD_ID=@nOldValue AND Zavershyon = 0 AND
			Arhivnyi = 0 AND (Predvariteljnyi=0 OR Zadeistv_predvarit = 1) 
			AND vypolnyaetsya_voditelem <= 0 AND REMOTE_SET = 0;

			IF @auto_assign_driver_by_coords > 0 AND @aass_driver_max_radius > 0 AND @@ROWCOUNT > 0 BEGIN
				IF (@newClLat <> @oldClLat AND @newClLat <> '') OR 
					(@newClLon <> @oldClLon  AND @newClLon <> '') BEGIN
					EXEC AutoAssignDriverByCoords @nOldValue, @newClLat,
						@newClLon, @count = @count OUTPUT;
				END 
				ELSE IF (@newAdrLat <> @oldAdrLat  AND @newAdrLat <> '') OR 
					(@newAdrLon <> @oldAdrLon  AND @newAdrLon <> '') BEGIN
					EXEC AutoAssignDriverByCoords @nOldValue, @newAdrLat,
						@newAdrLon, @count = @count OUTPUT;
				END;
			END

			UPDATE Personal
			SET orders_coord_updated = 1;
		END;

	END;
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_DRASS_TPLAN]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_DRASS_TPLAN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @autotarif_by_driver smallint,
		@overtar_by_driver smallint, @autotarif_by_tplan smallint,
		@PR_POLICY_ID int, @TARIF_ID int, @OPTION_ID int, 
		@OPTION_STR varchar(255);
		
	SET @OPTION_STR='';
	SET @TARIF_ID=-1;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@autotarif_by_driver=ISNULL(autotarif_by_driver,0),
	@overtar_by_driver=ISNULL(overtar_by_driver,0),
	@autotarif_by_tplan=ISNULL(autotarif_by_tplan,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@autotarif_by_driver=1))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int,
		@newPolicyId int, @oldPolicyId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@newPolicyId=a.PR_POLICY_ID,
	@oldPolicyId=b.PR_POLICY_ID
	FROM inserted a, deleted b;
	
	IF (@newDrId>0)
	BEGIN
	
	IF(@newDrId<>@oldDrId)
	BEGIN
	
		SET @PR_POLICY_ID=ISNULL(dbo.GetDrTariffPlanId(@newDrId),0);
	
		IF (@PR_POLICY_ID>0 AND @PR_POLICY_ID<>@newPolicyId) BEGIN
			UPDATE Zakaz SET PR_POLICY_ID=@PR_POLICY_ID--,
			--TARIFF_ID=-1, OPT_COMB_STR='-' 
			WHERE ((PR_POLICY_ID<=0) OR (@overtar_by_driver=1)) 
			AND (BOLD_ID=@nOldValue);
			
		END;
	
	END;
	
	END;

	END;
	
	
	
END




GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_ASSIGN]    Script Date: 10.05.2019 0:20:42 ******/
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
	
	DECLARE @db_version INT,
		@clsms_offlinedr_assign smallint,
		@use_drivers_rating smallint,
		@rating_bonus decimal(18, 5);
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@clsms_offlinedr_assign = clsms_offlinedr_assign,
	@use_drivers_rating = use_drivers_rating
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int, @ofl_cnt int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b;
	
	IF((@newDrId<>@oldDrId) and (@newDrId>0))
	BEGIN

		IF @use_drivers_rating = 1 BEGIN
			EXEC GetOrderRatingBonus @nOldValue, 0, 0, 0, 
				@rating_bonus = @rating_bonus OUTPUT; 
		END;
	
		UPDATE Zakaz SET dr_assign_date=GETDATE() WHERE BOLD_ID=@nOldValue;
		
		SELECT @ofl_cnt = COUNT(*) FROM Voditelj v WHERE v.BOLD_ID=@newDrId AND v.ITS_REMOTE_CLIENT<>1
		IF (@ofl_cnt>0) AND (@clsms_offlinedr_assign=1) BEGIN
			UPDATE Zakaz SET CLIENT_SMS_SEND_STATE=1
			WHERE BOLD_ID=@nOldValue;
		END;
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ONPLACE_TOBE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ONPLACE_TOBE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@clsms_onplaceto smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@clsms_onplaceto=ISNULL(clsms_onplaceto,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@clsms_onplaceto>0))
	BEGIN

	DECLARE @nOldValue smallint, @nNewValue smallint, 
		@RSNewValue INT, @newDrId int, @newOrderId int;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@RSNewValue=a.REMOTE_SET,
	@nOldValue=b.on_place,
	@nNewValue=a.on_place,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b
	
	IF ((@nNewValue=1) AND (@nNewValue<>@nOldValue) 
		AND (@newDrId>0) AND (@clsms_onplaceto=1))
	BEGIN
		UPDATE Zakaz SET CLIENT_SMS_SEND_STATE=4
		WHERE BOLD_ID=@newOrderId;
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_CL_SMS_STATUS_CHANGE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_CL_SMS_STATUS_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @replace_sms_with_robot smallint,
	@use_call_robot smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@replace_sms_with_robot=replace_sms_with_robot,
	@use_call_robot = use_call_robot 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5))
	BEGIN

	DECLARE @nOldValue smallint, @nNewValue smallint, @newOrderId int,
	@nOldCallValue smallint, @nNewCallValue smallint;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@nOldValue=b.CLIENT_SMS_SEND_STATE,
	@nNewValue=a.CLIENT_SMS_SEND_STATE,
	@nOldCallValue=b.CLIENT_CALL_STATE,
	@nNewCallValue=a.CLIENT_CALL_STATE
	FROM inserted a, deleted b

	IF (@nNewValue<>@nOldValue AND @use_call_robot = 1 AND @nNewValue IN (1,4,3))
	BEGIN
		UPDATE Zakaz SET CLIENT_CALL_STATE = @nNewValue
		WHERE BOLD_ID = @newOrderId;
	END;

	--IF @replace_sms_with_robot = 1 AND
	--(@nNewValue<>@nOldValue AND @nOldValue IN (1,4,3))
	--BEGIN
	--	UPDATE Objekt_vyborki_otchyotnosti 
	--	SET sip1_robot_active_time=CURRENT_TIMESTAMP
	--	WHERE Tip_objekta='for_drivers';
	--END;
	
	IF (@nNewCallValue<>@nOldCallValue AND @nOldCallValue IN (1,4,3))
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti 
		SET sip1_robot_active_time=CURRENT_TIMESTAMP
		WHERE Tip_objekta='for_drivers';
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_COMPLETE]    Script Date: 10.05.2019 0:20:42 ******/
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
	@use_dr_bcounter int, @every_order_pay decimal(28,10),
	@dr_dpay decimal(28,10), @all_dr_dpay decimal(28,10), 
	@fix_ord_dpay smallint, @dr_fix_ord_dpay smallint,
	@use_fordbroadcast_priority smallint, 
	@no_percent_before_summ decimal(28,10),
	@no_percent_before_payment decimal(28,10),
	@prize_reward_summ decimal(28,10),
	@use_drivers_rating smallint,
	@base_referral_cashback decimal(18, 5),
	--@base_referral_bonus decimal(18, 5),
	@base_ref_bonus_interval int; 
	--@referral_rbonus_expire int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@min_debet=ISNULL(MIN_DEBET,0),
	@use_dr_bcounter=ISNULL(use_dr_balance_counter,0),
	@every_order_pay=Kolich_vyd_benzina,
	@fix_ord_dpay=fix_order_pay_with_daily_pay,
	@all_dr_dpay=day_payment,
	@use_fordbroadcast_priority = use_fordbroadcast_priority,
	@no_percent_before_summ = no_percent_before_summ,
	@no_percent_before_payment = no_percent_before_payment,
	@prize_reward_summ = prize_reward_summ,
	@use_drivers_rating = use_drivers_rating,
	@base_referral_cashback = base_referral_cashback,
	--@base_referral_bonus = base_referral_bonus,
	@base_ref_bonus_interval = base_ref_bonus_interval
	--@referral_rbonus_expire = referral_rbonus_expire
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	DECLARE @nOldValue int, @completeNewValue int, 
		@completeOldValue INT, @NewSyncValue INT,
		@summValue decimal(28,10), @newDrId int, @dr_num int,
		@taxSumm decimal(28,10), @priseNum int,
		@bonusUse decimal(28,10),
		@driver_rating_diff decimal(18, 5),
		@driver_rating_expire_date datetime,
		@driver_rating_bonus_code varchar(255),
		@referral_driver_id int,
		@referral_set_date datetime,
		@expire_date datetime,
		@tax_percent decimal(18, 5), 
		@fix_payment decimal(18, 5), --@every_order_pay=Kolich_vyd_benzina
		@no_percent_max_summ decimal(18, 5), --@no_percent_before_summ = no_percent_before_summ
		@no_percent_ms_payment decimal(18, 5); --@no_percent_before_payment = no_percent_before_payment

	SET @tax_percent = 0;
	SET @fix_payment = 0;
	SET @no_percent_max_summ = 0;
	SET @no_percent_ms_payment = 0;

	EXEC dbo.GetDailyTaxParams @tax_percent = @tax_percent OUTPUT, @fix_payment = @fix_payment OUTPUT, 
		@no_percent_max_summ = @no_percent_max_summ OUTPUT,
		@no_percent_ms_payment = @no_percent_ms_payment OUTPUT;

	IF @no_percent_max_summ > 0 AND @no_percent_ms_payment > 0 BEGIN
		SET @no_percent_before_summ = @no_percent_max_summ;
		SET @no_percent_before_payment = @no_percent_ms_payment;
	END;

	IF @fix_payment > 0 BEGIN
		SET @every_order_pay = @fix_payment;
	END;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@completeNewValue=a.Zavershyon,
	@completeOldValue=b.Zavershyon,
	@summValue=a.Uslovn_stoim,
	@newDrId=a.vypolnyaetsya_voditelem,
	@dr_num=a.Pozyvnoi_ustan,
	@priseNum = a.Nomer_skidki,
	@bonusUse = a.bonus_use,
	@driver_rating_diff = a.driver_rating_diff,
	@driver_rating_expire_date = a.driver_rating_expire_date,
	@driver_rating_bonus_code = a.driver_rating_bonus_code
	FROM inserted a, deleted b

	IF (@summValue IS NULL)
	BEGIN
		UPDATE Zakaz SET Uslovn_stoim=0 WHERE BOLD_ID=@nOldValue;
	END
	
	SET @summValue=ISNULL(@summValue,0);

	IF ((@db_version>=5) AND (@completeNewValue=1) AND (@completeNewValue<>@completeOldValue) 
		AND (@newDrId>0) and (@summValue > 0) )
	BEGIN
		EXEC CalcBonusSumm @nOldValue, 1, @bonusUse = @bonusUse OUTPUT;
	END;

	IF((@db_version>=5) AND (@use_dr_bcounter=1))
	BEGIN

	IF ((@completeNewValue=1) AND (@completeNewValue<>@completeOldValue) 
		AND (@newDrId>0) and (@summValue>0) )
	BEGIN
	 
		SELECT @dr_fix_ord_dpay=fix_order_pay_with_daily_pay,
			@dr_dpay=day_payment, @referral_driver_id = ISNULL(referral_driver_id, 0),
			@referral_set_date = referral_set_date
		FROM Voditelj
		WHERE BOLD_ID=@newDrId;

		SET @taxSumm = 0;
		IF @no_percent_before_summ > 0 
			AND @no_percent_before_summ >= @summValue 
			AND @summValue > 0 
			BEGIN
				SET @taxSumm = @no_percent_before_payment;
			END 
		ELSE
			BEGIN
				SET @taxSumm = @summValue*dbo.GetDrTakePercent(@dr_num, @tax_percent);
			END

		IF @priseNum > 0 BEGIN
			SET @taxSumm = @taxSumm - @prize_reward_summ;
		END

		IF @bonusUse > 0 BEGIN
			SET @taxSumm = @taxSumm - @bonusUse;
		END;

		IF DATEADD(HOUR, @base_ref_bonus_interval, @referral_set_date) > GETDATE() AND
			@referral_set_date <= GETDATE() AND @referral_driver_id > 0 AND 
			@base_ref_bonus_interval > 0
		BEGIN
			--IF @base_referral_bonus > 0 AND @referral_rbonus_expire > 0 
			--BEGIN
			--	SET @expire_date = DATEADD(MINUTE, @referral_rbonus_expire, GETDATE());
			--	EXEC InsertDriverRating @referral_driver_id, @expire_date, 
			--		'referral', @base_referral_bonus, 1;
			--END;

			IF @base_referral_cashback > 0 BEGIN
				UPDATE Voditelj SET DRIVER_BALANCE = DRIVER_BALANCE + @base_referral_cashback 
				WHERE BOLD_ID = @referral_driver_id AND use_dyn_balance = 1;
			END;
		END;

		IF @driver_rating_diff > 0 AND @use_drivers_rating = 1 AND 
			@driver_rating_expire_date > GETDATE()
		BEGIN
			EXEC InsertDriverRating @newDrId, @driver_rating_expire_date, 
				@driver_rating_bonus_code, @driver_rating_diff, 1;
		END;

		UPDATE Voditelj SET DRIVER_BALANCE=
		DRIVER_BALANCE-@taxSumm 
		WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		IF (@every_order_pay>0) and not (((@all_dr_dpay>0) OR (@dr_dpay>0)) and ((@fix_ord_dpay=0) or (@dr_fix_ord_dpay=0)))
		BEGIN
			UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE-@every_order_pay 
			WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		END

	END;

	IF (@completeNewValue=1) AND (@completeNewValue<>@completeOldValue) BEGIN
		IF (@use_fordbroadcast_priority = 1)
		BEGIN
		    DELETE FROM DR_ORD_PRIORITY WHERE order_id=@nOldValue;
			--EXEC RefreshDrOrdPriorityBroadcasts;
		END;
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_DISTRICT_OR_SECTOR_SET]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_DISTRICT_OR_SECTOR_SET] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_priority int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_priority=ISNULL(use_dr_priority,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_priority>0))
	BEGIN

	DECLARE @idValue int, @newDSIDValue int, 
		@oldDSIDValue INT, @newDIDlValue INT,
		@oldDIDValue int, @companyId int;
			
	SELECT @idValue=b.BOLD_ID, 
	@newDSIDValue=a.detected_sector,
	@oldDSIDValue=b.detected_sector,
	@newDIDlValue=a.district_id,
	@oldDIDValue=b.district_id,
	@companyId = b.company_id
	FROM inserted a, deleted b

	IF @companyId < 0 BEGIN
		IF (@newDIDlValue > 0 AND @newDIDlValue <> @oldDIDValue)
		BEGIN
			SELECT TOP 1 @companyId = ds.company_id FROM DISTRICTS ds 
			WHERE ds.id = @newDIDlValue;
			UPDATE Zakaz SET company_id = @companyId WHERE BOLD_ID = @idValue;
		END
		ELSE IF (@newDSIDValue > 0 AND @newDSIDValue <> @oldDSIDValue)
		BEGIN
			SELECT TOP 1 @companyId = ws.company_id FROM Sektor_raboty ws 
			WHERE ws.BOLD_ID = @newDSIDValue;
			UPDATE Zakaz SET company_id = @companyId WHERE BOLD_ID = @idValue;
		END;
	END;

	END;
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_FIXTIMESET]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_ORDER_FIXTIMESET] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@recalc_on_timeset smallint,
	@ftime_tariff decimal(28,10),
	@tax_tariff decimal(28,10);
	
	SET @recalc_on_timeset=0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@recalc_on_timeset=ISNULL(recalc_on_timeset,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@recalc_on_timeset=1))
	BEGIN
	
		DECLARE @oldfixed_time int, @newfixed_time int,
			@oldtm_distance int, @newtm_distance int, 
			@newOrderId INT, @dr_id int, @ppolicy_id int,
			@otar_id int, @oopts_str varchar(255);
			
		SELECT @oldfixed_time=b.fixed_time, 
		@newfixed_time=a.fixed_time,
		@oldtm_distance=b.tm_distance,
		@newtm_distance=a.tm_distance,
		@newOrderId=a.BOLD_ID,
		@dr_id=a.vypolnyaetsya_voditelem,
		@ppolicy_id=a.PR_POLICY_ID,
		@otar_id=a.TARIFF_ID,
		@oopts_str=a.OPT_COMB_STR
		FROM inserted a, deleted b
		
		if(@otar_id>0)
		begin
			SELECT @ftime_tariff = dbo.GetTarTimeTariff(@otar_id);
			SELECT @tax_tariff = dbo.GetTarTaxTariff(@otar_id);
		end
		else
		begin
			SELECT @ftime_tariff = dbo.GetDrTimeTariff(@dr_id);
			SELECT @tax_tariff = dbo.GetDrTaxTariff(@dr_id);
		end

		IF ((@oldfixed_time<>@newfixed_time) AND (@ftime_tariff>0) AND (@newfixed_time>0))
		BEGIN
			UPDATE Zakaz SET fixed_summ=@newfixed_time*@ftime_tariff 
			WHERE BOLD_ID=@newOrderId;
		END;
		
		IF ((@oldtm_distance<>@newtm_distance) AND (@tax_tariff>0) AND (@newtm_distance>0))
		BEGIN
			UPDATE Zakaz SET tm_summ=@newtm_distance*@tax_tariff/1000
			WHERE BOLD_ID=@newOrderId;
		END;

	END;
	
	
	
END




GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_INSERT]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_INSERT] 
   ON  [dbo].[Zakaz] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version int, @prize_reserved_limit smallint, 
	@lock_reserv_on_limit smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@prize_reserved_limit = prize_reserved_limit,
	@lock_reserv_on_limit = lock_reserv_on_limit 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN	
		
		DECLARE @newId INT, @nNewValue int, 
		@order_count int, @NewArhValue int, 
		@NewComplValue int, @newDrId int,
		@dr_sect int, @newEndSect int, 
		@endSectNum int, @newPhone varchar(255), 
		@newAdr varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@newDrNum int,
		@prise_only_online smallint,
		@rclient_id int;
		
		SET @view_bonus=0;
		SET @view_ab_bonus=0;
		SET @bonus_count=0;
		SET @ab_bonus_count=0;
		SET @use_ab_account=0;
	
		SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
			@view_ab_bonus=ISNULL(view_ab_bonuses,0),
			@use_ab_account = ISNULL(use_ab_account,0),
			@prise_only_online = prise_only_online 
		FROM Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';
		
		SELECT @newId=a.BOLD_ID, 
		@nNewValue=a.REMOTE_SET,
		@NewArhValue=a.Arhivnyi,
		@NewComplValue=a.Zavershyon,
		@newDrId = a.vypolnyaetsya_voditelem,
		@newEndSect = a.konechnyi_sektor_raboty,
		@newPhone = a.Telefon_klienta,
		@newAdr = a.Adres_vyzova_vvodim,
		@newINum = a.Adres_okonchaniya_zayavki,
		@newDrNum = ISNULL(a.REMOTE_DRNUM,0),
		@rclient_id = a.rclient_id
		FROM inserted a
		
		UPDATE Zakaz
		SET Nachalo_zakaza_data=GETDATE()
		WHERE BOLD_ID=@newId;

		IF @nNewValue=100 
		BEGIN
			DELETE FROM ORDER_ACCEPTING WHERE 
			ORDER_ACCEPTING.ORDER_ID=@newId;
		END;
	
		DECLARE @inum_count int, @inum_int int,
			@inum_phone varchar(255), @inum_adr varchar(255);
	
		IF ((ISNULL(@newINum,'')<>'') AND (@use_ab_account>0))
		BEGIN
		
			IF (ISNUMERIC(@newINum)=1)
			BEGIN
				SET @inum_int = CAST(@newINum AS int);
				
				SET @inum_int = ISNULL(@inum_int,-1);
				
				SELECT @inum_count=COUNT(*)
				FROM Persona
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент';
				
				IF (@inum_count>0)
				BEGIN
				
					--возможно использ доп усл в запросе???
					UPDATE Persona 
					SET Dom=Dom+1 
					WHERE Korpus=@inum_int AND 
					Elektronnyi_adres='Индивидуальный клиент' AND 
					(RESERVED_PRESENTS < @prize_reserved_limit OR @lock_reserv_on_limit <= 0 
					OR @prize_reserved_limit <= 0);
				
					SELECT TOP 1
					@inum_phone=Rabochii_telefon,
					@inum_adr=Ulica,
					@ab_bonus_count=Dom
					FROM Persona
					WHERE Korpus=@inum_int AND 
					Elektronnyi_adres='Индивидуальный клиент';
					
					SET @bonus_num=0;
					SET @inum_phone = ISNULL(@inum_phone,'');
					SET @inum_adr = ISNULL(@inum_adr,'');
					SET @ab_bonus_count = ISNULL(@ab_bonus_count,0);
					
					if ((@view_ab_bonus>0) AND 
						(@ab_bonus_count>0) and
						(@rclient_id > 0 OR @prise_only_online <> 1))
					begin
						SELECT @bonus_num=
							dbo.GetDiscountNumOnOrderCount
							(@ab_bonus_count);
					end;
					
					SET @bonus_num=ISNULL(@bonus_num,0);
					
					if ((ISNULL(@newPhone,'')='') AND 
						NOT (ISNULL(@inum_phone,'')=''))
					BEGIN
						UPDATE Zakaz 
						SET Telefon_klienta=@inum_phone
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
					
					if (NOT ISNULL(@newAdr,'')='')
					BEGIN
						SET @inum_adr=@newAdr;
					END;
					
					if ( ((ISNULL(@newAdr,'')='') AND 
						NOT (ISNULL(@inum_adr,'')='')) OR 
						(@bonus_num>0))
					BEGIN
						UPDATE Zakaz 
						SET Adres_vyzova_vvodim=@inum_adr,
							Nomer_skidki=@bonus_num
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
					
				END;
					
			END;
			
		END;
		
		DECLARE @dict_adr varchar(255);
		SET @dict_adr='';
		SET @inum_adr='';
		SET @inum_count=0;
		SET @inum_int=0;
	
		IF ((ISNULL(@newPhone,'')<>'') OR 
			(ISNULL(@newAdr,'')<>''))
		BEGIN
			UPDATE Zakaz 
			SET Nachalo_zakaza_data=CURRENT_TIMESTAMP,
				Data_podachi=CURRENT_TIMESTAMP
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			if (ISNULL(@newPhone,'')<>'')
			begin
						
				IF(NOT (ISNULL(@newPhone,'')=''))
				BEGIN
				
					DECLARE @bad_count int,
						@bad_adr varchar(255);
						
					SET @bad_adr='';
				
					SELECT @bad_count=COUNT(*)	
					FROM Plohie_klienty 
					WHERE Telefon_klienta=@newPhone;
					
					IF (@bad_count>0)
					BEGIN
					
						SELECT TOP 1 @bad_adr=Adres_vyzova_vvodim	
						FROM Plohie_klienty 
						WHERE Telefon_klienta=@newPhone;
						
						SET @bad_adr=ISNULL(@bad_adr,'');
					
						UPDATE Zakaz 
						SET Nomer_skidki=-1000,
							Adres_vyzova_vvodim=@bad_adr
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
				
					UPDATE Sootvetstvie_parametrov_zakaza
					SET Summarn_chislo_vyzovov=
						Summarn_chislo_vyzovov+1
					WHERE Telefon_klienta=@newPhone;
					
					IF ((@use_ab_account>0) AND 
						(ISNULL(@newINum,'')=''))
					BEGIN
					
						SELECT @inum_count=COUNT(*)
						FROM Persona
						WHERE Rabochii_telefon=@newPhone AND 
						Elektronnyi_adres='Индивидуальный клиент';
						
						IF (@inum_count>0)
						BEGIN
						
							SELECT TOP 1
							@inum_adr=Ulica,
							@inum_int=Korpus
							FROM Persona
							WHERE Rabochii_telefon=@newPhone AND 
							Elektronnyi_adres='Индивидуальный клиент';
							
							SET @inum_int=ISNULL(@inum_int, 0);
							
							IF (@inum_int>0)
							BEGIN
								if ((NOT ISNULL(@newAdr,'')='') OR 
									(ISNULL(@inum_adr,'')='')) 
									
								BEGIN
									UPDATE Zakaz 
									SET Adres_okonchaniya_zayavki=@inum_int
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@inum_adr),
										Adres_okonchaniya_zayavki=@inum_int
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END;
							
						END;
						
					END;
				
					IF ((@inum_count=0) OR (ISNULL(@inum_adr,'')='') 
						OR (@use_ab_account<=0) OR (@inum_int<=0))
					BEGIN
					
						SELECT @ordDictItCount=COUNT(*)
						FROM Sootvetstvie_parametrov_zakaza
						WHERE Telefon_klienta=@newPhone;
							
						IF(@ordDictItCount>0)
						BEGIN
						
							SELECT TOP 1 @bonus_count=Summarn_chislo_vyzovov,
								@dict_adr=Adres_vyzova_vvodim
							FROM Sootvetstvie_parametrov_zakaza
							WHERE Telefon_klienta=@newPhone;
							
							SET @bonus_num=0;
							SET @bonus_count=ISNULL(@bonus_count, 0);
							SET @dict_adr=ISNULL(@dict_adr, '---');
						
							if ((@view_bonus>0) AND 
								(@bonus_count>0) and 
								@newPhone=REPLACE(@newPhone,'Фиктивная','') and
								(@rclient_id > 0 OR @prise_only_online <> 1))
							begin
								SELECT @bonus_num=
									dbo.GetDiscountNumOnOrderCount
									(@bonus_count);
							end;
							
							IF ((@bad_count>0) AND (ISNULL(@bonus_num,0)=0))
							BEGIN
								SET @bonus_num=-1000;
							END;
							
							SET @bonus_num=ISNULL(@bonus_num,0);
							
							if (@view_bonus>0)
							BEGIN
								if ((NOT ISNULL(@newAdr,'')='') OR 
									(ISNULL(@dict_adr,'')=''))
								BEGIN
									UPDATE Zakaz 
									SET Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
										Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END
							ELSE
							BEGIN
								if ((ISNULL(@newAdr,'')='') AND 
								(ISNULL(@inum_adr,'')='') AND 
								((ISNULL(@dict_adr,'')<>'') OR 
								(ISNULL(@bonus_num,0)<>0) ) )
								BEGIN
									IF (@inum_count=0) 
									BEGIN
										UPDATE Zakaz 
										SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
										Nomer_skidki=@bonus_num
										FROM Zakaz JOIN inserted i
										ON Zakaz.BOLD_ID=i.BOLD_ID;
									END
									ELSE
									BEGIN
										UPDATE Zakaz 
										SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr)
										FROM Zakaz JOIN inserted i
										ON Zakaz.BOLD_ID=i.BOLD_ID;
									END;
								END;
							END;
							
						END;
								
					END;
				
				
				END;	
					
			end;
			
			if (ISNULL(@newAdr,'')<>'')
			BEGIN
				if((ISNULL(@newPhone,'')<>'') AND
					(ISNULL(@newAdr,'')<>''))
				BEGIN
					SELECT @ordDictItCount=COUNT(*)
					FROM Sootvetstvie_parametrov_zakaza
					WHERE Telefon_klienta=@newPhone;
					
					IF(@ordDictItCount=0)
					BEGIN
						EXEC InsertNewOrderDictItem 
							@newPhone, @newAdr,
							1, @ordDictItCount;
					END;
					
				END;
			END;
			
		END;
		
		UPDATE Personal SET EstjVneshnieManip=1;
	END;	

END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_INSERT_PRIORITY]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_INSERT_PRIORITY] 
   ON  [dbo].[Zakaz] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version int, @use_fordbroadcast_priority smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_fordbroadcast_priority = use_fordbroadcast_priority 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5 AND @use_fordbroadcast_priority=1)
	BEGIN	

	    EXEC DecrementDrOrdPriorities 0;
		
		DECLARE @CURSOR cursor, @DRID int, @ORDID int, @priority int;
				
		SELECT BOLD_ID FROM Voditelj;
		IF @@ROWCOUNT>0
		BEGIN

			SELECT @ORDID=a.BOLD_ID
			FROM inserted a

			SET @CURSOR  = CURSOR SCROLL
			FOR SELECT BOLD_ID, [Priority] FROM Voditelj;
					
			/*Открываем курсор*/
			OPEN @CURSOR
			/*Выбираем первую строку*/
			FETCH NEXT FROM @CURSOR INTO @DRID, @priority;
			/*Выполняем в цикле перебор строк*/
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO DR_ORD_PRIORITY (driver_id, order_id, [priority]) VALUES(@DRID, @ORDID, @priority);
				FETCH NEXT FROM @CURSOR INTO @DRID, @priority;
			END
			CLOSE @CURSOR
		END
	END;	

END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_INUM]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_INUM] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version int, @prize_reserved_limit smallint, 
	@lock_reserv_on_limit smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@prize_reserved_limit = prize_reserved_limit,
	@lock_reserv_on_limit = lock_reserv_on_limit 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue int, @order_count int,
		@NewArhValue int, @NewComplValue int,
		@OldArhValue int, @OldComplValue int,
		@newDrId int, @oldDrId int,
		@oldDiscount int, @oldSpec int,
		@dr_sect int, @newEndSect int, 
		@oldEndSect int, @endSectNum int,
		@oldPhone varchar(255), @newPhone varchar(255),
		@oldAdr varchar(255), @newAdr varchar(255),
		@oldINum varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@old_bonus_num int,
		@newDrNum int, @oldDrNum int,
		@prise_only_online smallint,
		@rclient_id int;
		
	SET @view_bonus=0;
	SET @view_ab_bonus=0;
	SET @bonus_count=0;
	SET @ab_bonus_count=0;
	SET @use_ab_account=0;
	
	SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
		@view_ab_bonus=ISNULL(view_ab_bonuses,0),
		@use_ab_account = ISNULL(use_ab_account,0),
		@prise_only_online = prise_only_online 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@NewArhValue=a.Arhivnyi,
	@NewComplValue=a.Zavershyon,
	@OldArhValue=b.Arhivnyi,
	@OldComplValue=b.Zavershyon,
	@newDrId = a.vypolnyaetsya_voditelem,
	@oldDrId = b.vypolnyaetsya_voditelem,
	@oldDiscount = b.Nomer_skidki,
	@oldSpec = b.Slugebnyi,
	@newEndSect = a.konechnyi_sektor_raboty,
	@oldEndSect = b.konechnyi_sektor_raboty,
	@newPhone = a.Telefon_klienta,
	@oldPhone = b.Telefon_klienta,
	@newAdr = a.Adres_vyzova_vvodim,
	@oldAdr = b.Adres_vyzova_vvodim,
	@newINum = a.Adres_okonchaniya_zayavki,
	@oldINum = b.Adres_okonchaniya_zayavki,
	@old_bonus_num = ISNULL(b.Nomer_skidki,0),
	@newDrNum = ISNULL(a.REMOTE_DRNUM,0), 
	@oldDrNum = ISNULL(b.REMOTE_DRNUM,0), -- Get the Old and New values
	@rclient_id = a.rclient_id
	FROM inserted a, deleted b

	IF @nNewValue=100 
	BEGIN
		DELETE FROM ORDER_ACCEPTING WHERE 
		ORDER_ACCEPTING.ORDER_ID=@nOldValue;
	END;
	
	--ORDER_NO_REM_STATUS = 0;ORDER_INDIVID_TAKE = 1;
	--ORDER_SECTOR_PUBLISHING = 2;ORDER_ALL_PUBLISHING = 3;
	--ORDER_PUBLUSHED_WAIT = 4;
	--ORDER_IS_OCCUPED = 5;ORDER_OCCUPED_DENY = 6;
	--ORDER_OCCUPED_ALLOW = 7;ORDER_BUSY = 8;
	--ORDER_ONHAND_ALLOW = 9;ORDER_ONHAND_ACTIVE = 10;
	--ORDER_DISP_CANCEL = 11;ORDER_DISP_CANCEL_DR_INCOURSE = 12;
	--ORDER_DRV_CANCEL = 13;ORDER_DRV_CANCEL_DISP_ALLOW = 14;
	--ORDER_DRV_COMPLETE = 15;ORDER_COMLETE_ALLOW = 16;
	--ORDER_ALLOW_ASK_WAIT = 17;ORDER_ONHAND_ALLOW_ASK_WAIT = 18;
	--ORDER_DISP_CANCEL_ASK_WAIT = 19;ORDER_CLOSE_ERROR = 20;
	--ORDER_DRCANCEL_DENY = 21;ORDER_INWORKING_WAIT = 22;
	--ORDER_ONHAND_ATTEPMT = 23;ORDER_ONHAND_DENY = 24;
	--ORDER_ONHAND_ALLOW_USER_WAIT = 25;ORDER_COMPLETE_ALLOW_USER_WAIT = 26;
	--ORDER_CLOSE_ASK_WAIT = 27;
	--ORDER_ONHAND_ABORT = 28; ORDER_CLOSE = 100;
	
	DECLARE @inum_count int, @inum_int int,
		@inum_phone varchar(255), @inum_adr varchar(255);
	
	IF ((@newINum<>@oldINum) AND (@use_ab_account>0))
	BEGIN
	
		IF (ISNUMERIC(@oldINum)=1)
		BEGIN
			UPDATE Persona 
			SET Dom=Dom-1 
			WHERE Korpus=CAST(@oldINum AS int) AND 
			Elektronnyi_adres='Индивидуальный клиент';
		END;
	
		IF (ISNUMERIC(@newINum)=1)
		BEGIN
			SET @inum_int = CAST(@newINum AS int);
			
			SET @inum_int = ISNULL(@inum_int,-1);
			
			SELECT @inum_count=COUNT(*)
			FROM Persona
			WHERE Korpus=@inum_int AND 
			Elektronnyi_adres='Индивидуальный клиент';
			
			IF (@inum_count>0)
			BEGIN
			
				--возможно использ доп усл в запросе???
				UPDATE Persona 
				SET Dom=Dom+1 
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент' AND 
				(RESERVED_PRESENTS < @prize_reserved_limit OR @lock_reserv_on_limit <= 0 
				OR @prize_reserved_limit <= 0);
			
				SELECT TOP 1
				@inum_phone=Rabochii_telefon,
				@inum_adr=Ulica,
				@ab_bonus_count=Dom
				FROM Persona
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент';
				
				SET @bonus_num=0;
				SET @inum_phone = ISNULL(@inum_phone,'');
				SET @inum_adr = ISNULL(@inum_adr,'');
				SET @ab_bonus_count = ISNULL(@ab_bonus_count,0);
				
				if ((@view_ab_bonus>0) AND 
					(@ab_bonus_count>0) and
					(@rclient_id > 0 OR @prise_only_online <> 1))
				begin
					SELECT @bonus_num=
						dbo.GetDiscountNumOnOrderCount
						(@ab_bonus_count);
				end;
				
				IF (ISNULL(@bonus_num,0)=0)
				BEGIN
					SET @bonus_num=@old_bonus_num;
				END;
				
				if ((ISNULL(@newPhone,'')='') AND 
					NOT (ISNULL(@inum_phone,'')=''))
				BEGIN
					UPDATE Zakaz 
					SET Telefon_klienta=@inum_phone
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
				
				if (NOT ISNULL(@newAdr,'')='')
				BEGIN
					SET @inum_adr=@newAdr;
				END;
				
				if ( ((ISNULL(@newAdr,'')='') AND 
					NOT (ISNULL(@inum_adr,'')='')) OR 
					(@bonus_num>0))
				BEGIN
					UPDATE Zakaz 
					SET Adres_vyzova_vvodim=@inum_adr,
						Nomer_skidki=@bonus_num
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
				
			END;
				
		END;
		
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
		
	END;
	
	
	
	END;
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_PHONE_CHANGE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_PHONE_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@phoneBonus decimal(28,10),
	@newPhone varchar(255),
	@oldPhone varchar(255), @nOldValue int,
	@first_trip_bonus decimal(28, 10), 
	@trip_bonus decimal(28, 10), @bonus_percent decimal(28, 10), 
	@percent_bonus_min_summ decimal(28, 10),
	@auto_set_bonus_value decimal(18, 5);
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@first_trip_bonus = first_trip_bonus, 
	@trip_bonus = trip_bonus, 
	@bonus_percent = bonus_percent, 
	@percent_bonus_min_summ = percent_bonus_min_summ,
	@auto_set_bonus_value = auto_set_bonus_value
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newPhone = ISNULL(a.Telefon_klienta, ''),
	@oldPhone = b.Telefon_klienta
	FROM inserted a, deleted b

	SET @phoneBonus = 0;

	IF ((@db_version>=5) AND (@newPhone <> '') AND 
		(@newPhone <> @oldPhone) AND (@first_trip_bonus > 0  
		OR @trip_bonus > 0 OR 
		(@bonus_percent > 0 AND @percent_bonus_min_summ > 0)))
	BEGIN

		SELECT TOP 1 @phoneBonus = sp.bonus_summ
		FROM Sootvetstvie_parametrov_zakaza sp
		WHERE sp.Telefon_klienta = @newPhone;

		IF @@ROWCOUNT = 1 BEGIN

			SET @phoneBonus = ISNULL(@phoneBonus, 0);

			IF @auto_set_bonus_value < 0 BEGIN
				SET @auto_set_bonus_value = 0;
			END;

			IF @auto_set_bonus_value > 0 AND @auto_set_bonus_value > @phoneBonus
			BEGIN
				SET @auto_set_bonus_value = 0;
			END;

			UPDATE Zakaz SET bonus_all = @phoneBonus,
			bonus_use = @auto_set_bonus_value
			WHERE BOLD_ID = @nOldValue;
		END;

	END;
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_PRIORITY]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_PRIORITY] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_priority int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_priority=ISNULL(use_dr_priority,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_priority>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewComplValue INT,
		@OldComplValue int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldComplValue=b.Zavershyon,
	@NewComplValue=a.Zavershyon
	FROM inserted a, deleted b

	IF ((@nNewValue>0) AND (@nNewValue<100) AND (@RSOldValue=0))
	BEGIN
		INSERT INTO dbo.ORDER_PRIORITY 
		        ( ORDER_ID, PRIORITY )
		VALUES  ( @nOldValue,
		          0  -- PRIORITY - int
		          );
		
	END;
	
	IF ((@NewComplValue>0) AND (@OldComplValue=0))
	BEGIN
		DELETE FROM ORDER_PRIORITY WHERE 
		ORDER_PRIORITY.ORDER_ID=@nOldValue;
	END;

	END;
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_RSTATUS_CHANGE]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_RSTATUS_CHANGE] 
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

	DECLARE @nOldValue smallint, @nNewValue smallint, @newOrderId int;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@nOldValue=b.rclient_status,
	@nNewValue=a.rclient_status
	FROM inserted a, deleted b
	
	IF (@nNewValue<>@nOldValue)
	BEGIN
		UPDATE Zakaz SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		WHERE BOLD_ID=@newOrderId;
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_SDIRECTION]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_SDIRECTION] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@odirect_to_dsect smallint;
	
	SET @odirect_to_dsect=0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@odirect_to_dsect=ISNULL(odirect_to_dsect,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@odirect_to_dsect=1))
	BEGIN
	
		DECLARE @oldDirSectId int, @newDirSectId int, 
			@newOrdDrId INT;
			
		SELECT @oldDirSectId=b.direct_sect_id, 
		@newDirSectId=a.direct_sect_id,
		@newOrdDrId=a.vypolnyaetsya_voditelem
		FROM inserted a, deleted b

		IF ((@newDirSectId>0) AND (@oldDirSectId<>@newDirSectId) 
			AND (@newOrdDrId>0))
		BEGIN
			EXEC SetDriverSector @newOrdDrId, @newDirSectId, 
				0, 1, '';
		END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_SYNC]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_SYNC] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @sync_account int, 
		@clsms_ordground smallint,
		@use_fordbroadcast_priority smallint,
		@use_drivers_rating smallint,
		@rating_bonus decimal(18, 5),
		@early smallint, @early_started smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@sync_account=ISNULL(sync_busy_accounting,0),
	@clsms_ordground=ISNULL(clsms_ordground,0),
	@use_fordbroadcast_priority=use_fordbroadcast_priority,
	@use_drivers_rating = use_drivers_rating 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@sync_account>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewSyncValue INT,
		@OldSyncValue int, @newDrId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem,
	@early = a.is_early,
	@early_started = a.is_started_early
	FROM inserted a, deleted b

	IF ((@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue) 
		AND (@newDrId>0))
	BEGIN
		IF @use_drivers_rating = 1 BEGIN
			EXEC GetOrderRatingBonus @nOldValue, 0, 0, 0, 
				@rating_bonus = @rating_bonus OUTPUT; 
		END;

		EXEC CheckDriverBusy @newDrId;
		EXEC SetDriverStatSyncStatus @newDrId, 1, 0;
	END;
	
	IF ((@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue) 
		AND (@newDrId>0) AND (@clsms_ordground=1)) 
		AND NOT (@early = 1 AND @early_started <> 1)
	BEGIN
		UPDATE Zakaz SET CLIENT_SMS_SEND_STATE=1
		WHERE BOLD_ID=@nOldValue;
	END;

	IF (@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue)
	BEGIN
		IF (@use_fordbroadcast_priority = 1) 
		BEGIN
			DELETE FROM DR_ORD_PRIORITY WHERE order_id=@nOldValue;
		END;
		--EXEC RefreshDrOrdPriorityBroadcasts;
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
	
	
END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_TOPTS]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_TOPTS] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @taropt_accounting int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@taropt_accounting=ISNULL(taropt_accounting,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@taropt_accounting>0))
	BEGIN

	DECLARE @nOldValue int, @newTarValue int, 
		@oldTarValue int, @oldOptsValue varchar(255),
		@newOptsValue varchar(255), @newDrId int,
		@oldTarifPlanId int, @newTarifPlanId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newTarValue=a.TARIFF_ID,
	@oldTarValue=b.TARIFF_ID,
	@oldOptsValue=b.OPT_COMB_STR,
	@newOptsValue=a.OPT_COMB_STR,
	@oldTarifPlanId=b.PR_POLICY_ID,
	@newTarifPlanId=a.PR_POLICY_ID,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b

	IF (((@newTarValue<>@oldTarValue) OR (@newOptsValue<>@oldOptsValue)
			OR (@newTarifPlanId<>@oldTarifPlanId)) 
		AND (@newDrId>0))
	BEGIN
		EXEC SetDriverStatSyncStatus @newDrId, 1, 0;
	END;

	END;
	
	
	
END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_WBROADCAST]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_WBROADCAST] 
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
		@OldSyncValue int, @newDrId int, @oldDrId int,
		@oldSID int, @newSID int, @oldArh int, @newArh int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@oldSID=b.SECTOR_ID,
	@newSID=a.SECTOR_ID,
	@oldArh=b.Arhivnyi,
	@newArh=a.Arhivnyi
	FROM inserted a, deleted b

	IF ( ((@nNewValue<8) AND (@RSOldValue=0) AND (@nNewValue>0) 
		AND (@newDrId<=0))
		OR ((@nNewValue=8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId>0))
		OR ((@nNewValue=0) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId<=0))
		OR ((@nNewValue>0) AND (@nNewValue<8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId<=0) AND (@oldDrId<=0) AND (@oldSID<>@newSID)) 
		OR ((@newArh=1) AND (@newArh<>@oldArh) AND (@RSOldValue>0) 
			AND (@RSOldValue<8) )
		)
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END






GO
/****** Object:  Trigger [dbo].[AFTER_ORDERDEL_WBROADCAST]    Script Date: 10.05.2019 0:20:42 ******/
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

GO
/****** Object:  Trigger [dbo].[AFTER_REMOTE_CLOSING]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_REMOTE_CLOSING] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue int, @order_count int,
		@NewArhValue int, @NewComplValue int,
		@OldArhValue int, @OldComplValue int,
		@newDrId int, @oldDrId int,
		@oldDiscount int, @oldSpec int,
		@dr_sect int, @newEndSect int, 
		@oldEndSect int, @endSectNum int,
		@oldPhone varchar(255), @newPhone varchar(255),
		@oldAdr varchar(255), @newAdr varchar(255),
		@oldINum varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@old_bonus_num int,
		@newDrNum int, @oldDrNum int, @ord_summ DECIMAL(28,10),
		@dont_reset_time smallint,
		@prise_only_online smallint,
		@rclient_id int,
		@dont_reset_que_early_complete smallint,
		@newEarly smallint;
		
	SET @view_bonus=0;
	SET @view_ab_bonus=0;
	SET @bonus_count=0;
	SET @ab_bonus_count=0;
	SET @use_ab_account=0;
	
	SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
		@view_ab_bonus=ISNULL(view_ab_bonuses,0),
		@use_ab_account = ISNULL(use_ab_account,0),
		@prise_only_online = prise_only_online,
		@dont_reset_que_early_complete = dont_reset_que_early_complete
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@NewArhValue=a.Arhivnyi,
	@NewComplValue=a.Zavershyon,
	@OldArhValue=b.Arhivnyi,
	@OldComplValue=b.Zavershyon,
	@newDrId = a.vypolnyaetsya_voditelem,
	@oldDrId = b.vypolnyaetsya_voditelem,
	@oldDiscount = b.Nomer_skidki,
	@oldSpec = b.Slugebnyi,
	@newEndSect = a.konechnyi_sektor_raboty,
	@oldEndSect = b.konechnyi_sektor_raboty,
	@newPhone = a.Telefon_klienta,
	@oldPhone = b.Telefon_klienta,
	@newAdr = a.Adres_vyzova_vvodim,
	@oldAdr = b.Adres_vyzova_vvodim,
	@newINum = a.Adres_okonchaniya_zayavki,
	@oldINum = b.Adres_okonchaniya_zayavki,
	@old_bonus_num = ISNULL(b.Nomer_skidki,0),
	@newDrNum = ISNULL(a.REMOTE_DRNUM,0), 
	@oldDrNum = ISNULL(b.REMOTE_DRNUM,0),
	@ord_summ = ISNULL(a.Uslovn_stoim,0), -- Get the Old and New values
	@rclient_id = a.rclient_id,
	@newEarly = a.is_early
	FROM inserted a, deleted b

	SET @newDrId = ISNULL(@newDrId, 0)
	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @newDrId > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @newDrId;
	END

	IF @nNewValue=100 
	BEGIN
		DELETE FROM ORDER_ACCEPTING WHERE 
		ORDER_ACCEPTING.ORDER_ID=@nOldValue;
	END;
	
	--ORDER_NO_REM_STATUS = 0;ORDER_INDIVID_TAKE = 1;
	--ORDER_SECTOR_PUBLISHING = 2;ORDER_ALL_PUBLISHING = 3;
	--ORDER_PUBLUSHED_WAIT = 4;
	--ORDER_IS_OCCUPED = 5;ORDER_OCCUPED_DENY = 6;
	--ORDER_OCCUPED_ALLOW = 7;ORDER_BUSY = 8;
	--ORDER_ONHAND_ALLOW = 9;ORDER_ONHAND_ACTIVE = 10;
	--ORDER_DISP_CANCEL = 11;ORDER_DISP_CANCEL_DR_INCOURSE = 12;
	--ORDER_DRV_CANCEL = 13;ORDER_DRV_CANCEL_DISP_ALLOW = 14;
	--ORDER_DRV_COMPLETE = 15;ORDER_COMLETE_ALLOW = 16;
	--ORDER_ALLOW_ASK_WAIT = 17;ORDER_ONHAND_ALLOW_ASK_WAIT = 18;
	--ORDER_DISP_CANCEL_ASK_WAIT = 19;ORDER_CLOSE_ERROR = 20;
	--ORDER_DRCANCEL_DENY = 21;ORDER_INWORKING_WAIT = 22;
	--ORDER_ONHAND_ATTEPMT = 23;ORDER_ONHAND_DENY = 24;
	--ORDER_ONHAND_ALLOW_USER_WAIT = 25;ORDER_COMPLETE_ALLOW_USER_WAIT = 26;
	--ORDER_CLOSE_ASK_WAIT = 27;
	--ORDER_ONHAND_ABORT = 28; ORDER_CLOSE = 100;
	
	DECLARE @inum_count int, @inum_int int,
		@inum_phone varchar(255), @inum_adr varchar(255);
	
	DECLARE @dict_adr varchar(255);
	SET @dict_adr='';
	SET @inum_adr='';
	SET @inum_count=0;
	SET @inum_int=0;
	
	IF ((@newPhone<>@oldPhone) OR 
		(@newAdr<>@oldAdr))
	BEGIN
				
		if (@newPhone<>@oldPhone)
		BEGIN
		
			UPDATE Zakaz 
			SET Nachalo_zakaza_data=CURRENT_TIMESTAMP,
				Data_podachi=CURRENT_TIMESTAMP
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			IF(NOT (ISNULL(@oldPhone,'')=''))
			BEGIN
				UPDATE Sootvetstvie_parametrov_zakaza
				SET Summarn_chislo_vyzovov=
				Summarn_chislo_vyzovov-1
				WHERE Telefon_klienta=@oldPhone;
			END;
			
			IF(NOT (ISNULL(@newPhone,'')=''))
			BEGIN
			
				DECLARE @bad_count int,
					@bad_adr varchar(255);
					
				SET @bad_adr='';
			
				SELECT @bad_count=COUNT(*)	
				FROM Plohie_klienty 
				WHERE Telefon_klienta=@newPhone;
				
				IF (@bad_count>0)
				BEGIN
				
					SELECT TOP 1 @bad_adr=Adres_vyzova_vvodim	
					FROM Plohie_klienty 
					WHERE Telefon_klienta=@newPhone;
					
					SET @bad_adr=ISNULL(@bad_adr,'');
				
					UPDATE Zakaz 
					SET Nomer_skidki=-1000,
						Adres_vyzova_vvodim=@bad_adr
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
			
				UPDATE Sootvetstvie_parametrov_zakaza
				SET Summarn_chislo_vyzovov=
					Summarn_chislo_vyzovov+1
				WHERE Telefon_klienta=@newPhone;
				
				IF ((@use_ab_account>0) AND 
					(ISNULL(@oldINum,'')=''))
				BEGIN
				
					SELECT @inum_count=COUNT(*)
					FROM Persona
					WHERE Rabochii_telefon=@newPhone AND 
					Elektronnyi_adres='Индивидуальный клиент';
					
					IF (@inum_count>0)
					BEGIN
					
						SELECT TOP 1
						@inum_adr=Ulica,
						@inum_int=Korpus
						FROM Persona
						WHERE Rabochii_telefon=@newPhone AND 
						Elektronnyi_adres='Индивидуальный клиент';
						
						SET @inum_int=ISNULL(@inum_int, 0);
						
						IF (@inum_int>0)
						BEGIN
							if ((NOT ISNULL(@newAdr,'')='') OR 
								(ISNULL(@inum_adr,'')='')) 
								
							BEGIN
								UPDATE Zakaz 
								SET Adres_okonchaniya_zayavki=@inum_int
								FROM Zakaz JOIN inserted i
								ON Zakaz.BOLD_ID=i.BOLD_ID;
							END
							ELSE
							BEGIN
								UPDATE Zakaz 
								SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@inum_adr),
									Adres_okonchaniya_zayavki=@inum_int
								FROM Zakaz JOIN inserted i
								ON Zakaz.BOLD_ID=i.BOLD_ID;
							END;
						END;
						
					END;
					
				END;
			
				IF ((@inum_count=0) OR (ISNULL(@inum_adr,'')='') 
					OR (@use_ab_account<=0) OR (@inum_int<=0))
				BEGIN
				
					SELECT @ordDictItCount=COUNT(*)
					FROM Sootvetstvie_parametrov_zakaza
					WHERE Telefon_klienta=@newPhone;
						
					IF(@ordDictItCount>0)
					BEGIN
					
						SELECT TOP 1 @bonus_count=Summarn_chislo_vyzovov,
							@dict_adr=Adres_vyzova_vvodim
						FROM Sootvetstvie_parametrov_zakaza
						WHERE Telefon_klienta=@newPhone;
						
						SET @bonus_num=0;
						SET @bonus_count=ISNULL(@bonus_count, 0);
						SET @dict_adr=ISNULL(@dict_adr, '---');
					
						if ((@view_bonus>0) AND 
							(@bonus_count>0) and 
							@newPhone=REPLACE(@newPhone,'Фиктивная','') and
							(@rclient_id > 0 OR @prise_only_online <> 1)) 
						begin
							SELECT @bonus_num=
								dbo.GetDiscountNumOnOrderCount
								(@bonus_count);
						end;
						
						IF ((@bad_count>0) AND (ISNULL(@bonus_num,0)=0))
						BEGIN
							SET @bonus_num=-1000;
						END;
						
						IF (ISNULL(@bonus_num,0)=0)
						BEGIN
							SET @bonus_num=@old_bonus_num;
						END;
						
						if (@view_bonus>0)
						BEGIN
						if ((NOT ISNULL(@newAdr,'')='') OR 
							(ISNULL(@dict_adr,'')=''))
						BEGIN
							UPDATE Zakaz 
							SET Nomer_skidki=@bonus_num
							FROM Zakaz JOIN inserted i
							ON Zakaz.BOLD_ID=i.BOLD_ID;
						END
						ELSE
						BEGIN
							UPDATE Zakaz 
							SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
								Nomer_skidki=@bonus_num
							FROM Zakaz JOIN inserted i
							ON Zakaz.BOLD_ID=i.BOLD_ID;
						END;
						END
						ELSE
						BEGIN
							if ((ISNULL(@newAdr,'')='') AND 
							(ISNULL(@inum_adr,'')='') AND 
							((ISNULL(@dict_adr,'')<>'') OR 
							(ISNULL(@bonus_num,0)<>0) ) )
							BEGIN
								IF (@inum_count=0) 
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
									Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr)
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END;
						END;
						
					END;
							
				END;
			
			
			END;	
				
		end;
		
		if (@newAdr<>@oldAdr)
		BEGIN
		
			if ((ISNULL(@newAdr,'')<>'') and (ISNULL(@oldAdr,'')<>'')
				and (@oldDrId>0))
			EXEC SetDriverStatSyncStatus @oldDrId, 1, 0;
		
			if((ISNULL(@newPhone,'')<>'') AND
				(ISNULL(@newAdr,'')<>''))
			BEGIN
				SELECT @ordDictItCount=COUNT(*)
				FROM Sootvetstvie_parametrov_zakaza
				WHERE Telefon_klienta=@newPhone;
				
				IF(@ordDictItCount=0)
				BEGIN
					EXEC InsertNewOrderDictItem 
						@newPhone, @newAdr,
						1, @ordDictItCount;
				END;
				
			END;
		END;
		
	END;
	
	--IF (@newDrId<>@oldDrId)
	--BEGIN
	--	UPDATE Zakaz 
	--	SET Nachalo_zakaza_data=CURRENT_TIMESTAMP
	--	FROM Zakaz JOIN inserted i
	--	ON Zakaz.BOLD_ID=i.BOLD_ID;
	--END;
	
	IF (@newEndSect<>@oldEndSect)
	BEGIN
	
		SELECT @endSectNum=Nomer_sektora 
		FROM Sektor_raboty
		WHERE BOLD_ID=@newEndSect;
	
		UPDATE Voditelj 
		SET rabotaet_na_sektore=@newEndSect,
			Nomer_posl_sektora = @endSectNum
		WHERE BOLD_ID=@newDrId;
	END;
	
	DECLARE @stat_dr_count int;
	
	IF ((@nNewValue<8) AND (@RSOldValue=8))
	BEGIN
		IF (@oldDrId>0)
		BEGIN
			
			UPDATE Zakaz 
			SET Pozyvnoi_ustan=0, 
			REMOTE_DRNUM=0,
			vypolnyaetsya_voditelem=-1
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			EXEC CheckDriverBusy @oldDrId;
			EXEC SetDriverStatSyncStatus @oldDrId, 1, @stat_dr_count;
		END;	
	END;
	
	IF (((@nNewValue=100 OR @nNewValue=8 
		OR @nNewValue=16 OR @nNewValue=0 OR @nNewValue=26) 
		AND @RSOldValue<>@nNewValue) OR 
		(@newDrId<>@oldDrId) OR 
		(@NewComplValue<>@OldComplValue))
	BEGIN
	
		DECLARE @sdr_id int;
	
		IF ((@nNewValue=8) AND 
			(@oldDrId<=0) AND (@RSOldValue IN (9, 18, 23, 25))
			AND (@newDrId=@oldDrId) AND (@newDrNum>0))
		BEGIN
			SELECT TOP 1 @sdr_id=ISNULL(BOLD_ID,-1)
			FROM Voditelj
			WHERE Pozyvnoi=@newDrNum;
			
			IF (@sdr_id>0)
			BEGIN
				UPDATE Zakaz 
				SET Pozyvnoi_ustan=@newDrNum,
				vypolnyaetsya_voditelem=@sdr_id
				FROM Zakaz JOIN inserted i
				ON Zakaz.BOLD_ID=i.BOLD_ID;
				
				EXEC CheckDriverBusy @sdr_id;
				EXEC SetDriverStatSyncStatus @sdr_id, 1, @stat_dr_count;
			END;	
		END;
	
		IF ((@oldDrId>0) AND (@newDrId<>@oldDrId))
		BEGIN
			EXEC CheckDriverBusy @oldDrId;
			EXEC SetDriverStatSyncStatus @oldDrId, 1, @stat_dr_count;
			
			UPDATE Voditelj SET SYNC_STATUS=1
			WHERE BOLD_ID=@oldDrId;
		END;
		
		IF ((@NewComplValue<>@OldComplValue) AND 
		(@NewComplValue=1))
		BEGIN
		
			--SELECT @dr_sect=rabotaet_na_sektore
			--FROM Voditelj
			--WHERE BOLD_ID=@newDrId;
			
			IF ((@nNewValue>0) AND (@nNewValue<100))
			BEGIN
				UPDATE Zakaz 
				SET REMOTE_SET=100
				FROM Zakaz JOIN inserted i
				ON Zakaz.BOLD_ID=i.BOLD_ID;
			END;
			
			UPDATE Zakaz 
			SET Konec_zakaza_data=CURRENT_TIMESTAMP--,
			--	sektor_voditelya=ISNULL(@dr_sect, -1)
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			
			if ((@oldDiscount>0) OR (@oldSpec=1) OR (@NewArhValue=1))
			BEGIN
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=DATEADD(day,-10,CURRENT_TIMESTAMP),
					DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;
			END
			ELSE
			BEGIN
				if ((@RSOldValue<=8) and (@ord_summ>0))
				BEGIN
				IF ISNULL(@dont_reset_time, 0) <> 1 AND 
					NOT (@newEarly = 1 AND @dont_reset_que_early_complete = 1) BEGIN
					UPDATE Voditelj 
					SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
					WHERE BOLD_ID=@newDrId;
				END

				UPDATE Voditelj 
				SET DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;

				END
				else
				UPDATE Voditelj 
				SET DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;
			END;
		
		END;
		
		--EXEC CheckDriverBusy @oldDrId;
		EXEC CheckDriverBusy @newDrId;
		EXEC SetDriverStatSyncStatus @newDrId, 1, @stat_dr_count;
		
		--UPDATE Voditelj SET SYNC_STATUS=1
		--WHERE BOLD_ID=@newDrId;
	END;
	
	IF (@RSOldValue<>@nNewValue)
	BEGIN
		UPDATE Zakaz 
		SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		FROM Zakaz JOIN inserted i
		ON Zakaz.BOLD_ID=i.BOLD_ID;
	END;
	
	IF ((@NewArhValue=1) AND  
		(@NewArhValue<>@OldArhValue))
	BEGIN
	
		IF (ISNULL(@newPhone,'')<>'') BEGIN
			UPDATE Sootvetstvie_parametrov_zakaza 
			SET Summarn_chislo_vyzovov=Summarn_chislo_vyzovov-1
			WHERE Telefon_klienta=@newPhone;
		END;
	
		IF ((@use_ab_account>0) 
			AND (ISNULL(@newINum,'')<>'')) BEGIN
			UPDATE Persona 
			SET Dom=ISNULL(Dom,0)-1
			WHERE CAST(Korpus AS VARCHAR(255))=@newINum AND 
			Elektronnyi_adres='Индивидуальный клиент';
		END;
		
		IF (@oldDrId>0)
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=DATEADD(day,-10,CURRENT_TIMESTAMP)
			WHERE BOLD_ID=@oldDrId;
		END;
	END;
	
	UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	
	END;
	
END
GO
/****** Object:  Trigger [dbo].[AFTER_TPLAN_ASSGN]    Script Date: 10.05.2019 0:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_TPLAN_ASSGN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @autotarif_by_driver smallint,
		@overtar_by_driver smallint, @autotarif_by_tplan smallint,
		@PR_POLICY_ID int, @TARIF_ID int, @OPTION_ID int, 
		@OPTION_STR varchar(255);
		
	SET @OPTION_STR='';
	SET @TARIF_ID=-1;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@autotarif_by_driver=ISNULL(autotarif_by_driver,0),
	@overtar_by_driver=ISNULL(overtar_by_driver,0),
	@autotarif_by_tplan=ISNULL(autotarif_by_tplan,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@autotarif_by_driver=1))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int,
		@newPolicyId int, @oldPolicyId int,
        	@phone varchar(255), @phoneOptionId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@newPolicyId=a.PR_POLICY_ID,
	@oldPolicyId=b.PR_POLICY_ID,
    	@phone=a.Telefon_klienta
	FROM inserted a, deleted b;
	
	IF (@newDrId>0)
	BEGIN
	
	IF ((@autotarif_by_tplan=1) AND (@newPolicyId>0) AND (@newPolicyId<>@oldPolicyId) )
			BEGIN

                SET @phoneOptionId = ISNULL(@phoneOptionId, -1);
                IF ISNULL(@phone, '') <> '' BEGIN
                    SELECT TOP 1 @phoneOptionId = option_id 
                    FROM Sootvetstvie_parametrov_zakaza
                    WHERE Telefon_klienta = @phone;
                END;
			
			    SELECT ID FROM ORDER_TARIF 
				WHERE PR_POLICY_ID=@newPolicyId AND IF_DEF=1;
			
				IF @@ROWCOUNT>0
				BEGIN
					SELECT TOP 1 @TARIF_ID=ID FROM ORDER_TARIF 
					WHERE PR_POLICY_ID=@newPolicyId AND IF_DEF=1;
				END;
				
				--UPDATE Zakaz SET TARIFF_ID=1,
				--	OPT_COMB_STR='1' 
				--	WHERE (BOLD_ID=@nOldValue);
				
				SET @TARIF_ID = ISNULL(@TARIF_ID,0);
				
				
				DECLARE @CURSOR cursor, @opt_cnt int;
				SET @opt_cnt=0;

                DECLARE @startOfToday datetime, @now datetime, @has_cursor smallint;

	            SET @startOfToday = DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0);
	            SET @now = GETDATE();
                SET @has_cursor = 0;
				
                SELECT ID FROM ORDER_OPTION 
                WHERE PR_POLICY_ID=@newPolicyId AND start_time < end_time 
                AND @now > (@startOfToday + start_time) 
                AND @now < (@startOfToday + end_time);

                IF @@ROWCOUNT>0 BEGIN
                    SET @CURSOR  = CURSOR SCROLL
					FOR SELECT ID FROM ORDER_OPTION 
                    WHERE PR_POLICY_ID=@newPolicyId AND start_time < end_time 
                    AND @now > (@startOfToday + start_time) 
                    AND @now < (@startOfToday + end_time);
                    SET @has_cursor = 1;
                END ELSE BEGIN
                    SELECT ID FROM ORDER_OPTION WHERE IF_DEF=1 
				    AND PR_POLICY_ID=@newPolicyId;
                    IF @@ROWCOUNT>0 BEGIN
                        SET @CURSOR  = CURSOR SCROLL
					    FOR SELECT ID FROM ORDER_OPTION WHERE IF_DEF=1 
					    AND PR_POLICY_ID=@newPolicyId;
                        SET @has_cursor = 1;
                    END;
                END;

				IF @has_cursor>0
				BEGIN
					/*Открываем курсор*/
					OPEN @CURSOR
					/*Выбираем первую строку*/
					FETCH NEXT FROM @CURSOR INTO @OPTION_ID;
					/*Выполняем в цикле перебор строк*/
					WHILE @@FETCH_STATUS = 0
					BEGIN
					    if(@opt_cnt>0)
					    BEGIN
							SET @OPTION_STR=@OPTION_STR+',';
					    END
					    SET @OPTION_STR=@OPTION_STR+CAST(@OPTION_ID as varchar(20));
						SET @opt_cnt=@opt_cnt+1;
						FETCH NEXT FROM @CURSOR INTO @OPTION_ID;
					END
					CLOSE @CURSOR

                    IF @phoneOptionId > 0 BEGIN
                        if(@opt_cnt>0)
					    BEGIN
							SET @OPTION_STR = @OPTION_STR + ',';
					    END;
                        SET @OPTION_STR=@OPTION_STR + CAST(@phoneOptionId as varchar(20));
						SET @opt_cnt=@opt_cnt+1;
                    END;
				END
				ELSE
				BEGIN
                    SET @OPTION_STR='-';
                    IF @phoneOptionId > 0 BEGIN
                        SET @OPTION_STR = CAST(@phoneOptionId as varchar(20));
                    END;
				END;
				
				SET @OPTION_STR=ISNULL(@OPTION_STR,'-');
				IF @TARIF_ID>0 BEGIN
					UPDATE Zakaz SET TARIFF_ID=@TARIF_ID,
					OPT_COMB_STR=@OPTION_STR 
					WHERE (BOLD_ID=@nOldValue);
				END;
				
			END;
	
	END;

	END;
	
	
	
END





GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_WEB_DISP_DATA_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @nOldValue smallint, @nNewValue smallint, @nOldPredvariteljnyiValue int, 
        @nNewPredvariteljnyiValue int, @nOldData_predvariteljnayaValue datetime, 
        @nNewData_predvariteljnayaValue datetime,
        @nOldZadeistv_predvaritValue int, @nNewZadeistv_predvaritValue int,
        @nOldAdres_vyzova_vvodimValue varchar(255), @nNewAdres_vyzova_vvodimValue varchar(255),
        @nOldTelefon_klientaValue varchar(255), @nNewTelefon_klientaValue varchar(255),
        @nOldZavershyonValue int, @nNewZavershyonValue int,
        @nOldArhivnyiValue int, @nNewArhivnyiValue int,
        @nOldUslovn_stoimValue decimal(28, 10), @nNewUslovn_stoimValue decimal(28, 10),
        @nOldPozyvnoi_ustanValue int, @nNewPozyvnoi_ustanValue int,
        @nOldSECTOR_IDValue int, @nNewSECTOR_IDValue int,
        @nOldREMOTE_SUMMValue decimal(28, 10), @nNewREMOTE_SUMMValue decimal(28, 10),
        @nOldREMOTE_SYNCValue int, @nNewREMOTE_SYNCValue int,
        @nOldREMOTE_DRNUMValue int, @nNewREMOTE_DRNUMValue int,
        @nOldREMOTE_INCOURSEValue int, @nNewREMOTE_INCOURSEValue int,
        @nOldREMOTE_ACCEPTEDValue int, @nNewREMOTE_ACCEPTEDValue int,
        @nOldWAITINGValue int, @nNewWAITINGValue int,
        @nOldadr_manual_setValue smallint, @nNewadr_manual_setValue smallint,
        @nOldprev_priceValue smallint, @nNewprev_priceValue smallint,
        @nOlddetected_sectorValue int, @nNewdetected_sectorValue int,
        @nOldis_earlyValue smallint, @nNewis_earlyValue smallint,
        @nOldis_started_earlyValue smallint, @nNewis_started_earlyValue smallint,
        @nOldearly_dateValue datetime, @nNewearly_dateValue datetime,
        @nOlddistrict_idValue int, @nNewdistrict_idValue int,
        @nOldbonus_useValue decimal(28, 10), @nNewbonus_useValue decimal(28, 10),
        @nOldend_adresValue varchar(1000), @nNewend_adresValue varchar(1000),
        @nOldCLIENT_SMS_SEND_STATEValue int, @nNewCLIENT_SMS_SEND_STATEValue int,
        @nOldCLIENT_CALL_STATEValue int, @nNewCLIENT_CALL_STATEValue int,
        @nOldtmhistoryValue varchar(1000), @nNewtmhistoryValue varchar(1000),
		@RSNewValue INT, @newDrId int, @newOrderId int, @RSOldValue int,
        @oldDrId int;

	SELECT @newOrderId=a.BOLD_ID, 
	@RSNewValue=a.REMOTE_SET,
    @RSOldValue=b.REMOTE_SET,
	@nOldValue=b.on_place,
	@nNewValue=a.on_place,
    @nOldPredvariteljnyiValue=b.Predvariteljnyi,
	@nNewPredvariteljnyiValue=a.Predvariteljnyi,
    @nOldData_predvariteljnayaValue=b.Data_predvariteljnaya,
	@nNewData_predvariteljnayaValue=a.Data_predvariteljnaya,
    @nOldZadeistv_predvaritValue=b.Zadeistv_predvarit,
	@nNewZadeistv_predvaritValue=a.Zadeistv_predvarit,
    @nOldAdres_vyzova_vvodimValue=b.Adres_vyzova_vvodim,
	@nNewAdres_vyzova_vvodimValue=a.Adres_vyzova_vvodim,
    @nOldTelefon_klientaValue=b.Telefon_klienta,
	@nNewTelefon_klientaValue=a.Telefon_klienta,
    @nOldZavershyonValue=b.Zavershyon,
	@nNewZavershyonValue=a.Zavershyon,
    @nOldArhivnyiValue=b.Arhivnyi,
	@nNewArhivnyiValue=a.Arhivnyi,
    @nOldUslovn_stoimValue=b.Uslovn_stoim,
	@nNewUslovn_stoimValue=a.Uslovn_stoim,
    @nOldPozyvnoi_ustanValue=b.Pozyvnoi_ustan,
	@nNewPozyvnoi_ustanValue=a.Pozyvnoi_ustan,
    @nOldSECTOR_IDValue=b.SECTOR_ID,
	@nNewSECTOR_IDValue=a.SECTOR_ID,
    @nOldREMOTE_SUMMValue=b.REMOTE_SUMM,
	@nNewREMOTE_SUMMValue=a.REMOTE_SUMM,
    @nOldREMOTE_SYNCValue=b.REMOTE_SYNC,
	@nNewREMOTE_SYNCValue=a.REMOTE_SYNC,
    @nOldREMOTE_DRNUMValue=b.REMOTE_DRNUM,
	@nNewREMOTE_DRNUMValue=a.REMOTE_DRNUM,
    @nOldREMOTE_INCOURSEValue=b.REMOTE_INCOURSE,
	@nNewREMOTE_INCOURSEValue=a.REMOTE_INCOURSE,
    @nOldREMOTE_ACCEPTEDValue=b.REMOTE_ACCEPTED,
	@nNewREMOTE_ACCEPTEDValue=a.REMOTE_ACCEPTED,
    @nOldWAITINGValue=b.WAITING,
	@nNewWAITINGValue=a.WAITING,
    @nOldadr_manual_setValue=b.adr_manual_set,
	@nNewadr_manual_setValue=a.adr_manual_set,
    @nOldprev_priceValue=b.prev_price,
	@nNewprev_priceValue=a.prev_price,
    @nOlddetected_sectorValue=b.detected_sector,
	@nNewdetected_sectorValue=a.detected_sector,
    @nOldis_earlyValue=b.is_early,
	@nNewis_earlyValue=a.is_early,
    @nOldis_started_earlyValue=b.is_started_early,
	@nNewis_started_earlyValue=a.is_started_early,
    @nOldearly_dateValue=b.early_date,
	@nNewearly_dateValue=a.early_date,
    @nOlddistrict_idValue=b.district_id,
	@nNewdistrict_idValue=a.district_id,
    @nOldbonus_useValue=b.bonus_use,
	@nNewbonus_useValue=a.bonus_use,
    @nOldend_adresValue=b.end_adres,
	@nNewend_adresValue=a.end_adres,
    @nOldCLIENT_SMS_SEND_STATEValue=b.CLIENT_SMS_SEND_STATE,
	@nNewCLIENT_SMS_SEND_STATEValue=a.CLIENT_SMS_SEND_STATE,
    @nOldCLIENT_CALL_STATEValue=b.CLIENT_CALL_STATE,
	@nNewCLIENT_CALL_STATEValue=a.CLIENT_CALL_STATE,
    @nOldtmhistoryValue=b.tmhistory,
	@nNewtmhistoryValue=a.tmhistory,
	@newDrId=a.vypolnyaetsya_voditelem,
    @oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b
	
	IF (@nNewValue<>@nOldValue) OR (@RSNewValue<>@RSOldValue) OR 
        (@newDrId<>@oldDrId) OR 
    @nOldPredvariteljnyiValue <>
	@nNewPredvariteljnyiValue OR
    @nOldData_predvariteljnayaValue <>
	@nNewData_predvariteljnayaValue OR
    @nOldZadeistv_predvaritValue <>
	@nNewZadeistv_predvaritValue OR
    @nOldAdres_vyzova_vvodimValue <>
	@nNewAdres_vyzova_vvodimValue OR
    @nOldTelefon_klientaValue <> 
	@nNewTelefon_klientaValue OR 
    @nOldZavershyonValue <>
	@nNewZavershyonValue OR
    @nOldArhivnyiValue <> 
	@nNewArhivnyiValue OR
    @nOldUslovn_stoimValue <>
	@nNewUslovn_stoimValue OR 
    @nOldPozyvnoi_ustanValue <>
	@nNewPozyvnoi_ustanValue OR
    @nOldSECTOR_IDValue <>
	@nNewSECTOR_IDValue OR
    @nOldREMOTE_SUMMValue <>
	@nNewREMOTE_SUMMValue OR
    @nOldREMOTE_SYNCValue <>
	@nNewREMOTE_SYNCValue OR
    @nOldREMOTE_DRNUMValue <> 
	@nNewREMOTE_DRNUMValue OR
    @nOldREMOTE_INCOURSEValue <>
	@nNewREMOTE_INCOURSEValue OR
    @nOldREMOTE_ACCEPTEDValue <>
	@nNewREMOTE_ACCEPTEDValue OR
    @nOldWAITINGValue <>
	@nNewWAITINGValue OR
    @nOldadr_manual_setValue <>
	@nNewadr_manual_setValue OR
    @nOldprev_priceValue <>
	@nNewprev_priceValue OR
    @nOlddetected_sectorValue <>
	@nNewdetected_sectorValue OR
    @nOldis_earlyValue <>
	@nNewis_earlyValue OR
    @nOldis_started_earlyValue <>
	@nNewis_started_earlyValue OR
    @nOldearly_dateValue <>
	@nNewearly_dateValue OR
    @nOlddistrict_idValue <>
	@nNewdistrict_idValue OR
    @nOldbonus_useValue <>
	@nNewbonus_useValue OR
    @nOldend_adresValue <>
	@nNewend_adresValue OR
    @nOldCLIENT_SMS_SEND_STATEValue <>
	@nNewCLIENT_SMS_SEND_STATEValue OR
    @nOldCLIENT_CALL_STATEValue <>
	@nNewCLIENT_CALL_STATEValue OR 
    @nOldtmhistoryValue <>
	@nNewtmhistoryValue
	BEGIN
		UPDATE Personal SET has_web_orders_updates=1 WHERE Login <> SYSTEM_USER;
	END;
	
END



GO
ALTER TABLE [dbo].[Zakaz] ENABLE TRIGGER [AFTER_WEB_DISP_DATA_CHANGE]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_APP_CLIENT_ASSIGN] 
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

        DECLARE @nOldValue int, @newRemClientId int, @oldRemClientId int, 
            @oldTarifPlanId int, @newTarifPlanId int, @optionId int, 
            @CURSOR cursor, @length_with_comma int, 
            @left_option_str varchar(255), @rigth_option_str varchar(255);
            
        SELECT @nOldValue=b.BOLD_ID, 
        @newRemClientId = a.rclient_id,
        @oldRemClientId = b.rclient_id,
        @newTarifPlanId = a.PR_POLICY_ID,
        @oldTarifPlanId = b.PR_POLICY_ID
        FROM inserted a, deleted b;
        
        IF ( ((@newRemClientId <> @oldRemClientId)) OR 
        (@newTarifPlanId <> @oldTarifPlanId ) ) and (@newTarifPlanId > 0) and 
        (@newRemClientId > 0)
        BEGIN
            SET @CURSOR  = CURSOR SCROLL
            FOR
            SELECT ID  
            FROM ORDER_OPTION  
            WHERE PR_POLICY_ID = @newTarifPlanId AND is_client_app = 1;
            /*Открываем курсор*/
            OPEN @CURSOR
            /*Выбираем первую строку*/
            FETCH NEXT FROM @CURSOR INTO @optionId
            /*Выполняем в цикле перебор строк*/
            WHILE @@FETCH_STATUS = 0
            BEGIN

                SET @left_option_str = CAST(@optionId as [varchar](255)) + ','
                SET @rigth_option_str = ',' + CAST(@optionId as [varchar](255))
                SET @length_with_comma = LEN(@left_option_str)

                UPDATE Zakaz 
                SET OPT_COMB_STR = OPT_COMB_STR + 
                (CASE WHEN (OPT_COMB_STR <> '') THEN ',' ELSE '' END) + 
                CAST(@optionId as varchar(20))
                WHERE BOLD_ID = @nOldValue AND 
		(OPT_COMB_STR <> CAST(@optionId as varchar(20))) AND
                (CHARINDEX (',' + CAST(@optionId as varchar(20)) + ',', OPT_COMB_STR) = 0) 
                AND NOT ((LEN(OPT_COMB_STR) > @length_with_comma AND 
                LEFT(OPT_COMB_STR, @length_with_comma) = @left_option_str) OR 
                (LEN(OPT_COMB_STR) > @length_with_comma AND 
                RIGHT(OPT_COMB_STR, @length_with_comma) = @rigth_option_str) )
                
                FETCH NEXT FROM @CURSOR INTO @optionId
            END
            CLOSE @CURSOR
        END;

	END;
	
	
	
END



GO
ALTER TABLE [dbo].[Zakaz] ENABLE TRIGGER [AFTER_APP_CLIENT_ASSIGN]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_ROUTE_BUILD] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @en_prev_price_from_route smallint,
        @route_distance_tariff [decimal](18, 5),
        @route_time_tariff [decimal](18, 5);
	
	SET @en_prev_price_from_route = 0;
	
	SELECT TOP 1 @db_version = ISNULL(db_version,3),
	    @en_prev_price_from_route = ISNULL(en_prev_price_from_route,0),
        @route_distance_tariff = route_distance_tariff,
        @route_time_tariff = route_time_tariff
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF(@db_version>=5)
	BEGIN
	
		DECLARE @new_route_distance [decimal](18, 5),
        @new_route_time [decimal](18, 5),
        @old_route_distance [decimal](18, 5),
        @old_route_time [decimal](18, 5),
        @order_id int;
			
		SELECT @order_id = b.BOLD_ID, 
		@new_route_distance = a.route_distance,
		@new_route_time = a.route_time,
        @old_route_distance = b.route_distance,
		@old_route_time = b.route_time
		FROM inserted a, deleted b

		IF ((@new_route_distance <> @old_route_distance 
			AND @new_route_distance > 0) OR 
            (@new_route_time <> @old_route_time 
			AND @new_route_time > 0))
		BEGIN
            DECLARE @route_price [decimal](18, 5);

            SET @route_price = 
                @new_route_distance * @route_distance_tariff / 1000 +
                @new_route_time * @route_time_tariff / 60;

            IF @en_prev_price_from_route = 1 BEGIN
                UPDATE Zakaz SET route_price = @route_price,
                    prev_price = @route_price
                WHERE BOLD_ID = @order_id;
            END ELSE BEGIN
                UPDATE Zakaz SET route_price = @route_price 
                WHERE BOLD_ID = @order_id;
            END;
		END;

	END;
	
	
	
END



GO
ALTER TABLE [dbo].[Zakaz] ENABLE TRIGGER [AFTER_ORDER_ROUTE_BUILD]
GO
