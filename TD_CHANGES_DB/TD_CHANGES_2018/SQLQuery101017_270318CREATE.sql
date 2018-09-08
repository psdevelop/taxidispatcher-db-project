USE [TD5R1]

/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientEx]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[InsertOrderWithParamsRClientEx] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
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
		alarmed=1
		WHERE BOLD_ID=@order_id;
	END
	END;
END





GO

/****** Object:  Trigger [dbo].[AFTER_SECTOR_INSERT]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[AFTER_SECTOR_INSERT] 
   ON  [dbo].[Sektor_raboty] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @newId int; 
	
		SELECT @newId=a.BOLD_ID
		FROM inserted a;
	
		UPDATE Sektor_raboty SET Nomer_sektora = @newId,
		Kod_sektora = CAST(@newId AS varchar(255))
		WHERE BOLD_ID = @newId;
	
	END;

END



GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_INSERT]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[AFTER_DRIVER_INSERT] 
   ON  [dbo].[Voditelj] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @newId int, @sectId int,
			@groupId int;

		SELECT TOP 1 @sectId = BOLD_ID FROM Sektor_raboty;
		SELECT TOP 1 @groupId = BOLD_ID FROM Gruppa_voditelei; 
		
	
		SELECT @newId=a.BOLD_ID
		FROM inserted a;
	
		UPDATE Voditelj SET rabotaet_na_sektore = ISNULL(@sectId, -1),
		Nomer_posl_sektora = ISNULL(@sectId, -1),
		otnositsya_k_gruppe = ISNULL(@groupId, -1) 
		WHERE BOLD_ID = @newId;
	
	END;

END


GO

/****** Object:  UserDefinedFunction [dbo].[isSMSWithCallRaplace]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


ALTER FUNCTION [dbo].[isSMSWithCallRaplace]  ()
RETURNS smallint
AS
BEGIN      

	DECLARE @db_version INT, @replace_sms_with_robot int,
		@sip1_robot_active_time datetime, 
		@robot_active_time_interval int,
		@res smallint;
	
	SELECT TOP 1 @replace_sms_with_robot=replace_sms_with_robot,
	@sip1_robot_active_time = sip1_robot_active_time, 
	@robot_active_time_interval = robot_active_time_interval
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res=1;
	IF @replace_sms_with_robot = 1 BEGIN
		IF (ABS(DATEDIFF(SECOND, @sip1_robot_active_time, 
			GETDATE())) < @robot_active_time_interval)  
		BEGIN
			SET @res=0;
		END;
	END;

   RETURN(@res)
END



GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_RSTATUS_CHANGE]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[AFTER_ORDER_RSTATUS_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5))
	BEGIN

	DECLARE @nOldValue smallint, @nNewValue smallint, @newOrderId int;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@nOldValue=b.rclient_status,
	@nNewValue=a.rclient_status
	FROM inserted a, deleted b
	
	IF (@nNewValue<>@nOldValue)
	BEGIN
		UPDATE Zakaz SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		WHERE BOLD_ID=@newOrderId;
	END;

	END;
	
	
	
END


GO

/****** Object:  UserDefinedFunction [dbo].[GetRemoteOrderStatusInfo]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER FUNCTION [dbo].[GetRemoteOrderStatusInfo]  ( @REMOTE_SET int, @WAITING int)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255)

   SET @res='.....'
   
   if (@REMOTE_SET<>0) begin
       if (@REMOTE_SET=-1)  begin
        SET @res='Отмена диспетчером для '
       end 

       else if (@REMOTE_SET=-2)  begin
        SET @res='Отмена водителем '
       end 

       else if (@REMOTE_SET=-3)  begin
        SET @res='Отмена принята водителем '
       end

	   else if (@REMOTE_SET=1)  begin
        SET @res='Рассыл одному, можно назначить'
       end 

       else if (@REMOTE_SET = 2)  begin
        SET @res='Рассыл сектору, можно назначить'
       end 

	   else if (@REMOTE_SET = 3)  begin
        SET @res='Рассыл всем, можно назначить'
       end 

	   else if (@REMOTE_SET = 4)  begin
        SET @res='Рассыл завершен, назначьте'
       end 

	   else if (@REMOTE_SET = 5)  begin
        SET @res='Есть претенденты, назначьте'
       end 

	   else if (@REMOTE_SET = 6)  begin
        SET @res='Есть претенденты, назначьте'
       end 

	   else if (@REMOTE_SET = 7)  begin
        SET @res='Дано разрешение'
       end 

	   else if (@REMOTE_SET = 8)  begin
        SET @res='На исполнении'
       end 

	   else if (@REMOTE_SET = 9)  begin
        SET @res='Дано разрешение с руки'
       end 

	   else if (@REMOTE_SET = 10)  begin
        SET @res='На исполнении'
       end 

	   else if (@REMOTE_SET = 11)  begin
        SET @res='Диспетчер отменяет'
       end 

	   else if (@REMOTE_SET = 12)  begin
        SET @res='Вод. подтв. отмену дисп.'
       end 

	   else if (@REMOTE_SET = 13)  begin
        SET @res='Водитель отменяет'
       end 

	   else if (@REMOTE_SET = 14)  begin
        SET @res='Дисп. подтв. отмену вод.'
       end 

	   else if (@REMOTE_SET = 15)  begin
        SET @res='Водитель отчитался'
       end 

	   else if (@REMOTE_SET = 16)  begin
        SET @res='Отчет принят, ждем...'
       end 

	   else if (@REMOTE_SET = 17)  begin
        SET @res='Дано разрешение, ждем'
       end 

	   else if (@REMOTE_SET = 18)  begin
        SET @res='Дано разрешение с руки, ждем'
       end 

	   else if (@REMOTE_SET = 19)  begin
        SET @res='Диспетчер отменил, ждем'
       end 

	   else if (@REMOTE_SET = 20)  begin
        SET @res='Ошибка отчета'
       end 

	   else if (@REMOTE_SET = 21)  begin
        SET @res='Отмена водителем не принята'
       end 

	   else if (@REMOTE_SET = 23)  begin
        SET @res='Просят с руки'
       end 

	   else if (@REMOTE_SET = 24)  begin
        SET @res='Отказано с руки'
       end 

	   else if (@REMOTE_SET = 25)  begin
        SET @res='Просят с руки, подтвердите'
       end 

	   else if (@REMOTE_SET = 26)  begin
        SET @res='Дан отчет, подтвердите'
       end 

	   else if (@REMOTE_SET = 27)  begin
        SET @res='Отчет принят, закрытие...'
       end 

	   else if (@REMOTE_SET = 100)  begin
        SET @res='Заявка закрыта'
       end 

   end

   RETURN(@res)
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetOrderOnPlaceAMICommand]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


ALTER FUNCTION [dbo].[GetOrderOnPlaceAMICommand]  ( @oid int)
RETURNS varchar(2000)
AS
BEGIN
   declare @res varchar(2000), @dr_id int, @clphone varchar(255),
	@avar1 smallint, @avar2 smallint, @avar3 smallint, @avar4 smallint,
	@avar5 smallint, @avar6 smallint, @avar7 smallint, @avar8 smallint,
	@avar9 smallint, @avar10 smallint, @test_phone varchar(50), @disp_phone varchar(50),
	@manager_phone varchar(50), @call_demon_locsip_name varchar(50),
	@call_demon_netsip_name varchar(50), @demon_call_ctx varchar(50),
	@demon_call_virtext varchar(50), @demon_call_priority varchar(20),
	@demon_call_timeout varchar(20), @demon_callerid varchar(50),
	@onplace_first_song_code int;
   
   select @call_demon_locsip_name=call_demon_locsip_name,
		@demon_call_ctx=demon_call_ctx, @demon_call_virtext=demon_call_virtext,
		@demon_call_priority=demon_call_priority, @demon_call_timeout=demon_call_timeout,
		@demon_callerid=demon_callerid, 
		@onplace_first_song_code = onplace_first_song_code
   from Objekt_vyborki_otchyotnosti where Tip_objekta='for_drivers'
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @clphone=Telefon_klienta, @dr_id=vypolnyaetsya_voditelem 
   FROM Zakaz WHERE BOLD_ID=@oid;
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @avar1=avar1, @avar2=avar2, @avar3=avar3, @avar4=avar4,
   @avar5=avar5, @avar6=avar6, @avar7=avar7, @avar8=avar8, @avar9=avar9, @avar10=avar10 
   FROM Voditelj WHERE BOLD_ID=@dr_id;
   
   IF (@@ROWCOUNT>0) BEGIN
		SET @res = 'Action: Originate***___CRLF'+
		'Channel: SIP/'+@call_demon_locsip_name+'/+7'+@clphone+'***___CRLF'+
		'Context: '+@demon_call_ctx+'***___CRLF'+
		'Exten: '+@demon_call_virtext+'***___CRLFPriority: '+
		@demon_call_priority+'***___CRLF'+
		'Callerid: '+@demon_callerid+'***___CRLFTimeout: '+
		@demon_call_timeout+'***___CRLF'+
		'Variable: v1='+CAST(@onplace_first_song_code as varchar(50))+
		'***___CRLFVariable: v2='+CAST(@avar2 as varchar(50))+'***___CRLF'+
		'Variable: v3='+CAST(@avar3 as varchar(50))+
		'***___CRLFVariable: v4='+CAST(@avar4 as varchar(50))+'***___CRLF'+
		'Variable: v5='+CAST(@avar5 as varchar(50))+
		'***___CRLFVariable: v6='+CAST(@avar6 as varchar(50))+'***___CRLF'+
		'Variable: v7='+CAST(@avar7 as varchar(50))+'***___CRLF***___CRLF'
   END
   END
   END

   if @res=NULL begin
       SET @res='NONE'
   end  

   RETURN(@res)
END


GO

/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientFBot]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[InsertOrderWithParamsRClientFBot] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, 
	@src_id varchar(50), @ord_num  int OUT, 
	@order_id int OUT)
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
		src = 1,
		src_id = @src_id
		WHERE BOLD_ID=@order_id;
	END
	END;
END






GO

/****** Object:  StoredProcedure [dbo].[CancelOrdersRClientFBot]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[CancelOrdersRClientFBot] 
	-- Add the parameters for the stored procedure here
	(@order_id varchar(50), @is_bot smallint, @res int OUT)
AS
BEGIN 
	
	SET @is_bot = ISNULL(@is_bot, 0)
	SET @res = 0;
	if (@order_id <> '')
	BEGIN
		IF @is_bot = 0 BEGIN
			UPDATE Zakaz SET src_status_code = 100, 
			REMOTE_SET = 100, Zavershyon = 1, Arhivnyi = 1, 
			Adres_vyzova_vvodim='(ОТМЕНА ВОДИТЕЛЕМ)' + REPLACE(Adres_vyzova_vvodim,'(ONLINE)','') 
			WHERE src = 1 AND src_status_code = 8 AND 
			(REMOTE_SET NOT IN (8, 26, 100) OR Arhivnyi = 1) AND src_ID = @order_id
		END
		ELSE BEGIN
			UPDATE Zakaz SET src_status_code = 100,
			rclient_status = -1, REMOTE_SET = 100, 
			Zavershyon = 1, Arhivnyi = 1, 
			Adres_vyzova_vvodim='(ОТМЕНА КЛИЕНТОМ)'+REPLACE(Adres_vyzova_vvodim,'(ONLINE)','') 
			WHERE src = 1 AND src_status_code <> 100 AND src_ID = @order_id
		END
		SET @res = @@ROWCOUNT;
	END;
	
END






GO

/****** Object:  View [dbo].[OrdersCoords]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[OrdersCoords]
AS
SELECT        dbo.Voditelj.Pozyvnoi, dbo.Zakaz.src_id, dbo.Zakaz.src, dbo.Zakaz.Zavershyon, dbo.Voditelj.cc_updated, dbo.Voditelj.last_cctime, dbo.Voditelj.last_lon, dbo.Voditelj.last_lat, dbo.Zakaz.REMOTE_SET, 
                         dbo.Zakaz.REMOTE_SYNC, dbo.Zakaz.src_status_code
FROM            dbo.Zakaz INNER JOIN
                         dbo.Voditelj ON dbo.Zakaz.vypolnyaetsya_voditelem = dbo.Voditelj.BOLD_ID
WHERE        (dbo.Zakaz.Zavershyon = 0) AND (dbo.Voditelj.cc_updated = 1) AND (ABS(DATEDIFF(minute, dbo.Voditelj.last_cctime, GETDATE())) < 10) AND (dbo.Zakaz.REMOTE_SET = 8) AND (dbo.Zakaz.REMOTE_SYNC = 0) AND 
                         (dbo.Zakaz.src_status_code = 8)

GO

/****** Object:  View [dbo].[ActiveOrders]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[ActiveOrders]
AS
SELECT        dbo.Zakaz.BOLD_ID, dbo.Zakaz.Yavl_pochasovym, dbo.Zakaz.Kolichestvo_chasov, dbo.Zakaz.Nachalo_zakaza_data, dbo.Zakaz.Konec_zakaza_data, dbo.Zakaz.Telefon_klienta, dbo.Zakaz.Data_podachi, 
                         dbo.Zakaz.Zavershyon, dbo.Zakaz.Arhivnyi, dbo.Zakaz.Uslovn_stoim, dbo.Zakaz.Adres_vyzova_vvodim, dbo.Zakaz.Predvariteljnyi, dbo.Zakaz.Data_predvariteljnaya, dbo.Zakaz.Zadeistv_predvarit, 
                         dbo.Zakaz.Data_po_umolchaniyu, dbo.Zakaz.Soobsheno_voditelyu, dbo.Zakaz.vypolnyaetsya_voditelem, dbo.Zakaz.otpuskaetsya_dostepcherom, dbo.Zakaz.ocenivaetsya_cherez, dbo.Zakaz.adres_sektora, 
                         dbo.Zakaz.konechnyi_sektor_raboty, dbo.Zakaz.sektor_voditelya, dbo.Zakaz.Nomer_zakaza, dbo.Zakaz.Adres_okonchaniya_zayavki, dbo.Zakaz.Pozyvnoi_ustan, dbo.Zakaz.Data_pribytie, dbo.Zakaz.Nomer_skidki, 
                         dbo.Zakaz.Ustan_pribytie, dbo.Zakaz.Primechanie, dbo.Zakaz.Slugebnyi, dbo.Zakaz.otpravlyaetsya, dbo.Zakaz.Opr_s_obsh_linii, dbo.Zakaz.Data_na_tochke, dbo.Zakaz.REMOTE_SET, dbo.Zakaz.REMOTE_INCOURSE, 
                         dbo.Zakaz.REMOTE_ACCEPTED, dbo.Zakaz.REMOTE_DRNUM, dbo.Zakaz.DRIVER_SMS_SEND_STATE, dbo.Zakaz.CLIENT_SMS_SEND_STATE, dbo.Zakaz.SMS_SEND_DRNUM, dbo.Zakaz.SMS_SEND_CLPHONE, 
                         dbo.Zakaz.Priority_counter, dbo.Zakaz.Individ_order, dbo.Zakaz.Individ_sending, dbo.Zakaz.SECTOR_ID, dbo.Zakaz.REMOTE_SUMM, dbo.Zakaz.REMOTE_SYNC, dbo.Zakaz.LAST_STATUS_TIME, 
                         dbo.Zakaz.NO_TRANSMITTING, dbo.Zakaz.RESTORED, dbo.Zakaz.AUTO_ARHIVED, dbo.Zakaz.WAITING, dbo.Zakaz.direct_sect_id, dbo.Zakaz.fixed_time, dbo.Zakaz.fixed_summ, dbo.Zakaz.on_place, 
                         dbo.Zakaz.dr_assign_date, dbo.Zakaz.tm_distance, dbo.Zakaz.tm_summ, dbo.Zakaz.TARIFF_ID, dbo.Zakaz.OPT_COMB, dbo.Zakaz.OPT_COMB_STR, dbo.Zakaz.PR_POLICY_ID, dbo.Zakaz.call_it, dbo.Zakaz.rclient_id, 
                         dbo.Zakaz.rclient_status, dbo.Zakaz.clsync, dbo.Zakaz.tmsale, dbo.Zakaz.tmhistory, dbo.Zakaz.status_accumulate, dbo.Zakaz.rclient_lat, dbo.Zakaz.rclient_lon, dbo.Zakaz.alarmed, dbo.Zakaz.adr_manual_set, 
                         dbo.Zakaz.prev_price, dbo.Zakaz.cargo_desc, dbo.Zakaz.end_adres, dbo.Zakaz.client_name, dbo.Zakaz.prev_distance, dbo.Zakaz.CLIENT_CALL_STATE, CAST(DATEPART(hh, dbo.Zakaz.Nachalo_zakaza_data) AS CHAR(2)) 
                         + ':' + CAST(DATEPART(mi, dbo.Zakaz.Nachalo_zakaza_data) AS CHAR(2)) AS start_dt, CAST(DATEPART(hh, dbo.Zakaz.Konec_zakaza_data) AS CHAR(2)) + ':' + CAST(DATEPART(mi, dbo.Zakaz.Konec_zakaza_data) AS CHAR(2)) 
                         AS end_dt, dbo.GetCustComment(dbo.Zakaz.Nomer_zakaza, dbo.Zakaz.Nachalo_zakaza_data, dbo.Zakaz.Telefon_klienta + dbo.Zakaz.Adres_vyzova_vvodim, dbo.Zakaz.otpuskaetsya_dostepcherom, 
                         dbo.Zakaz.otpravlyaetsya, dbo.Zakaz.Pozyvnoi_ustan) AS MainCComment, dbo.GetOrderINumComment(dbo.Zakaz.Adres_okonchaniya_zayavki) AS INumInfo, dbo.GetEndSectorNameByID(dbo.Zakaz.konechnyi_sektor_raboty) 
                         AS esect, dbo.GetEndSectorNameByID(dbo.Zakaz.SECTOR_ID) AS order_sect, dbo.GetEndSectorNameByID(dbo.Zakaz.direct_sect_id) AS dir_sect, dbo.GetRemoteCustComment(dbo.Zakaz.REMOTE_SET, 
                         dbo.Zakaz.REMOTE_INCOURSE, dbo.Zakaz.REMOTE_ACCEPTED, dbo.Zakaz.REMOTE_DRNUM) AS RemCustComment, dbo.GetSendSMSCustComment(dbo.Zakaz.DRIVER_SMS_SEND_STATE, 
                         dbo.Zakaz.CLIENT_SMS_SEND_STATE, dbo.Zakaz.SMS_SEND_DRNUM, dbo.Zakaz.SMS_SEND_CLPHONE) AS SendSMSCustComment, dbo.GetOrdTarifNameByTId(dbo.Zakaz.TARIFF_ID) AS tarif_name, 
                         dbo.GetRemoteOrderStatusInfo(dbo.Zakaz.REMOTE_SET, dbo.Zakaz.WAITING) AS remoteOrderStatusInfo, dbo.Zakaz.src, dbo.Zakaz.src_status_code, dbo.Zakaz.src_id, dbo.Voditelj.Marka_avtomobilya, 
                         dbo.Voditelj.Gos_nomernoi_znak, dbo.Voditelj.phone_number, ISNULL(dbo.Voditelj.full_name, '') AS driver_name, dbo.Zakaz.src_on_place, dbo.Zakaz.src_wait_sended
FROM            dbo.Zakaz LEFT OUTER JOIN
                         dbo.Voditelj ON dbo.Zakaz.vypolnyaetsya_voditelem = dbo.Voditelj.BOLD_ID

GO

/****** Object:  UserDefinedFunction [dbo].[isCallTimeExpired]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[isCallTimeExpired]  ()
RETURNS smallint
AS
BEGIN      

	DECLARE @db_version INT, @use_call_robot int,
		@sip1_robot_active_time datetime, 
		@robot_active_time_interval int,
		@res smallint;
	
	SELECT TOP 1 @use_call_robot=use_call_robot,
	@sip1_robot_active_time = sip1_robot_active_time, 
	@robot_active_time_interval = robot_active_time_interval
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res=1;
	IF @use_call_robot = 1 BEGIN
		IF (ABS(DATEDIFF(SECOND, @sip1_robot_active_time, 
			GETDATE())) < @robot_active_time_interval)  
		BEGIN
			SET @res=0;
		END;
	END;

   RETURN(@res)
END




GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_CL_SMS_STATUS_CHANGE]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER TRIGGER [dbo].[AFTER_ORDER_CL_SMS_STATUS_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @replace_sms_with_robot smallint,
	@use_call_robot smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@replace_sms_with_robot=replace_sms_with_robot,
	@use_call_robot = use_call_robot 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5))
	BEGIN

	DECLARE @nOldValue smallint, @nNewValue smallint, @newOrderId int,
	@nOldCallValue smallint, @nNewCallValue smallint;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@nOldValue=b.CLIENT_SMS_SEND_STATE,
	@nNewValue=a.CLIENT_SMS_SEND_STATE,
	@nOldCallValue=b.CLIENT_CALL_STATE,
	@nNewCallValue=a.CLIENT_CALL_STATE
	FROM inserted a, deleted b

	IF (@nNewValue<>@nOldValue AND @use_call_robot = 1 AND @nNewValue IN (1,4,3))
	BEGIN
		UPDATE Zakaz SET CLIENT_CALL_STATE = @nNewValue
		WHERE BOLD_ID = @newOrderId;
	END;

	--IF @replace_sms_with_robot = 1 AND
	--(@nNewValue<>@nOldValue AND @nOldValue IN (1,4,3))
	--BEGIN
	--	UPDATE Objekt_vyborki_otchyotnosti 
	--	SET sip1_robot_active_time=CURRENT_TIMESTAMP
	--	WHERE Tip_objekta='for_drivers';
	--END;
	
	IF (@nNewCallValue<>@nOldCallValue AND @nOldCallValue IN (1,4,3))
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti 
		SET sip1_robot_active_time=CURRENT_TIMESTAMP
		WHERE Tip_objekta='for_drivers';
	END;

	END;
	
	
	
END



GO

/****** Object:  View [dbo].[CallRobotOrders]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER VIEW [dbo].[CallRobotOrders]
AS
SELECT        ord.BOLD_ID, ord.Nomer_zakaza, ord.Telefon_klienta, ord.Adres_vyzova_vvodim, ord.Pozyvnoi_ustan, ord.DRIVER_SMS_SEND_STATE, ord.CLIENT_SMS_SEND_STATE, dr.phone_number AS SMS_SEND_DRNUM, 
                         ord.SMS_SEND_CLPHONE, dbo.GetCustClientInfo(ord.BOLD_ID, ord.Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, ord.Uslovn_stoim, ord.WAITING, dbo.GetOrderAMICommand(ord.BOLD_ID) AS AMI_COMMAND,
						 ord.CLIENT_CALL_STATE, dbo.GetOrderOnPlaceAMICommand(ord.BOLD_ID) AS AMI_ONPLACE_COMMAND
FROM            dbo.Zakaz AS ord LEFT OUTER JOIN
                         dbo.Voditelj AS dr ON ord.vypolnyaetsya_voditelem = dr.BOLD_ID
WHERE           (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_CALL_STATE = 1) AND (dbo.isCallTimeExpired() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_CALL_STATE = 4) AND (dbo.isCallTimeExpired() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.CLIENT_CALL_STATE = 3) AND (ABS(DATEDIFF(minute, ord.Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(ord.Uslovn_stoim, 0) > 0) AND (dbo.isCallTimeExpired() = 1)





GO

