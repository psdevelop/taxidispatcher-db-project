USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[CheckDriverBusy]    Script Date: 07/09/2015 02:58:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CheckClientRegistration] 
	-- Add the parameters for the stored procedure here
	(@client_id int, @phone varchar(255))
AS
BEGIN 
    DECLARE @counter int, @driver_id int,
		@its_remote_client int, @dr_count int,
		@sync_acc int;
    
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
	--ORDER_DRV_CANCEL_USER_WAIT = 29;
	
	SELECT TOP 1 @sync_acc=ISNULL(sync_busy_accounting,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @sync_acc=ISNULL(@sync_acc,0);
    
    SELECT @dr_count=COUNT(*)
    from Voditelj dr
    WHERE dr.BOLD_ID=@driver_id;
    
    IF (@dr_count>0)
    BEGIN
    
    SELECT @its_remote_client=dr.ITS_REMOTE_CLIENT
    from Voditelj dr
    WHERE dr.BOLD_ID=@driver_id;
    
    IF(@its_remote_client=1)
    BEGIN
		IF (@sync_acc=1)
		BEGIN
			SELECT @counter=COUNT(*) FROM Zakaz
			WHERE vypolnyaetsya_voditelem=@driver_id
			and Zavershyon=0  and Arhivnyi=0
			and (REMOTE_SET IN (8,11,13,15,19,20,21,29,0)) 
			and Soobsheno_voditelyu=0 and REMOTE_SYNC=0;
		END
		ELSE
		BEGIN
			SELECT @counter=COUNT(*) FROM Zakaz
			WHERE vypolnyaetsya_voditelem=@driver_id
			and Zavershyon=0  and Arhivnyi=0
			and (REMOTE_SET IN (8,11,13,15,19,20,21,29,0)) 
			and Soobsheno_voditelyu=0;
		END;
    END
    ELSE
    BEGIN
		SELECT @counter=COUNT(*) FROM Zakaz
		WHERE vypolnyaetsya_voditelem=@driver_id
		and Zavershyon=0 and Arhivnyi=0 
		and Soobsheno_voditelyu=0;
    END;
    
	if(@counter>0)
	begin
		UPDATE Voditelj 
		SET Voditelj.Zanyat_drugim_disp=1 
		WHERE Voditelj.BOLD_ID=@driver_id;
	end
	else
	begin
		UPDATE Voditelj 
		SET Voditelj.Zanyat_drugim_disp=0 
		WHERE Voditelj.BOLD_ID=@driver_id;
	end;	
	
	END;
END


GO


