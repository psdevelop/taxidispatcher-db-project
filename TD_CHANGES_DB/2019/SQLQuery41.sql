SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[InsertOrderWithSectorAndTariffParams] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, 
	@lat varchar(50), @lon varchar(50), @sector_id int, 
    @district_id int, @company_id int, @tplan_id int, @for_all smallint,
    @ord_num  int OUT, @order_id int OUT)
AS
BEGIN 

	DECLARE @comment varchar(255);
	
	SET @order_id = -1;
	SET @ord_num = -1;
	SET @comment = '';
	SET @gsm_detect_code=ISNULL(@gsm_detect_code,0);
	SET @phone=ISNULL(@phone, '');
	SET @deny_duplicate=ISNULL(@deny_duplicate,0);
	SET @adres=ISNULL(@adres,'');
	SET @status=ISNULL(@status,0);
	SET @color_check=ISNULL(@color_check,0);
	SET @op_order=ISNULL(@op_order,0);
	SET @colored_new=ISNULL(@colored_new,0);
	SET @ab_num=ISNULL(@ab_num,'');
	SET @client_id=ISNULL(@client_id,-1);
	SET @lat=ISNULL(@lat,'');
	SET @lon=ISNULL(@lon,'');
	
	if (@gsm_detect_code=-1010)
	BEGIN
		SET @comment = 'C ПЕРВОГО СОТОВОГО';
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
		Adres_vyzova_vvodim='(ONLINE)'+@adres,
		Telefon_klienta=@phone, 
		Opr_s_obsh_linii=@color_check,
		Yavl_pochasovym=@op_order,
		Ustan_pribytie=@colored_new,
		Adres_okonchaniya_zayavki=@ab_num,
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status,
		rclient_id=@client_id,
		rclient_status=1,
		alarmed=1,
        detected_sector = (CASE WHEN (@sector_id > 0) THEN @sector_id ELSE detected_sector END),
        district_id = (CASE WHEN (@district_id > 0) THEN @district_id ELSE district_id END),
		company_id = (CASE WHEN (@company_id > 0) THEN @company_id ELSE company_id END),
        rclient_lat = (CASE WHEN (@lat <> '' AND @lat <> '0') THEN @lat ELSE rclient_lat END),
        rclient_lon = (CASE WHEN (@lon <> '' AND @lon <> '0') THEN @lon ELSE rclient_lon END)
        WHERE BOLD_ID=@order_id;

	END
	END;
END






GO
