ALTER PROCEDURE [dbo].[SetOrdersWideBroadcasts] 
	-- Add the parameters for the stored procedure here
	(@set_owbcast int, @forders_bcasts varchar(5000) OUT)
AS
BEGIN 
	SET @forders_bcasts='';
	IF (ISNULL(@set_owbcast,0)=1)
	BEGIN
		SELECT @forders_bcasts=ISNULL(dbo.GetJSONOrdersBCasts(),'');
		UPDATE Objekt_vyborki_otchyotnosti 
		SET forders_wbroadcast=@forders_bcasts,
		has_ford_wbroadcast=1;
	END
	ELSE
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti
		SET has_ford_wbroadcast=0;
	END;
END
