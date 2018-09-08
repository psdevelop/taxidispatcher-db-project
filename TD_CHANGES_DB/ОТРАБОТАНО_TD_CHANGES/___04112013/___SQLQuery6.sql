CREATE PROCEDURE [dbo].[SetDriverSectWBrodcastStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @status int, @count int OUT)
AS
BEGIN 

	SET @count=0;

	UPDATE Voditelj 
	SET Voditelj.SEND_WBROADCAST=@status 
	WHERE Voditelj.BOLD_ID=@driver_id;
		
	SET @count=@@ROWCOUNT;
	
END
