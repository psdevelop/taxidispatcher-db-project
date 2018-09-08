USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[InsertOrderWithParams]    Script Date: 07/11/2015 01:40:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOrderWithParamsRClient] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, @ord_num  int OUT, 
	@order_id int OUT)
AS
BEGIN 

	DECLARE @comment varchar(255);
	
	SET @order_id = -1;
	SET @ord_num = -1;
	SET @comment = '';
	SET @client_id=ISNULL(@client_id,0);
	SET @gsm_detect_code=ISNULL(@gsm_detect_code,0);
	SET @phone=ISNULL(@phone, '');
	SET @deny_duplicate=ISNULL(@deny_duplicate,0);
	SET @adres=ISNULL(@adres,'');
	SET @status=ISNULL(@status,0);
	SET @color_check=ISNULL(@color_check,0);
	SET @op_order=ISNULL(@op_order,0);
	SET @colored_new=ISNULL(@colored_new,0);
	SET @ab_num=ISNULL(@ab_num,'');
	
	if (@gsm_detect_code=-1010)
	BEGIN
		SET @comment = 'C ÏÅÐÂÎÃÎ ÑÎÒÎÂÎÃÎ';
	END;
	
	if ((@deny_duplicate=1) AND (LEN(@phone)>4))
	BEGIN
		SELECT @deny_duplicate=COUNT(*) 
		FROM Zakaz WHERE Zavershyon=0 AND Arhivnyi=0 
		AND Soobsheno_voditelyu=0 AND Predvariteljnyi=0 
		AND Telefon_klienta=@phone;
	END
	ELSE
	BEGIN
		SET @deny_duplicate=0;
	END;
	
	IF (@deny_duplicate=0) 
	BEGIN
	EXEC InsertNewOrderRetNum @bold_id = @order_id OUTPUT, 
		@order_num = @ord_num OUTPUT;
	
	if (@order_id>0)
	BEGIN
		UPDATE Zakaz SET 
		otpuskaetsya_dostepcherom=@disp_id,
		Adres_vyzova_vvodim=@adres,
		Telefon_klienta=@phone, 
		Opr_s_obsh_linii=@color_check,
		Yavl_pochasovym=@op_order,
		Ustan_pribytie=@colored_new,
		Adres_okonchaniya_zayavki=@ab_num,
		Primechanie=@comment,
		REMOTE_SET=@status
		WHERE BOLD_ID=@order_id;
	END
	END;
END



GO


