SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[CancelOrdersRClient] 
	-- Add the parameters for the stored procedure here
	(@phone varchar(255),
	@client_id int)
AS
BEGIN 
	
	if (@client_id>0)
	BEGIN
		UPDATE Zakaz SET 
		Adres_vyzova_vvodim='(ÎÒÌÅÍÀ ÊËÈÅÍÒÎÌ)'+REPLACE(Adres_vyzova_vvodim,'(ONLINE)',''),
		rclient_status=-1
		WHERE Telefon_klienta=@phone AND rclient_status>=0 AND 
		Zavershyon=0 AND rclient_id=@client_id AND REMOTE_SET<100;
	END;
END





