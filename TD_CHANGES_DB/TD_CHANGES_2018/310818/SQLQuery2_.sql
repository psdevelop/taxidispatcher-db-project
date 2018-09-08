USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[InsertDriverRating]    Script Date: 30.08.2018 22:34:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[InsertDriverRating] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @expire_date datetime, @change_code varchar(255), 
	@change_value decimal(18,5), @allow_bonus_duplicate smallint)
AS
BEGIN 
	DECLARE @duplicate_count int;
	SET @duplicate_count = 0;

	IF NOT (@allow_bonus_duplicate = 1) BEGIN
		SELECT @duplicate_count = COUNT(id) FROM DRIVER_RATING
		WHERE driver_id = @driver_id AND change_code = @change_code AND
			expire_date < GETDATE()
	END;

	IF @duplicate_count = 0 BEGIN
		INSERT INTO DRIVER_RATING 
			(driver_id, expire_date, change_code, change_value)
			VALUES (@driver_id, @expire_date, @change_code, @change_value);
	END;
END








GO


