SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewAbonentRetID] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
    EXEC [dbo].[InsertPersonaRetID] @bold_type = 5, @bold_id = @bold_id OUTPUT;
    
    UPDATE Persona SET Elektronnyi_adres = 'Индивидуальный клиент'
    WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
END







GO
