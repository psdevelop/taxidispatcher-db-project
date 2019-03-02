USE [TD5R1]
GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_COORD_UPDATE]    Script Date: 01.03.2019 22:57:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[AFTER_DRIVER_RATING_INSERT] 
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


