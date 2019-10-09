SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewDriverRetID] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 19, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 19, 0);
    
    INSERT INTO Voditelj (BOLD_ID, BOLD_TYPE, Pozyvnoi, Data_po_umolchaniyu) 
	VALUES (@bold_id, 19, 0, GETDATE());
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
END





GO
