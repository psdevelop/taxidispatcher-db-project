USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus]    Script Date: 12/26/2013 04:00:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[SetOrderOccupAttemptStatus2] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @count int OUT, @status int, 
		@is_manual int, @waiting int)
AS
BEGIN 
	DECLARE @dr_num int, @dr_count int, 
		@comment varchar(255), @att_count int;
	
	SET @count = 0;
	SET @dr_count = 0; 
	SET @att_count = 0;
	
	SELECT @dr_count=COUNT(*) FROM Voditelj
	WHERE BOLD_ID=@driver_id;
	
	if(@dr_count>0) BEGIN

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE  
	(Zakaz.BOLD_ID=@order_id);
	
	SELECT @dr_num=Pozyvnoi FROM Voditelj
	WHERE BOLD_ID=@driver_id;
	
	IF (@count>0)
	begin
	
	SELECT @comment=('Заказ № '+
	CAST(CAST(Nomer_zakaza AS int) AS varchar(50))+
	', '+Telefon_klienta+', '+Adres_vyzova_vvodim) 
	FROM Zakaz
	WHERE  
	(Zakaz.BOLD_ID=@order_id);
	
	SELECT @att_count=COUNT(*) 
	FROM ORDER_ACCEPTING 
	WHERE ORDER_ID=@order_id;
	
	EXEC dbo.FixOrderAccepting @driver_id, @order_id, @dr_num, @comment, @is_manual;
	UPDATE ORDER_ACCEPTING SET WAITING=@waiting 
	WHERE DRIVER_ID=@driver_id and ORDER_ID=@order_id;
	
	if (@att_count=0) begin
		UPDATE Zakaz 
		SET Zakaz.REMOTE_DRNUM=@dr_num 
		WHERE (Zakaz.REMOTE_SET>0) AND 
		(Zakaz.REMOTE_SET<=6) AND 
		(Zakaz.BOLD_ID=@order_id);
	end
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status
	WHERE (Zakaz.REMOTE_SET>3) AND 
	(Zakaz.REMOTE_SET<=5) AND 
	(Zakaz.BOLD_ID=@order_id);
	
	end
	
	END
	
END











GO


