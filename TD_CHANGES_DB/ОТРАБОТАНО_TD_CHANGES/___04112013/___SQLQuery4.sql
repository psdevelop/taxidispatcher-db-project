CREATE PROCEDURE [dbo].[SetWideBroadcasts] 
	-- Add the parameters for the stored procedure here
	(@set_sectors int, @sectors_bcasts varchar(5000) OUT)
AS
BEGIN 
	SET @sectors_bcasts='';
	IF (ISNULL(@set_sectors,0)=1)
	BEGIN
		SELECT @sectors_bcasts=ISNULL(dbo.GetJSONSectorsStatus(),'');
		UPDATE Objekt_vyborki_otchyotnosti 
		SET sectors_wbroadcast=@sectors_bcasts;
	END;
END


