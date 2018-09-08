USE [TD5R1]

/****** Object:  UserDefinedFunction [dbo].[GetJSONOrdersBCasts]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER FUNCTION [dbo].[GetJSONOrdersBCasts] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255), @end_sect int,
		@counter int, @prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime;
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT BOLD_ID, Adres_vyzova_vvodim, SECTOR_ID,
	prev_price, cargo_desc, end_adres, client_name, prev_distance,
	Data_predvariteljnaya FROM Zakaz 
	WHERE Zavershyon=0 AND REMOTE_SET>0 AND REMOTE_SET<8;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';
        
		IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			@cargo_desc+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';
		
		SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	RETURN(@res)
END


GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_WBROADCAST]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER TRIGGER [dbo].[AFTER_ORDER_WBROADCAST] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_ford_wbroadcast int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_ford_wbroadcast=ISNULL(use_ford_wbroadcast,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_ford_wbroadcast>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewSyncValue INT,
		@OldSyncValue int, @newDrId int, @oldDrId int,
		@oldSID int, @newSID int, @oldArh int, @newArh int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@oldSID=b.SECTOR_ID,
	@newSID=a.SECTOR_ID,
	@oldArh=b.Arhivnyi,
	@newArh=a.Arhivnyi
	FROM inserted a, deleted b

	IF ( ((@nNewValue<8) AND (@RSOldValue=0) AND (@nNewValue>0) 
		AND (@newDrId<=0))
		OR ((@nNewValue=8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId>0))
		OR ((@nNewValue=0) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId<=0))
		OR ((@nNewValue>0) AND (@nNewValue<8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId<=0) AND (@oldDrId<=0) AND (@oldSID<>@newSID)) 
		OR ((@newArh=1) AND (@newArh<>@oldArh) AND (@RSOldValue>0) 
			AND (@RSOldValue<8) )
		)
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END






GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverOrdersBCasts]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER FUNCTION [dbo].[GetJSONDriverOrdersBCasts] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255), @end_sect int,
		@counter int, @prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime;
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ord.Adres_vyzova_vvodim, ord.SECTOR_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, 
	ord.prev_distance, ord.Data_predvariteljnaya  FROM Zakaz ord
	INNER JOIN DR_ORD_PRIORITY dop ON ord.BOLD_ID=dop.order_id  
	WHERE ord.Zavershyon=0 AND ord.REMOTE_SET>0 AND ord.REMOTE_SET<8 
	AND dop.priority<=0 AND dop.driver_id=@driver_id;
	--AND dop.priority>=-1
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';
        
		IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			@cargo_desc+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';
		
		SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	IF @counter = 0 
	BEGIN
		SET @res = '';
	END

	RETURN(@res)
END


GO

/****** Object:  StoredProcedure [dbo].[InsertOrderWithStatus]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[InsertOrderWithStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @adres varchar(255), 
	@disp_id int, @status int, @order_id int OUT)
AS
BEGIN 

	DECLARE @dr_num int;
	
	SET @dr_num = 0;
	SET @order_id = -1;
	
	SELECT @dr_num=Pozyvnoi FROM Voditelj
	WHERE BOLD_ID=@driver_id;

	if (@dr_num>0) BEGIN

	SELECT * FROM Zakaz ord  
	WHERE ord.Zavershyon=0 
	AND (ord.REMOTE_DRNUM=@dr_num OR ord.Pozyvnoi_ustan=@dr_num);
	
		IF(@@ROWCOUNT=0 OR @status<>25)
		BEGIN
			EXEC InsertNewOrder @bold_id = @order_id OUTPUT;
	
			if (@order_id>0)
			BEGIN
				UPDATE Zakaz SET REMOTE_DRNUM=@dr_num,
				otpuskaetsya_dostepcherom=@disp_id,
				Adres_vyzova_vvodim=@adres,
				REMOTE_SET=@status
				WHERE BOLD_ID=@order_id;
			END
		END
	END
END


GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_SYNC]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AFTER_ORDER_SYNC] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @sync_account int, 
	@clsms_ordground smallint,
	@use_fordbroadcast_priority smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@sync_account=ISNULL(sync_busy_accounting,0),
	@clsms_ordground=ISNULL(clsms_ordground,0),
	@use_fordbroadcast_priority=use_fordbroadcast_priority 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@sync_account>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewSyncValue INT,
		@OldSyncValue int, @newDrId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b

	IF ((@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue) 
		AND (@newDrId>0))
	BEGIN
		EXEC CheckDriverBusy @newDrId;
		EXEC SetDriverStatSyncStatus @newDrId, 1, 0;
	END;
	
	IF ((@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue) 
		AND (@newDrId>0) AND (@clsms_ordground=1))
	BEGIN
		UPDATE Zakaz SET CLIENT_SMS_SEND_STATE=1
		WHERE BOLD_ID=@nOldValue;
	END;

	IF (@NewSyncValue=0) AND (@NewSyncValue<>@OldSyncValue)
	BEGIN
		IF (@use_fordbroadcast_priority = 1) 
		BEGIN
			DELETE FROM DR_ORD_PRIORITY WHERE order_id=@nOldValue;
		END;
		--EXEC RefreshDrOrdPriorityBroadcasts;
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
	
	
END

GO

/****** Object:  StoredProcedure [dbo].[GetJSONRClientStatus]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetJSONRClientStatus] 
	-- Add the parameters for the stored procedure here
	(@client_id int, @phone varchar(255), @full_data smallint, @res varchar(max) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @acc_status int,
		@group_id int, @rsync int, @clsync smallint, @rcorder_status int,
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int, 
		@prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime;
	DECLARE @last_order_time datetime;
	DECLARE @position int;
	
	SET @last_order_time=GETDATE();
   
	SET @res='{"command":"rc_stat","cid":"';
	SET @dr_count = 0;
	SET @counter = 0;
	
	DECLARE @send_wait_info smallint, @dont_show_auto_count smallint,
	@dont_show_auto_coords smallint, @active_dr_count int, 
	@dr_coords varchar(255), @order_start_date varchar(255),
	@rc_status int;
	
	SELECT TOP 1 @send_wait_info=ISNULL(send_wait_info,0),
	@order_sort_dr_assign=ISNULL(clord_sort_dassign,0),
	@dont_show_auto_count=ISNULL(dont_show_auto_count,0),
	@dont_show_auto_coords=ISNULL(dont_show_auto_coords,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @send_wait_info = ISNULL(@send_wait_info,0);
	
	SELECT @dr_count=COUNT(*) FROM
	REMOTE_CLIENTS WHERE id=@client_id;
	
	IF (@dr_count>0)
	BEGIN
	
	EXEC CheckDriverBusy @client_id;
	
	SELECT @acc_status=acc_status, @group_id=group_id,
	@last_order_time=last_visit 
	FROM REMOTE_CLIENTS WHERE id=@client_id;
	
	SET @res=@res+CAST(@client_id as varchar(20))+
		'","cst":"'+CAST(@acc_status as varchar(20))+'"';
	
	SET @active_dr_count=-1;
	if @dont_show_auto_count=0 begin
		select @active_dr_count=COUNT(*) FROM Voditelj WHERE V_rabote=1;
	end

	SET @res=@res+',"dcn":"'+CAST(@active_dr_count as varchar(20))+'"';

	SET @res=@res+',"ocn":"';
	
	SELECT @order_count=COUNT(*)
	FROM Zakaz ord WHERE 
		ord.rclient_id=@client_id AND
		ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
		AND Zavershyon=0 AND NO_TRANSMITTING=0 
		AND REMOTE_SET NOT IN(16,100);
	
	IF (@order_count>0)
	BEGIN
	
		SET @res=@res+
			CAST(@order_count as varchar(20))+'"';
	
		IF (@order_sort_dr_assign=1 AND 1=0)
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, (Telefon_klienta+
			':'+Adres_vyzova_vvodim) as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID, REMOTE_SET, on_place, Uslovn_stoim, ISNULL(tmhistory,''), ISNULL(status_accumulate,''), dbo.GetDrJSONCoordsByNum(Pozyvnoi_ustan), CONVERT(varchar, DATEPART(hh, Nachalo_zakaza_data))+':'+CONVERT(varchar, DATEPART(mi, Nachalo_zakaza_data))+' '+CONVERT(varchar, DATEPART(dd, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(mm, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(yyyy, Nachalo_zakaza_data)), rclient_status
			FROM Zakaz ord WHERE 
			ord.rclient_id=@client_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(16,100) 
			ORDER BY ISNULL(ord.dr_assign_date,GETDATE()) ASC;
		END
		ELSE
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT ord.BOLD_ID, ord.Adres_vyzova_vvodim as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, 
			ord.PR_POLICY_ID, ord.REMOTE_SET, ord.on_place, ord.Uslovn_stoim, 
			ISNULL(ord.tmhistory,''), ISNULL(ord.status_accumulate,''), 
			dbo.GetDrJSONCoordsByNum(ord.Pozyvnoi_ustan), 
			CONVERT(varchar, DATEPART(hh, ord.Nachalo_zakaza_data))+':'+
			CONVERT(varchar, DATEPART(mi, ord.Nachalo_zakaza_data))+' '+
			CONVERT(varchar, DATEPART(dd, ord.Nachalo_zakaza_data)) + '.' +
			 CONVERT(varchar, DATEPART(mm, ord.Nachalo_zakaza_data)) + '.' + 
			 CONVERT(varchar, DATEPART(yyyy, ord.Nachalo_zakaza_data)), 
			 ord.rclient_status, ISNULL(dr.Gos_nomernoi_znak,''), ISNULL(dr.Marka_avtomobilya,''),
			 ISNULL(dr.phone_number, ''),
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya
			FROM Zakaz ord 
			LEFT JOIN Voditelj dr ON ord.vypolnyaetsya_voditelem=dr.BOLD_ID  WHERE 
			ord.rclient_id=@client_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(16,100)
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END;
		
		DECLARE @ors int, @opl int, @osumm int, @tmh varchar(1000), @stac varchar(1000),
		@dr_gn varchar(255), @dr_mark varchar(255), @dr_phone varchar(50);
		/*Открываем курсор*/
		OPEN @CURSOR
		/*Выбираем первую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, @order_start_date, @rc_status, @dr_gn, @dr_mark, @dr_phone, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date;
		/*Выполняем в цикле перебор строк*/
		WHILE @@FETCH_STATUS = 0
		BEGIN
		 
			SET @res=@res+',"oid'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@order_id as varchar(20))+'","odt'+
				CAST(@counter as varchar(20))+'":"'+
				REPLACE(REPLACE(@order_data,'"',' '),'''',' ')+'"'+',"ors'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@ors as varchar(20))+'"'+',"opl'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@opl as varchar(20))+'"'+',"osumm'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@osumm as varchar(20))+'"'+',"tmh'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@tmh as varchar(20))+'"'+',"stac'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@stac as varchar(20))+'"'+',"dgn'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_gn+'"'+',"dmrk'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_mark +'"'+',"dphn'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_phone +'"'+',"osdt'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@order_start_date as varchar(20))+'"'+',"rcst'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@rc_status as varchar(20))+'"'+REPLACE( REPLACE(@dr_coords,'lat',('lat'+CAST(@counter as varchar(20)))) ,'lon',('lon'+CAST(@counter as varchar(20))));
			IF (@rsync<>0)
			BEGIN
				SET @res=@res+',"sn'+
				CAST(@counter as varchar(20))+'":"y"';
			END;
			IF (@send_wait_info=1)
			BEGIN
				SET @res=@res+',"wtr'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@waiting as varchar(20))+'"';
			END;
			IF (@tarif_id<>0)
			BEGIN
				SET @res=@res+',"tar'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@tarif_id as varchar(20))+'"';
			END;
			
			SET @opt_comb=ISNULL(@opt_comb,'-');
			IF (@opt_comb='')
			BEGIN
				SET @opt_comb='-';
			END;
			
			SET @res=@res+',"oo'+
			CAST(@counter as varchar(20))+'":"'+
			@opt_comb+'"';
			
			IF (@tplan_id>=0)
			BEGIN
			SET @res=@res+',"otpid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'"';
			END;
			
			IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cargo_desc,'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, @order_start_date, @rc_status, @dr_gn, @dr_mark, @dr_phone, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date;
		END
		CLOSE @CURSOR
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';
	END;
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'-1","msg_end":"ok"}';	
	END;
	
END






GO

/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[SMSSendOrders]
AS
SELECT        ord.BOLD_ID, ord.Nomer_zakaza, ord.Telefon_klienta, ord.Adres_vyzova_vvodim, ord.Pozyvnoi_ustan, ord.DRIVER_SMS_SEND_STATE, ord.CLIENT_SMS_SEND_STATE, dr.phone_number AS SMS_SEND_DRNUM, 
                         ord.SMS_SEND_CLPHONE, dbo.GetCustClientInfo(ord.BOLD_ID, ord.Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, ord.Uslovn_stoim, ord.WAITING, dbo.GetOrderAMICommand(ord.BOLD_ID) AS AMI_COMMAND, 
						 dbo.GetOrderOnPlaceAMICommand(ord.BOLD_ID) AS AMI_ONPLACE_COMMAND
FROM            dbo.Zakaz AS ord LEFT OUTER JOIN
                         dbo.Voditelj AS dr ON ord.vypolnyaetsya_voditelem = dr.BOLD_ID
WHERE        (ord.DRIVER_SMS_SEND_STATE = 1) AND (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_SMS_SEND_STATE = 1) AND (dbo.isSMSWithCallRaplace() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_SMS_SEND_STATE = 4) AND (dbo.isSMSWithCallRaplace() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.CLIENT_SMS_SEND_STATE = 3) AND (dbo.isSMSWithCallRaplace() = 1) AND (ABS(DATEDIFF(minute, ord.Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(ord.Uslovn_stoim, 0) > 0)



GO

/****** Object:  StoredProcedure [dbo].[CheckClientRegistration]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER PROCEDURE [dbo].[CheckClientRegistration] 
	-- Add the parameters for the stored procedure here
	(@phone varchar(255),@client_id int OUT, @req_trust smallint OUT, 
	@isagainr smallint OUT, @acc_status int OUT)
AS
BEGIN 
    DECLARE @counter int, @max_clrereg_cnt int, 
		@cl_count int;
	
	SELECT TOP 1 @max_clrereg_cnt=ISNULL(max_clrereg_cnt,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @client_id=ISNULL(@client_id,-1);
	SET @phone=ISNULL(@phone,'');
	SET @req_trust=1;
	SET @isagainr=0;
	SET @acc_status=-1;
	
	IF (@phone<>'')
	BEGIN
		if @client_id>0
		begin
			SELECT @cl_count=COUNT(*)
			from REMOTE_CLIENTS rc
			WHERE rc.id=@client_id and rc.phone=@phone;
			---Полная верная аутентификация 
			if @cl_count>0
			begin
				update REMOTE_CLIENTS SET trust_require=0,
				isagainreg=0, acc_status=1 where id=@client_id;
				SET @req_trust=0;
				SET @isagainr=0;
				SET @acc_status=1;
			end
			---неудачная аутентификация
			else
			begin
				
				SELECT @cl_count=COUNT(*)
				from REMOTE_CLIENTS rc
				WHERE rc.phone=@phone and rc.phone<>'-1';
				---неуд аутентификация но запись с тел есть уже
				---это маловероятно так как ид и телефон вносятся 
				---однократно и стираются вместе в устройстве
				if @cl_count>0
				begin
					SET @req_trust=1;
					SET @isagainr=1;
					SET @acc_status=-1;
					set @client_id=-1
				end
				---иначе просто заводим новый аккаунт
				else
				begin
					if LEN(@phone) >= 5 begin
					INSERT INTO REMOTE_CLIENTS(phone, last_visit,trust_require, 
					acc_status) VALUES(@phone, GETDATE(), 1, 0);
					if @@ROWCOUNT>0
					begin
						SET @req_trust=1;
						SET @acc_status=0;
						SET @isagainr=0;
						SELECT @client_id=id FROM REMOTE_CLIENTS 
						where phone=@phone;
						SET @cl_count=@@ROWCOUNT;
					end
					else
					begin
						set @client_id=-1
					end
					end
					else
					begin
						set @client_id=-1
					end
				end
			end
		end
		else
		begin
			---если передается только телефон для регистрации
			SET @req_trust=0;
			SET @isagainr=0;
			SET @acc_status=0;
			SELECT @cl_count=COUNT(*)
			from REMOTE_CLIENTS rc
			WHERE rc.phone=@phone;
			---если найдена уже запись с данным телефоном
			---значит идет попытка взлома или регистрации заново
			---на новом устройстве
			if @cl_count>0 begin
				SET @req_trust=1;
				SET @acc_status=0;
				SET @isagainr=1;
				UPDATE REMOTE_CLIENTS 
				SET againregscnt=againregscnt+1,
				trust_require=1, isagainreg=1, acc_status=0
				WHERE phone=@phone;
				SELECT @client_id=id
				from REMOTE_CLIENTS rc
				WHERE rc.phone=@phone;
			end
			---не найдена запись, добавляем аккаунт
			else
			begin
				if LEN(@phone) >= 5 begin
				INSERT INTO REMOTE_CLIENTS(phone, last_visit,trust_require, 
					acc_status) VALUES(@phone, GETDATE(), 1, 0);
				if @@ROWCOUNT>0
				begin
					SET @req_trust=1;
					SET @acc_status=0;
					SET @isagainr=0;
					SELECT @client_id=id FROM REMOTE_CLIENTS 
					where phone=@phone;
					SET @cl_count=@@ROWCOUNT;
				end
				else
				begin
					set @client_id=-1
				end	
				end
				else
				begin
					set @client_id=-1
				end	
			end
		end
	END
	ELSE
	BEGIN
		SET @client_id=-1
	END
    
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetOrderAMICommand]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetOrderAMICommand]  ( @oid int)
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
	@waiting int;
   
   select @call_demon_locsip_name=call_demon_locsip_name,
		@demon_call_ctx=demon_call_ctx, @demon_call_virtext=demon_call_virtext,
		@demon_call_priority=demon_call_priority, @demon_call_timeout=demon_call_timeout,
		@demon_callerid=demon_callerid
   from Objekt_vyborki_otchyotnosti where Tip_objekta='for_drivers'
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @clphone=Telefon_klienta, @dr_id=vypolnyaetsya_voditelem,
   @waiting = WAITING 
   FROM Zakaz WHERE BOLD_ID=@oid;
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @avar1=avar1, @avar2=avar2, @avar3=avar3, @avar4=avar4,
   @avar5=avar5, @avar6=avar6, @avar7=avar7, @avar8=avar8, @avar9=avar9, @avar10=avar10 
   FROM Voditelj WHERE BOLD_ID=@dr_id;
   
   IF (@@ROWCOUNT>0) BEGIN

		SET @avar9 = 6;
		IF @waiting = 1 
		BEGIN
			SET @avar9 = 1;
		END;
		IF @waiting = 5 
		BEGIN
			SET @avar9 = 2;
		END;
		IF @waiting = 10 
		BEGIN
			SET @avar9 = 3;
		END;
		IF @waiting = 15 
		BEGIN
			SET @avar9 = 4;
		END;
		IF @waiting = 20 
		BEGIN
			SET @avar9 = 5;
		END;

		SET @res = 'Action: Originate***___CRLF'+
		'Channel: SIP/'+@call_demon_locsip_name+'/+7'+@clphone+'***___CRLF'+
		'Context: '+@demon_call_ctx+'***___CRLF'+
		'Exten: '+@demon_call_virtext+'***___CRLFPriority: '+
		@demon_call_priority+'***___CRLF'+
		'Callerid: '+@demon_callerid+'***___CRLFTimeout: '+
		@demon_call_timeout+'***___CRLF'+
		'Variable: v1='+CAST(@avar1 as varchar(50))+
		'***___CRLFVariable: v2='+CAST(@avar2 as varchar(50))+'***___CRLF'+
		'Variable: v3='+CAST(@avar3 as varchar(50))+
		'***___CRLFVariable: v4='+CAST(@avar4 as varchar(50))+'***___CRLF'+
		'Variable: v5='+CAST(@avar5 as varchar(50))+
		'***___CRLFVariable: v6='+CAST(@avar6 as varchar(50))+'***___CRLF'+
		'Variable: v7='+CAST(@avar7 as varchar(50))+
		'***___CRLFVariable: v8='+CAST(@avar8 as varchar(50))+'***___CRLF'+
		'Variable: v9='+CAST(@avar9 as varchar(50))+
		'***___CRLFVariable: v10='+CAST(@avar10 as varchar(50))+'***___CRLF***___CRLF'
   END
   END
   END

   if @res=NULL begin
       SET @res='NONE'
   end  

   RETURN(@res)
END

GO

/****** Object:  Trigger [dbo].[AFTER_REMOTE_CLOSING]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AFTER_REMOTE_CLOSING] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue int, @order_count int,
		@NewArhValue int, @NewComplValue int,
		@OldArhValue int, @OldComplValue int,
		@newDrId int, @oldDrId int,
		@oldDiscount int, @oldSpec int,
		@dr_sect int, @newEndSect int, 
		@oldEndSect int, @endSectNum int,
		@oldPhone varchar(255), @newPhone varchar(255),
		@oldAdr varchar(255), @newAdr varchar(255),
		@oldINum varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@old_bonus_num int,
		@newDrNum int, @oldDrNum int, @ord_summ DECIMAL(28,10),
		@dont_reset_time smallint;
		
	SET @view_bonus=0;
	SET @view_ab_bonus=0;
	SET @bonus_count=0;
	SET @ab_bonus_count=0;
	SET @use_ab_account=0;
	
	SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
		@view_ab_bonus=ISNULL(view_ab_bonuses,0),
		@use_ab_account = ISNULL(use_ab_account,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@NewArhValue=a.Arhivnyi,
	@NewComplValue=a.Zavershyon,
	@OldArhValue=b.Arhivnyi,
	@OldComplValue=b.Zavershyon,
	@newDrId = a.vypolnyaetsya_voditelem,
	@oldDrId = b.vypolnyaetsya_voditelem,
	@oldDiscount = b.Nomer_skidki,
	@oldSpec = b.Slugebnyi,
	@newEndSect = a.konechnyi_sektor_raboty,
	@oldEndSect = b.konechnyi_sektor_raboty,
	@newPhone = a.Telefon_klienta,
	@oldPhone = b.Telefon_klienta,
	@newAdr = a.Adres_vyzova_vvodim,
	@oldAdr = b.Adres_vyzova_vvodim,
	@newINum = a.Adres_okonchaniya_zayavki,
	@oldINum = b.Adres_okonchaniya_zayavki,
	@old_bonus_num = ISNULL(b.Nomer_skidki,0),
	@newDrNum = ISNULL(a.REMOTE_DRNUM,0), 
	@oldDrNum = ISNULL(b.REMOTE_DRNUM,0),
	@ord_summ = ISNULL(a.Uslovn_stoim,0) -- Get the Old and New values
	FROM inserted a, deleted b

	SET @newDrId = ISNULL(@newDrId, 0)
	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @newDrId > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @newDrId;
	END

	IF @nNewValue=100 
	BEGIN
		DELETE FROM ORDER_ACCEPTING WHERE 
		ORDER_ACCEPTING.ORDER_ID=@nOldValue;
	END;
	
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
	
	DECLARE @inum_count int, @inum_int int,
		@inum_phone varchar(255), @inum_adr varchar(255);
	
	DECLARE @dict_adr varchar(255);
	SET @dict_adr='';
	SET @inum_adr='';
	SET @inum_count=0;
	SET @inum_int=0;
	
	IF ((@newPhone<>@oldPhone) OR 
		(@newAdr<>@oldAdr))
	BEGIN
				
		if (@newPhone<>@oldPhone)
		BEGIN
		
			UPDATE Zakaz 
			SET Nachalo_zakaza_data=CURRENT_TIMESTAMP,
				Data_podachi=CURRENT_TIMESTAMP
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			IF(NOT (ISNULL(@oldPhone,'')=''))
			BEGIN
				UPDATE Sootvetstvie_parametrov_zakaza
				SET Summarn_chislo_vyzovov=
				Summarn_chislo_vyzovov-1
				WHERE Telefon_klienta=@oldPhone;
			END;
			
			IF(NOT (ISNULL(@newPhone,'')=''))
			BEGIN
			
				DECLARE @bad_count int,
					@bad_adr varchar(255);
					
				SET @bad_adr='';
			
				SELECT @bad_count=COUNT(*)	
				FROM Plohie_klienty 
				WHERE Telefon_klienta=@newPhone;
				
				IF (@bad_count>0)
				BEGIN
				
					SELECT TOP 1 @bad_adr=Adres_vyzova_vvodim	
					FROM Plohie_klienty 
					WHERE Telefon_klienta=@newPhone;
					
					SET @bad_adr=ISNULL(@bad_adr,'');
				
					UPDATE Zakaz 
					SET Nomer_skidki=-1000,
						Adres_vyzova_vvodim=@bad_adr
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
			
				UPDATE Sootvetstvie_parametrov_zakaza
				SET Summarn_chislo_vyzovov=
					Summarn_chislo_vyzovov+1
				WHERE Telefon_klienta=@newPhone;
				
				IF ((@use_ab_account>0) AND 
					(ISNULL(@oldINum,'')=''))
				BEGIN
				
					SELECT @inum_count=COUNT(*)
					FROM Persona
					WHERE Rabochii_telefon=@newPhone AND 
					Elektronnyi_adres='Индивидуальный клиент';
					
					IF (@inum_count>0)
					BEGIN
					
						SELECT TOP 1
						@inum_adr=Ulica,
						@inum_int=Korpus
						FROM Persona
						WHERE Rabochii_telefon=@newPhone AND 
						Elektronnyi_adres='Индивидуальный клиент';
						
						SET @inum_int=ISNULL(@inum_int, 0);
						
						IF (@inum_int>0)
						BEGIN
							if ((NOT ISNULL(@newAdr,'')='') OR 
								(ISNULL(@inum_adr,'')='')) 
								
							BEGIN
								UPDATE Zakaz 
								SET Adres_okonchaniya_zayavki=@inum_int
								FROM Zakaz JOIN inserted i
								ON Zakaz.BOLD_ID=i.BOLD_ID;
							END
							ELSE
							BEGIN
								UPDATE Zakaz 
								SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@inum_adr),
									Adres_okonchaniya_zayavki=@inum_int
								FROM Zakaz JOIN inserted i
								ON Zakaz.BOLD_ID=i.BOLD_ID;
							END;
						END;
						
					END;
					
				END;
			
				IF ((@inum_count=0) OR (ISNULL(@inum_adr,'')='') 
					OR (@use_ab_account<=0) OR (@inum_int<=0))
				BEGIN
				
					SELECT @ordDictItCount=COUNT(*)
					FROM Sootvetstvie_parametrov_zakaza
					WHERE Telefon_klienta=@newPhone;
						
					IF(@ordDictItCount>0)
					BEGIN
					
						SELECT TOP 1 @bonus_count=Summarn_chislo_vyzovov,
							@dict_adr=Adres_vyzova_vvodim
						FROM Sootvetstvie_parametrov_zakaza
						WHERE Telefon_klienta=@newPhone;
						
						SET @bonus_num=0;
						SET @bonus_count=ISNULL(@bonus_count, 0);
						SET @dict_adr=ISNULL(@dict_adr, '---');
					
						if ((@view_bonus>0) AND 
							(@bonus_count>0) and 
							@newPhone=REPLACE(@newPhone,'Фиктивная',''))
						begin
							SELECT @bonus_num=
								dbo.GetDiscountNumOnOrderCount
								(@bonus_count);
						end;
						
						IF ((@bad_count>0) AND (ISNULL(@bonus_num,0)=0))
						BEGIN
							SET @bonus_num=-1000;
						END;
						
						IF (ISNULL(@bonus_num,0)=0)
						BEGIN
							SET @bonus_num=@old_bonus_num;
						END;
						
						if (@view_bonus>0)
						BEGIN
						if ((NOT ISNULL(@newAdr,'')='') OR 
							(ISNULL(@dict_adr,'')=''))
						BEGIN
							UPDATE Zakaz 
							SET Nomer_skidki=@bonus_num
							FROM Zakaz JOIN inserted i
							ON Zakaz.BOLD_ID=i.BOLD_ID;
						END
						ELSE
						BEGIN
							UPDATE Zakaz 
							SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
								Nomer_skidki=@bonus_num
							FROM Zakaz JOIN inserted i
							ON Zakaz.BOLD_ID=i.BOLD_ID;
						END;
						END
						ELSE
						BEGIN
							if ((ISNULL(@newAdr,'')='') AND 
							(ISNULL(@inum_adr,'')='') AND 
							((ISNULL(@dict_adr,'')<>'') OR 
							(ISNULL(@bonus_num,0)<>0) ) )
							BEGIN
								IF (@inum_count=0) 
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
									Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr)
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END;
						END;
						
					END;
							
				END;
			
			
			END;	
				
		end;
		
		if (@newAdr<>@oldAdr)
		BEGIN
		
			if ((ISNULL(@newAdr,'')<>'') and (ISNULL(@oldAdr,'')<>'')
				and (@oldDrId>0))
			EXEC SetDriverStatSyncStatus @oldDrId, 1, 0;
		
			if((ISNULL(@newPhone,'')<>'') AND
				(ISNULL(@newAdr,'')<>''))
			BEGIN
				SELECT @ordDictItCount=COUNT(*)
				FROM Sootvetstvie_parametrov_zakaza
				WHERE Telefon_klienta=@newPhone;
				
				IF(@ordDictItCount=0)
				BEGIN
					EXEC InsertNewOrderDictItem 
						@newPhone, @newAdr,
						1, @ordDictItCount;
				END;
				
			END;
		END;
		
	END;
	
	--IF (@newDrId<>@oldDrId)
	--BEGIN
	--	UPDATE Zakaz 
	--	SET Nachalo_zakaza_data=CURRENT_TIMESTAMP
	--	FROM Zakaz JOIN inserted i
	--	ON Zakaz.BOLD_ID=i.BOLD_ID;
	--END;
	
	IF (@newEndSect<>@oldEndSect)
	BEGIN
	
		SELECT @endSectNum=Nomer_sektora 
		FROM Sektor_raboty
		WHERE BOLD_ID=@newEndSect;
	
		UPDATE Voditelj 
		SET rabotaet_na_sektore=@newEndSect,
			Nomer_posl_sektora = @endSectNum
		WHERE BOLD_ID=@newDrId;
	END;
	
	DECLARE @stat_dr_count int;
	
	IF ((@nNewValue<8) AND (@RSOldValue=8))
	BEGIN
		IF (@oldDrId>0)
		BEGIN
			
			UPDATE Zakaz 
			SET Pozyvnoi_ustan=0, 
			REMOTE_DRNUM=0,
			vypolnyaetsya_voditelem=-1
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			EXEC CheckDriverBusy @oldDrId;
			EXEC SetDriverStatSyncStatus @oldDrId, 1, @stat_dr_count;
		END;	
	END;
	
	IF (((@nNewValue=100 OR @nNewValue=8 
		OR @nNewValue=16 OR @nNewValue=0 OR @nNewValue=26) 
		AND @RSOldValue<>@nNewValue) OR 
		(@newDrId<>@oldDrId) OR 
		(@NewComplValue<>@OldComplValue))
	BEGIN
	
		DECLARE @sdr_id int;
	
		IF ((@nNewValue=8) AND 
			(@oldDrId<=0) AND (@RSOldValue IN (9, 18, 23, 25))
			AND (@newDrId=@oldDrId) AND (@newDrNum>0))
		BEGIN
			SELECT TOP 1 @sdr_id=ISNULL(BOLD_ID,-1)
			FROM Voditelj
			WHERE Pozyvnoi=@newDrNum;
			
			IF (@sdr_id>0)
			BEGIN
				UPDATE Zakaz 
				SET Pozyvnoi_ustan=@newDrNum,
				vypolnyaetsya_voditelem=@sdr_id
				FROM Zakaz JOIN inserted i
				ON Zakaz.BOLD_ID=i.BOLD_ID;
				
				EXEC CheckDriverBusy @sdr_id;
				EXEC SetDriverStatSyncStatus @sdr_id, 1, @stat_dr_count;
			END;	
		END;
	
		IF ((@oldDrId>0) AND (@newDrId<>@oldDrId))
		BEGIN
			EXEC CheckDriverBusy @oldDrId;
			EXEC SetDriverStatSyncStatus @oldDrId, 1, @stat_dr_count;
			
			UPDATE Voditelj SET SYNC_STATUS=1
			WHERE BOLD_ID=@oldDrId;
		END;
		
		IF ((@NewComplValue<>@OldComplValue) AND 
		(@NewComplValue=1))
		BEGIN
		
			--SELECT @dr_sect=rabotaet_na_sektore
			--FROM Voditelj
			--WHERE BOLD_ID=@newDrId;
			
			IF ((@nNewValue>0) AND (@nNewValue<100))
			BEGIN
				UPDATE Zakaz 
				SET REMOTE_SET=100
				FROM Zakaz JOIN inserted i
				ON Zakaz.BOLD_ID=i.BOLD_ID;
			END;
			
			UPDATE Zakaz 
			SET Konec_zakaza_data=CURRENT_TIMESTAMP--,
			--	sektor_voditelya=ISNULL(@dr_sect, -1)
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			
			if ((@oldDiscount>0) OR (@oldSpec=1) OR (@NewArhValue=1))
			BEGIN
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=DATEADD(day,-10,CURRENT_TIMESTAMP),
					DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;
			END
			ELSE
			BEGIN
				if ((@RSOldValue<=8) and (@ord_summ>0))
				BEGIN
				IF ISNULL(@dont_reset_time, 0) <> 1 BEGIN
					UPDATE Voditelj 
					SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
					WHERE BOLD_ID=@newDrId;
				END

				UPDATE Voditelj 
				SET DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;

				END
				else
				UPDATE Voditelj 
				SET DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;
			END;
		
		END;
		
		--EXEC CheckDriverBusy @oldDrId;
		EXEC CheckDriverBusy @newDrId;
		EXEC SetDriverStatSyncStatus @newDrId, 1, @stat_dr_count;
		
		--UPDATE Voditelj SET SYNC_STATUS=1
		--WHERE BOLD_ID=@newDrId;
	END;
	
	IF (@RSOldValue<>@nNewValue)
	BEGIN
		UPDATE Zakaz 
		SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		FROM Zakaz JOIN inserted i
		ON Zakaz.BOLD_ID=i.BOLD_ID;
	END;
	
	IF ((@NewArhValue=1) AND  
		(@NewArhValue<>@OldArhValue))
	BEGIN
	
		IF (ISNULL(@newPhone,'')<>'') BEGIN
			UPDATE Sootvetstvie_parametrov_zakaza 
			SET Summarn_chislo_vyzovov=Summarn_chislo_vyzovov-1
			WHERE Telefon_klienta=@newPhone;
		END;
	
		IF ((@use_ab_account>0) 
			AND (ISNULL(@newINum,'')<>'')) BEGIN
			UPDATE Persona 
			SET Dom=ISNULL(Dom,0)-1
			WHERE CAST(Korpus AS VARCHAR(255))=@newINum AND 
			Elektronnyi_adres='Индивидуальный клиент';
		END;
		
		IF (@oldDrId>0)
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=DATEADD(day,-10,CURRENT_TIMESTAMP)
			WHERE BOLD_ID=@oldDrId;
		END;
	END;
	
	UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	
	END;
	
END
GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_UPDATE]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[AFTER_DRIVER_UPDATE] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int,
		@dont_reset_dr_queue smallint;
	
	SET @has_dr_changes = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
		@dont_reset_dr_queue=ISNULL(dont_reset_dr_queue,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
	DECLARE @nOldValue int, @nNewValue int,
		@RSOldValue int, @itsRemoteDr int,
		@NewLaunchValue int, @NewComplValue int,
		@OldLaunchValue int, @OldComplValue int,
		@newSectId int, @oldSectId int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @oldSyncStat int, @newSyncStat INT,
		@oldOrdDate DATETIME, @newOrdDate DATETIME,
		@oldHasAEv smallint, @newHasAEv smallint,
		@aEvCount int, @newRemoteDr int, @dont_restime smallint;
		
	
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_STATUS,
	@RSOldValue=b.REMOTE_STATUS,
	@NewLaunchValue=a.Na_pereryve,
	@NewComplValue=a.Zanyat_drugim_disp,
	@OldLaunchValue=b.Na_pereryve,
	@OldComplValue=b.Zanyat_drugim_disp,
	@newSectId = a.rabotaet_na_sektore,
	@oldSectId = b.rabotaet_na_sektore,
	@newOnLineValue = a.V_rabote,
	@oldOnLineValue = b.V_rabote,
	@newRemoteDr = a.ITS_REMOTE_CLIENT,
	@itsRemoteDr = b.ITS_REMOTE_CLIENT,
	@oldSyncStat = b.SYNC_STATUS,
	@newSyncStat = a.SYNC_STATUS,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki,
	@oldHasAEv = b.has_active_events,
	@newHasAEv = a.has_active_events, -- Get the Old and New values
	@dont_restime = b.dont_reset_time
	FROM inserted a, deleted b;
	
	IF ((@itsRemoteDr=0) OR (1=1))
	BEGIN
	
		IF (@itsRemoteDr<>@newRemoteDr)
		BEGIN
			SET @has_dr_changes = 1;
		END;
	
		IF ((@OldLaunchValue=1) AND
			(@NewLaunchValue<>@OldLaunchValue))
		BEGIN
			SET @has_dr_changes = 1;
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Снялся с перерыва', -1, @order_id, 1;
		END;
		
		IF ((@OldLaunchValue=0) AND
			(@NewLaunchValue<>@OldLaunchValue))
		BEGIN
			SET @has_dr_changes = 1;
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Взял перерыв', -1, @order_id, 1;
		END;
		
		IF ((@oldOnLineValue=1) AND
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
			SET @has_dr_changes = 1;
			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Снятие с линии', -1, @order_id, 1;
		END;
		
		IF ((@oldOnLineValue=0) AND
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
			SET @has_dr_changes = 1;

			IF @dont_restime <> 1 BEGIN
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
				WHERE BOLD_ID=@nOldValue;
			END

			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
			EXEC InsertFictiveDrOrder @nOldValue, 
			'Постановка на линию', -1, @order_id, 1;
		END;
		
		IF ((@oldOrdDate<>@newOrdDate) OR
			(@NewComplValue<>@OldComplValue))
		BEGIN
			SET @has_dr_changes = 1;
		END;
		
		IF ((@OldComplValue=0) AND
			(@NewComplValue<>@OldComplValue))
		BEGIN
		
			UPDATE Voditelj 
			SET Na_pereryve=0 
			WHERE BOLD_ID=@nOldValue;
		
		END;
		
		IF ((@newSectId<>@oldSectId))
		BEGIN
		
			
			
			if (@dont_reset_dr_queue<>1)
			begin
			
				SET @has_dr_changes = 1;
				EXEC InsertFictiveDrOrder @nOldValue, 
				'Перенос на сектор', -1, @order_id, 1;
			
				IF @dont_restime <> 1 BEGIN
					UPDATE Voditelj 
					SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
					WHERE BOLD_ID=@nOldValue;
				END
			end
			else
			begin
				SET @has_dr_changes = 1;
				EXEC InsertFictiveDrOrder @nOldValue, 
				'Перенос на сектор', -1, @order_id, -1;
			end
		
		END;
		
		
		
	END;
	
	IF (@newHasAEv<>@oldHasAEv)
	BEGIN
		
		SET @has_dr_changes = 1;
		
	END;
	
	IF ((@nNewValue<>@RSOldValue)) --OR (@newSyncStat<>@oldSyncStat))
	BEGIN
	
		SET @has_dr_changes = 1;
	
		UPDATE Voditelj 
		SET LAST_STATUS_TIME=CURRENT_TIMESTAMP
		WHERE BOLD_ID=@nOldValue;
	END;	
	
	IF (@has_dr_changes>0)
	BEGIN
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	END;
	
	END;

END


GO

/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus3]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SetOrderCompleteAttemptStatus3] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int, @tm_distance int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3,
	Zakaz.fixed_time=@order_time,
	Zakaz.tm_distance=@tm_distance 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);
	
	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
	SET @count=@@ROWCOUNT;
	
	EXEC CheckDriverBusy @driver_id;
	
	END
	
END



GO

/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SetOrderCompleteAttemptStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);

	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
	SET @count=@@ROWCOUNT;
	
	--ORDER_DRV_COMPLETE = 15;
		--ORDER_COMLETE_ALLOW = 16;
		--ORDER_COMPLETE_ALLOW_USER_WAIT = 26;
		--ORDER_CLOSE_ASK_WAIT = 27;
	
	--IF (@count>0)
	--BEGIN
	--	UPDATE Zakaz SET Uslovn_stoim=@summ
	--	WHERE (Zakaz.BOLD_ID=@order_id) AND
	--	(@status in (15,16,26));
	--END;
	
	EXEC CheckDriverBusy @driver_id;
	
	END
	
END


GO

/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus2]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SetOrderCompleteAttemptStatus2] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3,
	Zakaz.fixed_time=@order_time 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);

	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
	SET @count=@@ROWCOUNT;
	
	--ORDER_DRV_COMPLETE = 15;
		--ORDER_COMLETE_ALLOW = 16;
		--ORDER_COMPLETE_ALLOW_USER_WAIT = 26;
		--ORDER_CLOSE_ASK_WAIT = 27;
	
	--IF (@count>0)
	--BEGIN
	--	UPDATE Zakaz SET Uslovn_stoim=@summ
	--	WHERE (Zakaz.BOLD_ID=@order_id) AND
	--	(@status in (15,16,26));
	--END;
	
	EXEC CheckDriverBusy @driver_id;
	
	END
	
END



GO

/****** Object:  Trigger [dbo].[AFTER_DRIVER_WORKSTART]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AFTER_DRIVER_WORKSTART] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @manual_day_sale int, @count int,
		@all_day_payment decimal(28, 10), @pt_offset int;
	
	SET @manual_day_sale = 0;
	SET @count = 0;
	SET @all_day_payment = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@manual_day_sale = ISNULL(manual_day_sale,0),
	@all_day_payment = ISNULL(day_payment,0),
	@pt_offset = ISNULL(dayli_pay_time_offset,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if ((@db_version>=5) AND (@manual_day_sale=1))
	BEGIN
	
	DECLARE @nOldValue int, @itsRemoteDr int,
		@dr_num int, @day_payment decimal(28, 10),
		@corruptedNew int, @dr_daily_sale smallint,
		@newDrNum int, @corruptedOld int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @paymentCount int,
		@oldOrdDate DATETIME, @newOrdDate DATETIME, @bold_id int,
		@dont_restime smallint;
		
	
	SELECT @nOldValue=b.BOLD_ID, 
	@dr_num=a.Pozyvnoi,
	@day_payment=ISNULL(a.day_payment, 0),
	@corruptedOld=b.Zanyat_drugim_disp,
	@corruptedNew=a.Zanyat_drugim_disp,
	@dr_daily_sale=a.manual_day_sale,
	@newDrNum = a.Pozyvnoi,
	@newOnLineValue = a.V_rabote,
	@oldOnLineValue = b.V_rabote,
	@itsRemoteDr = a.ITS_REMOTE_CLIENT,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki, -- Get the Old and New values
	@dont_restime = b.dont_reset_time
	FROM inserted a, deleted b;

		IF (@newOnLineValue<>@oldOnLineValue) AND (@dont_restime = 1)
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			WHERE BOLD_ID=@nOldValue;
		END
		
		IF (((@newOnLineValue<>@oldOnLineValue) AND 
			(@newOnLineValue=1)) or 
			((@corruptedNew<>@corruptedOld) AND 
			(@corruptedNew=1)))
		BEGIN
		
				--проверка насройки отчисления по данному водителю
				IF (@dr_daily_sale=1 AND ((@day_payment>0) or (@all_day_payment>0)))
				BEGIN
					--проверка актуальности времени
					--проверка отчислений в эти сутки
					IF (@day_payment<=0) BEGIN
						SET @day_payment=@all_day_payment;
					END
					SET @paymentCount=0;
					DECLARE @edate datetime, @temp_date datetime, @last_14hours_count int;
					SET @temp_date = DATEADD(hour,-24,GETDATE());
					SELECT @last_14hours_count=COUNT(*) FROM Vyruchka_ot_voditelya vv
					WHERE vv.Pozyvnoi=@newDrNum and (vv.Data_postupleniya>@temp_date) and 
					(vv.Data_postupleniya<GETDATE()) and vv.ITS_DAYLY=1;
					--if()
					--set @edate = DATEADD(minute,-@pt_offset,GETDATE());
					IF (@last_14hours_count=0) 
					BEGIN
					set @edate = GETDATE();
					SELECT @paymentCount=COUNT(*) FROM Vyruchka_ot_voditelya vv
					WHERE vv.Pozyvnoi=@newDrNum and CAST(vv.Data_postupleniya as date)=CAST(@edate as DATE)
					and vv.ITS_DAYLY=1;
					--выставление признака необходимости отчисления
					IF (@paymentCount=0) 
					BEGIN
                        DECLARE @uname varchar(255);
						set @uname=SUSER_NAME();
						DECLARE @desc varchar(255);
						set @desc='Водитель '+CAST(@dr_num as varchar(20))+' должен оплатить сутки! '+CAST(@edate as varchar(50));
					    UPDATE Voditelj SET daily_paym_status=1, online_set_uname=@uname,
					    paym_check_date=@edate WHERE BOLD_ID=@nOldValue;
					    IF (@itsRemoteDr=0) BEGIN
							EXEC InsertEvent3 7, -1, @nOldValue, -1, 
								@edate, @desc, '',
								'', @dr_num, '',
								'', 1, @uname, @day_payment, @count = @count OUTPUT;
						END
					END;
					END;
				END;

			    
		
		END;
	
	END;

END

GO

/****** Object:  StoredProcedure [dbo].[InsertFictiveDrOrder]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertFictiveDrOrder] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @comment varchar(255), 
	@disp_id int, @order_id int OUT, @set_last_ord_time int)
AS
BEGIN 

	DECLARE @dr_num int, @dont_restime smallint;
	
	SET @dr_num = 0;
	SET @order_id = -1;
	
	SELECT @dr_num=Pozyvnoi, 
	@dont_restime = ISNULL(dont_reset_time, 0) 
	FROM Voditelj
	WHERE BOLD_ID=@driver_id;
	
	if (@dr_num>0) BEGIN
	
	EXEC InsertNewOrder @bold_id = @order_id OUTPUT;
	
	if (@order_id>0)
	BEGIN
		UPDATE Zakaz SET Pozyvnoi_ustan=@dr_num,
		otpuskaetsya_dostepcherom=@disp_id,
		Adres_vyzova_vvodim=@comment,
		Soobsheno_voditelyu=1,
		Data_podachi=CURRENT_TIMESTAMP,
		Nachalo_zakaza_data=CURRENT_TIMESTAMP,
		Zavershyon=1,
		Konec_zakaza_data=CURRENT_TIMESTAMP,
		Uslovn_stoim=0,
		Telefon_klienta='Фиктивная',
		Vypolnyaetsya_voditelem=@driver_id
		WHERE BOLD_ID=@order_id;
		
		if(@set_last_ord_time>0) AND (@dont_restime <> 1) 
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			WHERE BOLD_ID=@driver_id;
		END;
		
	END
	END
END

GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverSettings]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[GetJSONDriverSettings]  ( @driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @en_moving int, @use_gps smallint,
		@gtss_acct_id varchar(50), @gtss_dev_id varchar(50), 
		@reqgps smallint;
	DECLARE @curr_mver INT, @min_mver int, @mand_upd int, 
		@addit_rparams varchar(4000), @dr_addit_rparams varchar(500), @gps_srv_adr varchar(255),
		@gps_instr varchar(1000), @ftime_tariff decimal(28,10), 
		@tmeter_tariff decimal(28,10), @use_tmeter smallint,
		@use_nlocserv smallint, @use_bloc smallint, 
		@tmetr_instr varchar(1000), @tplan_id int, @gr_tplan_id int,
		@curr_sh varchar(50);
	
	SELECT TOP 1 @curr_mver=ISNULL(curr_mob_version,2102),
	@min_mver=ISNULL(min_mob_version,2102),
	@mand_upd=ISNULL(mandatory_update,0),
	@addit_rparams=ISNULL(addit_rem_params,''),
	@gps_srv_adr=ISNULL(GPS_SRV_ADR,''),
	@curr_sh=ISNULL(currency_short,'')
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @en_moving=0;
   
	select @en_moving=ISNULL(EN_MOVING,0),
		@use_gps=ISNULL(USE_GPS,0),
		@gtss_acct_id=ISNULL(GTSS_ACCT_ID,''),
		@gtss_dev_id=ISNULL(GTSS_DEV_ID,''),
		@use_tmeter=ISNULL(use_tmeter,-1), 
		@use_nlocserv=ISNULL(use_nlocserv,-1),
		@use_bloc=ISNULL(use_bloc,-1),
		@tplan_id=PR_POLICY_ID,
		@dr_addit_rparams=ISNULL(addit_rem_params,''),
		@reqgps=require_gps   
	from Voditelj where BOLD_ID=@driver_id;
	
	SELECT @gr_tplan_id=gr.PR_POLICY_ID 
	FROM Voditelj dr, Gruppa_voditelei gr 
	WHERE dr.otnositsya_k_gruppe=gr.BOLD_ID AND
	dr.BOLD_ID=@driver_id;
	
	SET @tplan_id=ISNULL(@tplan_id, -1);
	SET @gr_tplan_id=ISNULL(@gr_tplan_id, -1);
	SET @reqgps=ISNULL(@reqgps, 0);
	
	SET @tmetr_instr='';
	if(@use_tmeter=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_tm":"no",';
	END;
	if(@use_tmeter=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_tm":"yes",';
	END;
	if(@use_nlocserv=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_nls":"no",';
	END;
	if(@use_nlocserv=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_nls":"yes",';
	END;
	if(@use_bloc=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_bl":"no",';
	END;
	if(@use_bloc=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_bl":"yes",';
	END;
	
	if(@reqgps=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"reqgps":"yes",';
	END;
	
	SELECT @ftime_tariff=ISNULL(dbo.GetDrTimeTariff(@driver_id),0);
	SELECT @tmeter_tariff=ISNULL(dbo.GetDrTaxTariff(@driver_id),0);
	
	SET @gps_instr='"use_gps":"no",';
	if (@use_gps=1)
	BEGIN
		SET @gps_instr='"use_gps":"yes",';
		if (ISNULL(@gps_srv_adr,'')<>'')
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_srv_adr":"'+@gps_srv_adr+'",';
		END;
		if ((ISNULL(@gtss_acct_id,'')<>'') AND 
			(ISNULL(@gtss_acct_id,'')<>'demo'))
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_acc_id":"'+@gtss_acct_id+'",';
		END;
		if ((ISNULL(@gtss_dev_id,'')<>'') AND 
			(ISNULL(@gtss_dev_id,'')<>'demo'))
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_dev_id":"'+@gtss_dev_id+'",';
		END;
	END;  

	RETURN('{"command":"sets","en_moving":"'+
		CAST(@en_moving as varchar(20))+'","curr_mver":"'+
		CAST(@curr_mver as varchar(20))+'","min_mver":"'+
		CAST(@min_mver as varchar(20))+'","mand_upd":"'+
		CAST(@mand_upd as varchar(20))+'","fttar":"'+
		CAST(@ftime_tariff as varchar(20))+'","txtar":"'+
		CAST(@tmeter_tariff as varchar(20))+'","tplid":"'+
		CAST(@tplan_id as varchar(20))+'","cur_shr":"'+
		CAST(@curr_sh as varchar(20))+'","grtpi":"'+
		CAST(@gr_tplan_id as varchar(20))+'",'+
		@tmetr_instr+@gps_instr+@addit_rparams+@dr_addit_rparams+
		'"msg_end":"ok"}')
END

GO

/****** Object:  StoredProcedure [dbo].[GetJSONDriverStatus]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetJSONDriverStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @show_phone int, @res varchar(8000) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @on_launch int, @busy int,
		@dr_status varchar(255), @rsync int, 
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int, 
		@prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime,
		@on_place smallint;
	DECLARE @last_order_time datetime;
	DECLARE @position int;
	
	SET @last_order_time=GETDATE();
   
	SET @res='{"command":"driver_status","did":"';
	SET @dr_count = 0;
	SET @counter = 0;
	
	DECLARE @send_wait_info smallint;
	
	SELECT TOP 1 @send_wait_info=ISNULL(send_wait_info,0),
	@order_sort_dr_assign=ISNULL(order_sort_dr_assign,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @send_wait_info = ISNULL(@send_wait_info,0);
	
	SELECT @dr_count=COUNT(*) FROM
	Voditelj WHERE BOLD_ID=@driver_id;
	
	IF (@dr_count>0)
	BEGIN
	
	--UPDATE Voditelj SET V_rabote=1 
	--WHERE BOLD_ID=@driver_id;
	
	--UPDATE Voditelj SET REMOTE_STATUS=1
	--WHERE REMOTE_STATUS<=0;
	
	EXEC CheckDriverBusy @driver_id;
	
	SELECT @busy=Zanyat_drugim_disp, @on_launch=Na_pereryve,
	@last_order_time=Vremya_poslednei_zayavki 
	FROM Voditelj 
	WHERE BOLD_ID=@driver_id;
	
	SET @dr_status='free';
	
	IF(@on_launch>0)
	BEGIN
		SET @dr_status='onln';
	END;
	
	IF(@busy>0)
	BEGIN
		SET @dr_status='busy';
	END;
	
	SET @res=@res+CAST(@driver_id as varchar(20))+
		'","dst":"'+@dr_status+'"';
	
	SELECT @sector_id=ISNULL(ws.BOLD_ID,-1),
	@sector_name=REPLACE(REPLACE(
	ISNULL(dict.Naimenovanie,'НЕ ОПРЕДЕЛЕН'),'"',' '),'''',' ')  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID JOIN Voditelj dr
	ON dr.rabotaet_na_sektore=ws.BOLD_ID
	WHERE dr.BOLD_ID=@driver_id;
	
	SET @res=@res+',"sid":"'+
		CAST(@sector_id as varchar(20))+'"';
		
	SELECT @position=COUNT(*)+1 
		FROM Voditelj dr WHERE
		dr.Vremya_poslednei_zayavki<
		@last_order_time AND 
		dr.rabotaet_na_sektore=@sector_id
		AND dr.V_rabote=1 AND dr.Pozyvnoi>0 
		and S_klass=0 and Zanyat_drugim_disp=0 and Na_pereryve=0;
		
	SET @res=@res+',"scn":"'+@sector_name+
		'","dp":"'+CAST(@position as varchar(20))+'","ocn":"';
	
	SELECT @order_count=COUNT(*)
	FROM Zakaz ord WHERE 
		ord.vypolnyaetsya_voditelem=@driver_id AND
		ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
		AND Zavershyon=0 AND NO_TRANSMITTING=0 
		AND REMOTE_SET NOT IN(0,16,26,100);
	
	IF (@order_count>0)
	BEGIN
	
		SET @res=@res+
			CAST(@order_count as varchar(20))+'"';
	
		IF (@order_sort_dr_assign=1)
		BEGIN
		IF (@show_phone>0)
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, (Telefon_klienta+
			':'+Adres_vyzova_vvodim) as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID,
			prev_price, cargo_desc, end_adres, client_name, prev_distance,
			Data_predvariteljnaya, on_place  
			FROM Zakaz ord WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(0,16,26,100) 
			ORDER BY ISNULL(ord.dr_assign_date,GETDATE()) ASC;
		END
		ELSE
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, Adres_vyzova_vvodim as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID,
			prev_price, cargo_desc, end_adres, client_name, prev_distance,
			Data_predvariteljnaya, on_place  
			FROM Zakaz ord WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(0,16,26,100)
			ORDER BY ISNULL(ord.dr_assign_date,GETDATE()) ASC;
		END;
		END
		ELSE
		BEGIN
		IF (@show_phone>0)
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, (Telefon_klienta+
			':'+Adres_vyzova_vvodim) as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID,
			prev_price, cargo_desc, end_adres, client_name, prev_distance,
			Data_predvariteljnaya, on_place   
			FROM Zakaz ord WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(0,16,26,100) 
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END
		ELSE
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, Adres_vyzova_vvodim as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID,
			prev_price, cargo_desc, end_adres, client_name, prev_distance,
			Data_predvariteljnaya, on_place   
			FROM Zakaz ord WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(0,16,26,100)
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END;
		END;
		/*Открываем курсор*/
		OPEN @CURSOR
		/*Выбираем первую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @on_place;
		/*Выполняем в цикле перебор строк*/
		WHILE @@FETCH_STATUS = 0
		BEGIN

			SET @res=@res+',"oid'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@order_id as varchar(20))+'","odt'+
				CAST(@counter as varchar(20))+'":"'+
				REPLACE(REPLACE(@order_data,'"',' '),'''',' ')+'"';
			IF (@rsync<>0)
			BEGIN
				SET @res=@res+',"sn'+
				CAST(@counter as varchar(20))+'":"y"';
			END;
			IF (@send_wait_info=1)
			BEGIN
				SET @res=@res+',"wtr'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@waiting as varchar(20))+'"';
			END;
			IF (@tarif_id<>0)
			BEGIN
				SET @res=@res+',"tar'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@tarif_id as varchar(20))+'"';
			END;
			
			SET @opt_comb=ISNULL(@opt_comb,'-');
			IF (@opt_comb='')
			BEGIN
				SET @opt_comb='-';
			END;
			
			SET @res=@res+',"oo'+
			CAST(@counter as varchar(20))+'":"'+
			@opt_comb+'"';
			
			IF (@tplan_id>=0)
			BEGIN
			SET @res=@res+',"otpid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'"';
			END;

			IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cargo_desc,'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

			SET @res = @res + ',"dopl' +
				CAST(@counter as varchar(20)) + '":"' +
				CAST(@on_place as varchar(20)) + '"';
			
			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @on_place;
		END
		CLOSE @CURSOR
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';
	END;
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'-1","msg_end":"ok"}';	
	END;
	
END





GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_COMPLETE]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[AFTER_ORDER_COMPLETE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @min_debet decimal(28,10), 
	@use_dr_bcounter int, @every_order_pay decimal(28,10),
	@dr_dpay decimal(28,10), @all_dr_dpay decimal(28,10), 
	@fix_ord_dpay smallint, @dr_fix_ord_dpay smallint,
	@use_fordbroadcast_priority smallint, 
	@no_percent_before_summ decimal(28,10),
	@no_percent_before_payment decimal(28,10),
	@prize_reward_summ decimal(28,10);
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@min_debet=ISNULL(MIN_DEBET,0),
	@use_dr_bcounter=ISNULL(use_dr_balance_counter,0),
	@every_order_pay=Kolich_vyd_benzina,
	@fix_ord_dpay=fix_order_pay_with_daily_pay,
	@all_dr_dpay=day_payment,
	@use_fordbroadcast_priority = use_fordbroadcast_priority,
	@no_percent_before_summ = no_percent_before_summ,
	@no_percent_before_payment = no_percent_before_payment,
	@prize_reward_summ = prize_reward_summ
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	DECLARE @nOldValue int, @completeNewValue int, 
		@completeOldValue INT, @NewSyncValue INT,
		@summValue decimal(28,10), @newDrId int, @dr_num int,
		@taxSumm decimal(28,10), @priseNum int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@completeNewValue=a.Zavershyon,
	@completeOldValue=b.Zavershyon,
	@summValue=a.Uslovn_stoim,
	@newDrId=a.vypolnyaetsya_voditelem,
	@dr_num=a.Pozyvnoi_ustan,
	@priseNum = a.Nomer_skidki
	FROM inserted a, deleted b
	
	IF (@summValue IS NULL)
	BEGIN
		UPDATE Zakaz SET Uslovn_stoim=0 WHERE BOLD_ID=@nOldValue;
	END
	
	SET @summValue=ISNULL(@summValue,0);
	
	IF((@db_version>=5) AND (@use_dr_bcounter=1))
	BEGIN

	IF ((@completeNewValue=1) AND (@completeNewValue<>@completeOldValue) 
		AND (@newDrId>0) and (@summValue>0) )
	BEGIN
	 
		SELECT @dr_fix_ord_dpay=fix_order_pay_with_daily_pay,
		@dr_dpay=day_payment
		FROM Voditelj
		WHERE BOLD_ID=@newDrId;

		SET @taxSumm = 0;
		IF @no_percent_before_summ > 0 
			AND @no_percent_before_summ >= @summValue 
			AND @summValue > 0 
			BEGIN
				SET @taxSumm = @no_percent_before_payment;
			END 
		ELSE
			BEGIN
				SET @taxSumm = @summValue*dbo.GetDrTakePercent(@dr_num);
			END

		IF @priseNum > 0 BEGIN
			SET @taxSumm = @taxSumm - @prize_reward_summ;
		END

		UPDATE Voditelj SET DRIVER_BALANCE=
		DRIVER_BALANCE-@taxSumm 
		WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		IF (@every_order_pay>0) and not (((@all_dr_dpay>0) OR (@dr_dpay>0)) and ((@fix_ord_dpay=0) or (@dr_fix_ord_dpay=0)))
		BEGIN
			UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE-@every_order_pay 
			WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		END

		IF (@use_fordbroadcast_priority = 1)
		BEGIN
		    DELETE FROM DR_ORD_PRIORITY WHERE order_id=@nOldValue;
			--EXEC RefreshDrOrdPriorityBroadcasts;
		END;
		EXEC SetOrdersWideBroadcasts 1, '';

	END;

	END;
	
	
	
END



GO

/****** Object:  StoredProcedure [dbo].[ReserveOrderPresent]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ReserveOrderPresent] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @count int OUT)
AS
BEGIN 
	DECLARE @ab_num varchar(255), @discount_num int,
		@ab_count int, @person_id int,
		@prize_reserved_limit int;
	SET @count = 0;
	SET @ab_count = 0;
	SET @person_id = -1;

	SELECT TOP 1 
	@prize_reserved_limit = prize_reserved_limit
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SELECT @ab_num=Adres_okonchaniya_zayavki,
	@discount_num=Zakaz.Nomer_skidki FROM Zakaz
	WHERE (Zakaz.BOLD_ID=@order_id);
	
	IF (@ab_num<>'')
	BEGIN
		SELECT @ab_count=COUNT(*) FROM Persona
		WHERE Elektronnyi_adres='Индивидуальный клиент' 
		and CAST(Korpus as varchar(255))=@ab_num;
		IF(@ab_count=1)
		BEGIN
			SELECT @person_id=BOLD_ID FROM Persona
			WHERE Elektronnyi_adres='Индивидуальный клиент' 
			and CAST(Korpus as varchar(255))=@ab_num;
		END;
	END;
	
	IF ((@discount_num>0) and (@person_id>0))
	BEGIN
	
	UPDATE Persona SET RESERVED_PRESENTS=RESERVED_PRESENTS+1 
	WHERE BOLD_ID=@person_id AND 
			(RESERVED_PRESENTS < @prize_reserved_limit OR 
			@prize_reserved_limit <= 0);
	
	SET @count=@@ROWCOUNT;

	IF @count > 0 BEGIN
		UPDATE Zakaz 
		SET Nomer_skidki=0 
		WHERE BOLD_ID=@order_id;
	END
	
	END
	
END




GO

/****** Object:  StoredProcedure [dbo].[One10SecTask]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[One10SecTask] 
	(@success int OUT)
AS
BEGIN 

	DECLARE @auto_bsector_longorders smallint, @auto_bsectorid_longorders int,
			@auto_bsector_longtime int, @auto_bsector_onlineorders smallint,
			@auto_bsectorid_onlineorders int, @auto_bsector_onlinetime int,
			@auto_neardriver_onlineorders smallint, @auto_neardriver_onlinetime int,
			@auto_bsect_notmanual_ord smallint, @auto_close_client_canceling smallint,
			@auto_close_clcancel_time int, @auto_arh_empty_orders smallint;
	
	SELECT TOP 1 @auto_bsector_longorders=ISNULL(auto_bsector_longorders,0),
	@auto_bsectorid_longorders=ISNULL(auto_bsectorid_longorders,-1),
	@auto_bsector_longtime=ISNULL(auto_bsector_longtime,0),
	@auto_bsector_onlineorders=ISNULL(auto_bsector_onlineorders,0),
	@auto_bsectorid_onlineorders=ISNULL(auto_bsectorid_onlineorders,-1),
	@auto_bsector_onlinetime=ISNULL(auto_bsector_onlinetime,0),
	@auto_neardriver_onlineorders=ISNULL(auto_neardriver_onlineorders,0), 
	@auto_neardriver_onlinetime=ISNULL(auto_neardriver_onlinetime,0),
	@auto_bsect_notmanual_ord=ISNULL(auto_bsect_notmanual_ord,0),
	@auto_close_client_canceling=ISNULL(auto_close_client_canceling,0),
	@auto_close_clcancel_time=ISNULL(auto_close_clcancel_time,7),
	@auto_arh_empty_orders=ISNULL(auto_arh_empty_orders,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @success=0;

	if @auto_bsectorid_longorders<=-1 begin
		SELECT TOP 1 @auto_bsectorid_longorders=BOLD_ID FROM Sektor_raboty;
	end

	if @auto_bsectorid_onlineorders<=-1 begin
		SELECT TOP 1 @auto_bsectorid_onlineorders=BOLD_ID FROM Sektor_raboty;
	end

	BEGIN TRY
		if @auto_bsector_longorders>0 and @auto_bsector_longtime>0 and @auto_bsectorid_longorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=@auto_bsectorid_longorders, 
			SECTOR_ID=@auto_bsectorid_longorders, REMOTE_SET=2, Priority_counter=0, 
			Adres_vyzova_vvodim = CAST(CASE WHEN (adr_manual_set=0 AND @auto_bsect_notmanual_ord=1) THEN 'позвони клиенту' ELSE Adres_vyzova_vvodim END AS varchar(255))
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) and (rclient_status=0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_longtime)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0))
			SET @success=1;
		end
		if @auto_bsector_onlineorders>0 and @auto_bsector_onlinetime>0 and @auto_bsectorid_onlineorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=@auto_bsectorid_onlineorders, 
			SECTOR_ID=@auto_bsectorid_onlineorders, REMOTE_SET=2, Priority_counter=0
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) AND rclient_id>-1 and (rclient_status>0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_onlinetime)
			AND Telefon_klienta<>'' AND Adres_vyzova_vvodim<>''
			SET @success=1;
		end
		if @auto_close_client_canceling>0 and @auto_close_clcancel_time>0 begin
			UPDATE dbo.Zakaz SET REMOTE_SET=100, Zavershyon=1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET <= 8) and (Predvariteljnyi=0) AND (rclient_id > -1 OR src > 0) and (rclient_status=-1)
			AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_close_clcancel_time)
			SET @success=1;
		end
		if @auto_arh_empty_orders = 1 begin
			UPDATE dbo.Zakaz SET REMOTE_SET = 100, Zavershyon = 1, Arhivnyi = 1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET < 8) AND (Predvariteljnyi = 0) 
			AND Pozyvnoi_ustan = 0 AND (ABS(DATEDIFF(HOUR, LAST_STATUS_TIME, GETDATE())) > 5)
			SET @success = 1;
		end
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END
GO

/****** Object:  StoredProcedure [dbo].[ProceedOperationRequest]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER PROCEDURE [dbo].[ProceedOperationRequest] 
	-- Add the parameters for the stored procedure here
	(@opnm varchar(255), @prm1 int, @prm2 int, 
	 @prm3 int, @prm4 varchar(255), @prm5 varchar(255), 
	 @op_answer varchar(5000) OUT)
AS
BEGIN 

	DECLARE @dr_balance decimal(28,10), 
		@last12h_summ decimal(28,10), @use_calc_balance int, @res int, 
		@DebtSumm decimal(28,10), @DrTakeSumm decimal(28,10), @DrSumm decimal(28,10), 
		@DrFixedSumm decimal(28,10), @bold_id int, @count int, @summ decimal(28,10),
		@edate datetime, @prev_dsumm decimal(28,10), @new_dsumm decimal(28,10);

	SET @op_answer = '{"command":"opa","scs":"yes","opnm":"'+
		@opnm+'",';
	SET @res = -1;
	SET @DebtSumm = 0;
	SET @DrTakeSumm = 0;
	SET @DrSumm = 0;
	SET @DrFixedSumm = 0;

	if (@opnm='drinc')
	begin
		SELECT BOLD_ID FROM Voditelj WHERE BOLD_ID=ISNULL(@prm1,-1) AND its_manager=1;
		IF @@ROWCOUNT=1 
		BEGIN
			IF ISNUMERIC(@prm4) > 0
			BEGIN 
				SET @summ = CAST(@prm4 AS INT) 
			END
			ELSE 
			BEGIN
				SET @summ=0 
			END

			IF @summ>0 BEGIN
			SET @edate=GETDATE()
			SELECT @prev_dsumm=DRIVER_BALANCE FROM Voditelj WHERE Pozyvnoi=@prm3;
			EXEC InsertNewDriverIncome -1, 0, @summ, @edate, @prm3, @count = @count OUTPUT;
			--EXEC InsertNewDriverIncome @bold_id = @bold_id OUTPUT, @its_dayly = 0, @summ = CAST(@prm3 as decimal(28,10)), @idt = GETDATE(), @dr_num int, @count int OUT;
			SELECT @new_dsumm=DRIVER_BALANCE FROM Voditelj WHERE Pozyvnoi=@prm3;
			IF @count>0 BEGIN
				SET @op_answer = @op_answer + '"drinc":"ok",';--"omsg":"dyn summ prev '+
					--CAST(@prev_dsumm as varchar(10))+' new '+
					--CAST(@new_dsumm as varchar(10))+'",';
			END
			ELSE BEGIN
				SET @op_answer = @op_answer + '"drinc":"no",';
			END
			END
			ELSE BEGIN
			SET @op_answer = @op_answer + '"drinc":"no",';
			END
		END
		ELSE
		BEGIN
			SET @op_answer = @op_answer + '"drinc":"no",';
		END
	end

	if (@opnm='ohist')
	begin
		UPDATE Zakaz SET tmhistory=(@prm4+', посл сумма '+@prm5) WHERE BOLD_ID=@prm3;
		SET @op_answer = @op_answer + '"oh":"ok",';
	end

	if (@opnm='acst')
	begin
		UPDATE Zakaz SET status_accumulate=status_accumulate+(' '+CAST(DATEPART( hh,GETDATE()) as varchar(2))+':'+CAST(DATEPART( n,GETDATE()) as varchar(2))+'['+@prm4+']') WHERE BOLD_ID=@prm3;
		SET @op_answer = @op_answer + '"acst":"ok",';
	end

	if (@opnm='lcc')
	begin

		UPDATE Voditelj SET cc_updated = 1 
		WHERE (last_lat <> @prm4 OR last_lon <> @prm5) AND BOLD_ID = ISNULL(@prm1,-1);

		UPDATE Voditelj SET last_lat=@prm4, last_lon=@prm5, last_cctime=GETDATE() WHERE BOLD_ID=ISNULL(@prm1,-1);
		SET @op_answer = @op_answer + '"lcc":"ok",';
	end
		
	if (@opnm='dr_bal')
	begin
	
		SET @dr_balance =0;
		SET @last12h_summ=0;
	
		SELECT @dr_balance=ISNULL(DRIVER_BALANCE,0),
			@last12h_summ=dbo.GetDrLastHoursSumm(ISNULL(@prm1,-1),-12),
			@prm2 = Pozyvnoi 
		from Voditelj
		WHERE BOLD_ID=ISNULL(@prm1,-1);
		
		select @use_calc_balance=dbo.GetDrUseDynBByNumWithSettParam(@prm2);
		
		if (@use_calc_balance<>1)
		BEGIN
			EXEC GetDrDateCalcBalance @prm2, @res = @res OUTPUT, @DebtSumm = @DebtSumm OUTPUT, 
				@DrTakeSumm = @DrTakeSumm OUTPUT, @DrSumm = @DrSumm OUTPUT, 
				@DrFixedSumm = @DrFixedSumm OUTPUT;
			SET @dr_balance=@DebtSumm;
		END;
		
		SET @op_answer = @op_answer + '"dr_bal":"'+
			CAST(CAST(@dr_balance as INT) as VARCHAR(255))+'",'+ '"lst12hs":"'+
			CAST(CAST(@last12h_summ as INT) as VARCHAR(255))+'",';
	end
	
	SET @op_answer = @op_answer + '"msg_end":"ok"}';
	
END




GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_INSERT]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AFTER_ORDER_INSERT] 
   ON  [dbo].[Zakaz] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version int, @prize_reserved_limit smallint, 
	@lock_reserv_on_limit smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@prize_reserved_limit = prize_reserved_limit,
	@lock_reserv_on_limit = lock_reserv_on_limit 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN	
		
		DECLARE @newId INT, @nNewValue int, 
		@order_count int, @NewArhValue int, 
		@NewComplValue int, @newDrId int,
		@dr_sect int, @newEndSect int, 
		@endSectNum int, @newPhone varchar(255), 
		@newAdr varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@newDrNum int;
		
		SET @view_bonus=0;
		SET @view_ab_bonus=0;
		SET @bonus_count=0;
		SET @ab_bonus_count=0;
		SET @use_ab_account=0;
	
		SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
			@view_ab_bonus=ISNULL(view_ab_bonuses,0),
			@use_ab_account = ISNULL(use_ab_account,0) 
		FROM Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';
		
		SELECT @newId=a.BOLD_ID, 
		@nNewValue=a.REMOTE_SET,
		@NewArhValue=a.Arhivnyi,
		@NewComplValue=a.Zavershyon,
		@newDrId = a.vypolnyaetsya_voditelem,
		@newEndSect = a.konechnyi_sektor_raboty,
		@newPhone = a.Telefon_klienta,
		@newAdr = a.Adres_vyzova_vvodim,
		@newINum = a.Adres_okonchaniya_zayavki,
		@newDrNum = ISNULL(a.REMOTE_DRNUM,0)
		FROM inserted a
		
		UPDATE Zakaz
		SET Nachalo_zakaza_data=GETDATE()
		WHERE BOLD_ID=@newId;

		IF @nNewValue=100 
		BEGIN
			DELETE FROM ORDER_ACCEPTING WHERE 
			ORDER_ACCEPTING.ORDER_ID=@newId;
		END;
	
		DECLARE @inum_count int, @inum_int int,
			@inum_phone varchar(255), @inum_adr varchar(255);
	
		IF ((ISNULL(@newINum,'')<>'') AND (@use_ab_account>0))
		BEGIN
		
			IF (ISNUMERIC(@newINum)=1)
			BEGIN
				SET @inum_int = CAST(@newINum AS int);
				
				SET @inum_int = ISNULL(@inum_int,-1);
				
				SELECT @inum_count=COUNT(*)
				FROM Persona
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент';
				
				IF (@inum_count>0)
				BEGIN
				
					--возможно использ доп усл в запросе???
					UPDATE Persona 
					SET Dom=Dom+1 
					WHERE Korpus=@inum_int AND 
					Elektronnyi_adres='Индивидуальный клиент' AND 
					(RESERVED_PRESENTS < @prize_reserved_limit OR @lock_reserv_on_limit <= 0 
					OR @prize_reserved_limit <= 0);
				
					SELECT TOP 1
					@inum_phone=Rabochii_telefon,
					@inum_adr=Ulica,
					@ab_bonus_count=Dom
					FROM Persona
					WHERE Korpus=@inum_int AND 
					Elektronnyi_adres='Индивидуальный клиент';
					
					SET @bonus_num=0;
					SET @inum_phone = ISNULL(@inum_phone,'');
					SET @inum_adr = ISNULL(@inum_adr,'');
					SET @ab_bonus_count = ISNULL(@ab_bonus_count,0);
					
					if ((@view_ab_bonus>0) AND 
						(@ab_bonus_count>0))
					begin
						SELECT @bonus_num=
							dbo.GetDiscountNumOnOrderCount
							(@ab_bonus_count);
					end;
					
					SET @bonus_num=ISNULL(@bonus_num,0);
					
					if ((ISNULL(@newPhone,'')='') AND 
						NOT (ISNULL(@inum_phone,'')=''))
					BEGIN
						UPDATE Zakaz 
						SET Telefon_klienta=@inum_phone
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
					
					if (NOT ISNULL(@newAdr,'')='')
					BEGIN
						SET @inum_adr=@newAdr;
					END;
					
					if ( ((ISNULL(@newAdr,'')='') AND 
						NOT (ISNULL(@inum_adr,'')='')) OR 
						(@bonus_num>0))
					BEGIN
						UPDATE Zakaz 
						SET Adres_vyzova_vvodim=@inum_adr,
							Nomer_skidki=@bonus_num
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
					
				END;
					
			END;
			
		END;
		
		DECLARE @dict_adr varchar(255);
		SET @dict_adr='';
		SET @inum_adr='';
		SET @inum_count=0;
		SET @inum_int=0;
	
		IF ((ISNULL(@newPhone,'')<>'') OR 
			(ISNULL(@newAdr,'')<>''))
		BEGIN
			UPDATE Zakaz 
			SET Nachalo_zakaza_data=CURRENT_TIMESTAMP,
				Data_podachi=CURRENT_TIMESTAMP
			FROM Zakaz JOIN inserted i
			ON Zakaz.BOLD_ID=i.BOLD_ID;
			
			if (ISNULL(@newPhone,'')<>'')
			begin
						
				IF(NOT (ISNULL(@newPhone,'')=''))
				BEGIN
				
					DECLARE @bad_count int,
						@bad_adr varchar(255);
						
					SET @bad_adr='';
				
					SELECT @bad_count=COUNT(*)	
					FROM Plohie_klienty 
					WHERE Telefon_klienta=@newPhone;
					
					IF (@bad_count>0)
					BEGIN
					
						SELECT TOP 1 @bad_adr=Adres_vyzova_vvodim	
						FROM Plohie_klienty 
						WHERE Telefon_klienta=@newPhone;
						
						SET @bad_adr=ISNULL(@bad_adr,'');
					
						UPDATE Zakaz 
						SET Nomer_skidki=-1000,
							Adres_vyzova_vvodim=@bad_adr
						FROM Zakaz JOIN inserted i
						ON Zakaz.BOLD_ID=i.BOLD_ID;
					END;
				
					UPDATE Sootvetstvie_parametrov_zakaza
					SET Summarn_chislo_vyzovov=
						Summarn_chislo_vyzovov+1
					WHERE Telefon_klienta=@newPhone;
					
					IF ((@use_ab_account>0) AND 
						(ISNULL(@newINum,'')=''))
					BEGIN
					
						SELECT @inum_count=COUNT(*)
						FROM Persona
						WHERE Rabochii_telefon=@newPhone AND 
						Elektronnyi_adres='Индивидуальный клиент';
						
						IF (@inum_count>0)
						BEGIN
						
							SELECT TOP 1
							@inum_adr=Ulica,
							@inum_int=Korpus
							FROM Persona
							WHERE Rabochii_telefon=@newPhone AND 
							Elektronnyi_adres='Индивидуальный клиент';
							
							SET @inum_int=ISNULL(@inum_int, 0);
							
							IF (@inum_int>0)
							BEGIN
								if ((NOT ISNULL(@newAdr,'')='') OR 
									(ISNULL(@inum_adr,'')='')) 
									
								BEGIN
									UPDATE Zakaz 
									SET Adres_okonchaniya_zayavki=@inum_int
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@inum_adr),
										Adres_okonchaniya_zayavki=@inum_int
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END;
							
						END;
						
					END;
				
					IF ((@inum_count=0) OR (ISNULL(@inum_adr,'')='') 
						OR (@use_ab_account<=0) OR (@inum_int<=0))
					BEGIN
					
						SELECT @ordDictItCount=COUNT(*)
						FROM Sootvetstvie_parametrov_zakaza
						WHERE Telefon_klienta=@newPhone;
							
						IF(@ordDictItCount>0)
						BEGIN
						
							SELECT TOP 1 @bonus_count=Summarn_chislo_vyzovov,
								@dict_adr=Adres_vyzova_vvodim
							FROM Sootvetstvie_parametrov_zakaza
							WHERE Telefon_klienta=@newPhone;
							
							SET @bonus_num=0;
							SET @bonus_count=ISNULL(@bonus_count, 0);
							SET @dict_adr=ISNULL(@dict_adr, '---');
						
							if ((@view_bonus>0) AND 
								(@bonus_count>0) and 
								@newPhone=REPLACE(@newPhone,'Фиктивная',''))
							begin
								SELECT @bonus_num=
									dbo.GetDiscountNumOnOrderCount
									(@bonus_count);
							end;
							
							IF ((@bad_count>0) AND (ISNULL(@bonus_num,0)=0))
							BEGIN
								SET @bonus_num=-1000;
							END;
							
							SET @bonus_num=ISNULL(@bonus_num,0);
							
							if (@view_bonus>0)
							BEGIN
								if ((NOT ISNULL(@newAdr,'')='') OR 
									(ISNULL(@dict_adr,'')=''))
								BEGIN
									UPDATE Zakaz 
									SET Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END
								ELSE
								BEGIN
									UPDATE Zakaz 
									SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
										Nomer_skidki=@bonus_num
									FROM Zakaz JOIN inserted i
									ON Zakaz.BOLD_ID=i.BOLD_ID;
								END;
							END
							ELSE
							BEGIN
								if ((ISNULL(@newAdr,'')='') AND 
								(ISNULL(@inum_adr,'')='') AND 
								((ISNULL(@dict_adr,'')<>'') OR 
								(ISNULL(@bonus_num,0)<>0) ) )
								BEGIN
									IF (@inum_count=0) 
									BEGIN
										UPDATE Zakaz 
										SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr),
										Nomer_skidki=@bonus_num
										FROM Zakaz JOIN inserted i
										ON Zakaz.BOLD_ID=i.BOLD_ID;
									END
									ELSE
									BEGIN
										UPDATE Zakaz 
										SET Adres_vyzova_vvodim=(ISNULL(@bad_adr,'')+@dict_adr)
										FROM Zakaz JOIN inserted i
										ON Zakaz.BOLD_ID=i.BOLD_ID;
									END;
								END;
							END;
							
						END;
								
					END;
				
				
				END;	
					
			end;
			
			if (ISNULL(@newAdr,'')<>'')
			BEGIN
				if((ISNULL(@newPhone,'')<>'') AND
					(ISNULL(@newAdr,'')<>''))
				BEGIN
					SELECT @ordDictItCount=COUNT(*)
					FROM Sootvetstvie_parametrov_zakaza
					WHERE Telefon_klienta=@newPhone;
					
					IF(@ordDictItCount=0)
					BEGIN
						EXEC InsertNewOrderDictItem 
							@newPhone, @newAdr,
							1, @ordDictItCount;
					END;
					
				END;
			END;
			
		END;
		
		UPDATE Personal SET EstjVneshnieManip=1;
	END;	

END

GO

/****** Object:  Trigger [dbo].[AFTER_ORDER_INUM]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AFTER_ORDER_INUM] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version int, @prize_reserved_limit smallint, 
	@lock_reserv_on_limit smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@prize_reserved_limit = prize_reserved_limit,
	@lock_reserv_on_limit = lock_reserv_on_limit 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue int, @order_count int,
		@NewArhValue int, @NewComplValue int,
		@OldArhValue int, @OldComplValue int,
		@newDrId int, @oldDrId int,
		@oldDiscount int, @oldSpec int,
		@dr_sect int, @newEndSect int, 
		@oldEndSect int, @endSectNum int,
		@oldPhone varchar(255), @newPhone varchar(255),
		@oldAdr varchar(255), @newAdr varchar(255),
		@oldINum varchar(255), @newINum varchar(255),
		@ordDictItCount int,
		@view_bonus int, @view_ab_bonus int,
		@bonus_num int, @bonus_count int, 
		@ab_bonus_count int, @use_ab_account int,
		@old_bonus_num int,
		@newDrNum int, @oldDrNum int;
		
	SET @view_bonus=0;
	SET @view_ab_bonus=0;
	SET @bonus_count=0;
	SET @ab_bonus_count=0;
	SET @use_ab_account=0;
	
	SELECT TOP 1 @view_bonus=ISNULL(view_bonuses,0),
		@view_ab_bonus=ISNULL(view_ab_bonuses,0),
		@use_ab_account = ISNULL(use_ab_account,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@NewArhValue=a.Arhivnyi,
	@NewComplValue=a.Zavershyon,
	@OldArhValue=b.Arhivnyi,
	@OldComplValue=b.Zavershyon,
	@newDrId = a.vypolnyaetsya_voditelem,
	@oldDrId = b.vypolnyaetsya_voditelem,
	@oldDiscount = b.Nomer_skidki,
	@oldSpec = b.Slugebnyi,
	@newEndSect = a.konechnyi_sektor_raboty,
	@oldEndSect = b.konechnyi_sektor_raboty,
	@newPhone = a.Telefon_klienta,
	@oldPhone = b.Telefon_klienta,
	@newAdr = a.Adres_vyzova_vvodim,
	@oldAdr = b.Adres_vyzova_vvodim,
	@newINum = a.Adres_okonchaniya_zayavki,
	@oldINum = b.Adres_okonchaniya_zayavki,
	@old_bonus_num = ISNULL(b.Nomer_skidki,0),
	@newDrNum = ISNULL(a.REMOTE_DRNUM,0), 
	@oldDrNum = ISNULL(b.REMOTE_DRNUM,0) -- Get the Old and New values
	FROM inserted a, deleted b

	IF @nNewValue=100 
	BEGIN
		DELETE FROM ORDER_ACCEPTING WHERE 
		ORDER_ACCEPTING.ORDER_ID=@nOldValue;
	END;
	
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
	
	DECLARE @inum_count int, @inum_int int,
		@inum_phone varchar(255), @inum_adr varchar(255);
	
	IF ((@newINum<>@oldINum) AND (@use_ab_account>0))
	BEGIN
	
		IF (ISNUMERIC(@oldINum)=1)
		BEGIN
			UPDATE Persona 
			SET Dom=Dom-1 
			WHERE Korpus=CAST(@oldINum AS int) AND 
			Elektronnyi_adres='Индивидуальный клиент';
		END;
	
		IF (ISNUMERIC(@newINum)=1)
		BEGIN
			SET @inum_int = CAST(@newINum AS int);
			
			SET @inum_int = ISNULL(@inum_int,-1);
			
			SELECT @inum_count=COUNT(*)
			FROM Persona
			WHERE Korpus=@inum_int AND 
			Elektronnyi_adres='Индивидуальный клиент';
			
			IF (@inum_count>0)
			BEGIN
			
				--возможно использ доп усл в запросе???
				UPDATE Persona 
				SET Dom=Dom+1 
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент' AND 
				(RESERVED_PRESENTS < @prize_reserved_limit OR @lock_reserv_on_limit <= 0 
				OR @prize_reserved_limit <= 0);
			
				SELECT TOP 1
				@inum_phone=Rabochii_telefon,
				@inum_adr=Ulica,
				@ab_bonus_count=Dom
				FROM Persona
				WHERE Korpus=@inum_int AND 
				Elektronnyi_adres='Индивидуальный клиент';
				
				SET @bonus_num=0;
				SET @inum_phone = ISNULL(@inum_phone,'');
				SET @inum_adr = ISNULL(@inum_adr,'');
				SET @ab_bonus_count = ISNULL(@ab_bonus_count,0);
				
				if ((@view_ab_bonus>0) AND 
					(@ab_bonus_count>0))
				begin
					SELECT @bonus_num=
						dbo.GetDiscountNumOnOrderCount
						(@ab_bonus_count);
				end;
				
				IF (ISNULL(@bonus_num,0)=0)
				BEGIN
					SET @bonus_num=@old_bonus_num;
				END;
				
				if ((ISNULL(@newPhone,'')='') AND 
					NOT (ISNULL(@inum_phone,'')=''))
				BEGIN
					UPDATE Zakaz 
					SET Telefon_klienta=@inum_phone
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
				
				if (NOT ISNULL(@newAdr,'')='')
				BEGIN
					SET @inum_adr=@newAdr;
				END;
				
				if ( ((ISNULL(@newAdr,'')='') AND 
					NOT (ISNULL(@inum_adr,'')='')) OR 
					(@bonus_num>0))
				BEGIN
					UPDATE Zakaz 
					SET Adres_vyzova_vvodim=@inum_adr,
						Nomer_skidki=@bonus_num
					FROM Zakaz JOIN inserted i
					ON Zakaz.BOLD_ID=i.BOLD_ID;
				END;
				
			END;
				
		END;
		
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
		
	END;
	
	
	
	END;
	
END


GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONTarifAndOptionsList]    Script Date: 29.03.2018 11:25:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetJSONTarifAndOptionsList] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @sid int, @scount int,
		@sname varchar(255), @counter int,
		@timetr decimal(28,10), @tmetrtr decimal(28,10),
		@os_coeff decimal(28,10), @os_comp decimal(28,10),
		@tplan_id int, @short_name varchar(20), 
		@miss_every_nkm int;
   
	SET @res='{"command":"to_lst","t_cnt":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM ORDER_TARIF;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50), 
		@fmt_str3 varchar(50), @fmt_str4 varchar(50), 
		@dist_part int, @dpart_tarif decimal(28, 10), 
		@stop_tarif decimal(28, 10), @dist_start int,
		@otarid int, @otplid int, @miss_every_nkm_json varchar(100);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ID, TARIF_NAME, TIME_TARIF, TMETER_TARIF, PR_POLICY_ID, SHORT_NAME, DISTANCE_PART, DPART_TARIF, STOP_TARIF, DISTANCE_START, outher_tarid, outher_tplid, miss_every_nkm  
	FROM ORDER_TARIF ORDER BY ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid, @miss_every_nkm
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        
        IF (CHARINDEX('.',CAST(@tmetrtr as varchar(20)))+2<=
			LEN(CAST(@tmetrtr as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@tmetrtr as varchar(20)),
				CHARINDEX('.',CAST(@tmetrtr as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@tmetrtr as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@timetr as varchar(20)))+2<=
			LEN(CAST(@timetr as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@timetr as varchar(20)),
				CHARINDEX('.',CAST(@timetr as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@timetr as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@dpart_tarif as varchar(20)))+2<=
			LEN(CAST(@dpart_tarif as varchar(20))))
		BEGIN
			SET @fmt_str3=LEFT(CAST(@dpart_tarif as varchar(20)),
				CHARINDEX('.',CAST(@dpart_tarif as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str3=CAST(@dpart_tarif as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@stop_tarif as varchar(20)))+2<=
			LEN(CAST(@stop_tarif as varchar(20))))
		BEGIN
			SET @fmt_str4=LEFT(CAST(@stop_tarif as varchar(20)),
				CHARINDEX('.',CAST(@stop_tarif as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str4=CAST(@stop_tarif as varchar(20));
		END

		SET @miss_every_nkm_json = ''
		IF @miss_every_nkm > 0 BEGIN
			SET @miss_every_nkm_json = '","mek'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@miss_every_nkm as varchar(20));
		END
		
        SET @res=@res+',"tid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","tn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","tmt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'","txt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","ttpi'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'","tdip'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@dist_part as varchar(20))+'","tstds'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@dist_start as varchar(20))+'","tdpt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str3+'","tspt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str4+'","tshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'","otarid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@otarid as varchar(20))+'","otplid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@otplid as varchar(20)) + @miss_every_nkm_json + '"'+
			dbo.GetTarifAreaCoords(@sid, @counter);
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid, @miss_every_nkm
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;
	
	SELECT @scount=COUNT(*)  
	FROM ORDER_OPTION;
	
	SET @res=@res+',"op_cnt":"';
	SET @counter = 0;
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ID, OPTION_NAME, OSUMM_COEFF, OS_COMPOSED, PR_POLICY_ID, SHORT_NAME  
	FROM ORDER_OPTION ORDER BY ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @os_coeff, @os_comp, @tplan_id, @short_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        IF (CHARINDEX('.',CAST(@os_coeff as varchar(20)))+2<=
			LEN(CAST(@os_coeff as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@os_coeff as varchar(20)),
				CHARINDEX('.',CAST(@os_coeff as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@os_coeff as varchar(20));
		END
		IF (CHARINDEX('.',CAST(@os_comp as varchar(20)))+2<=
			LEN(CAST(@os_comp as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@os_comp as varchar(20)),
				CHARINDEX('.',CAST(@os_comp as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@os_comp as varchar(20));
		END
        
        SET @res=@res+',"oid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","on'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","oscf'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","oscm'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'","otpi'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'","oshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @os_coeff, @os_comp, @tplan_id, @short_name
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;
	
	-----------------------
	SELECT @scount=COUNT(*)  
	FROM PRICE_POLICY;
	
	SET @res=@res+',"tpl_cnt":"';
	SET @counter = 0;
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ID, POLICY_NAME, SHORT_NAME  
	FROM PRICE_POLICY ORDER BY ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @short_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"tpid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","tpn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","tpshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @short_name
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;
	------------------------------
	
	SET @res=@res+',"msg_end":"ok"}';

	RETURN(@res)
END

GO

