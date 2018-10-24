USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[DegToRad]    Script Date: 20.10.2018 22:28:31 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[DegToRad]  ( @deg decimal(18,5))
RETURNS decimal(18,5)
AS
BEGIN 
   RETURN (@deg * PI() / 180)
END
GO

/****** Object:  UserDefinedFunction [dbo].[DistanceBetweenTwoCoords]    Script Date: 20.10.2018 22:30:12 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[DistanceBetweenTwoCoords]  (@lat1 decimal(28,10), 
@lon1 decimal(28,10), @lat2 decimal(28,10), @lon2 decimal(28,10))
RETURNS decimal(28,10)
AS
BEGIN 
	DECLARE @earthRadius decimal(28,10), @dLat decimal(28,10), 
		@dLon decimal(28,10), @a decimal(28,10), @c decimal(28,10);

	SET @earthRadius = 6371;
	SET @dLat = dbo.DegToRad(@lat2 - @lat1);
	SET @dLon = dbo.DegToRad(@lon2 - @lon1);

	SET @lat1 = dbo.DegToRad(@lat1);
	SET @lat2 = dbo.DegToRad(@lat2);

	SET @a = SIN(@dLat/2) * SIN(@dLat/2) +
          SIN(@dLon/2) * SIN(@dLon/2) * COS(@lat1) * COS(@lat2); 
	SET @c = 2 * ATN2(SQRT(@a), SQRT(1-@a));

	RETURN (@earthRadius * @c)
END
GO

/****** Object:  StoredProcedure [dbo].[AssignDriverOnOrder]    Script Date: 20.10.2018 22:31:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







ALTER PROCEDURE [dbo].[AssignDriverOnOrder] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @user_id int, @count int OUT)
AS
BEGIN 
	DECLARE @prev_dr_id int, 
	@on_launch int, @driverNum int,
	@min_debet decimal(28, 10);
	
	SET @count = 0;

	SELECT TOP 1 @min_debet=ISNULL(MIN_DEBET,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SELECT @prev_dr_id=Zakaz.vypolnyaetsya_voditelem 
	FROM Zakaz
	WHERE Zakaz.BOLD_ID=@order_id;
	
	SELECT TOP 1 @driverNum=Pozyvnoi 
	FROM Voditelj 
	WHERE BOLD_ID=@driver_id AND ITS_REMOTE_CLIENT = 1 AND 
	Na_pereryve = 0 AND DRIVER_BALANCE > @min_debet AND 
	V_rabote = 1;
	
	if (@@ROWCOUNT>0)
	begin
	
	UPDATE Zakaz 
	SET REMOTE_SET=8,
	vypolnyaetsya_voditelem=@driver_id,
	Pozyvnoi_ustan=@driverNum,
	REMOTE_INCOURSE=0, REMOTE_ACCEPTED=0,
	Priority_counter=0, REMOTE_DRNUM=@driverNum,
	REMOTE_SYNC=1, Individ_order=1, 
	otpravlyaetsya = @user_id
	WHERE BOLD_ID=@order_id AND Adres_vyzova_vvodim <> ''
	AND Telefon_klienta <> '';

	--adr_manual_set=1
	SET @count = @@ROWCOUNT;
	
	IF @count > 0 BEGIN
		UPDATE Voditelj
		SET Na_pereryve=0,
		Zanyat_drugim_disp=1
		WHERE BOLD_ID=@driver_id;

		IF @prev_dr_id > 0 BEGIN
			EXEC CheckDriverBusy @prev_dr_id;
		END;
	END;
	
	end
	
	
	
END
GO


/****** Object:  StoredProcedure [dbo].[AutoAssignDriverByCoords]    Script Date: 20.10.2018 22:33:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[AutoAssignDriverByCoords] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @latStr varchar(50), @lonStr varchar(50), @count int OUT)
AS
BEGIN 
	DECLARE @prev_dr_id int, 
	@on_launch int, @driverNum int,
	@lat decimal(28,10), @lon decimal(28,10),
	@latDr decimal(28,10), @lonDr decimal(28,10),
	@aass_driver_max_radius int, @driver_id int;

	SELECT @aass_driver_max_radius = aass_driver_max_radius
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	IF @latStr <> '' AND @lonStr <> '' BEGIN

		SET @lat = CAST(@latStr as decimal(28, 10));
		SET @lon = CAST(@lonStr as decimal(28, 10));

		IF @lat > -250 AND @lat < 250 AND @lon > -250 AND @lon < 250 BEGIN

			SELECT TOP 1 @latDr = CAST(last_lat as decimal(28, 10)), 
			@lonDr = CAST(last_lon as decimal(28, 10)), @driver_id = BOLD_ID FROM Voditelj
			WHERE last_lat <> '' AND last_lon <> '' AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10) 
			AND Zanyat_drugim_disp = 0 AND V_rabote = 1 AND Na_pereryve = 0 
			ORDER BY dbo.DistanceBetweenTwoCoords(@lat, @lon, CAST(last_lat as decimal(28, 10)), 
			CAST(last_lon as decimal(28, 10))) ASC;

			IF @@ROWCOUNT > 0 AND @latDr > -250 AND @latDr < 250 AND 
				@lonDr > -250 AND @lonDr < 250
			BEGIN
				IF (dbo.DistanceBetweenTwoCoords(@lat, @lon, @latDr, @lonDr) * 1000) < 
				@aass_driver_max_radius BEGIN
					EXEC AssignDriverOnOrder @order_id, @driver_id, 
						-1, @count = @count OUTPUT;
				END;
			END;

		END;

	END;

END











GO

/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRDispatcher]    Script Date: 20.10.2018 22:34:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER PROCEDURE [dbo].[InsertOrderWithParamsRDispatcher] 
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
		Adres_vyzova_vvodim=@adres,
		Telefon_klienta=@phone, 
		Opr_s_obsh_linii=@color_check,
		Yavl_pochasovym=@op_order,
		Ustan_pribytie=@colored_new,
		Adres_okonchaniya_zayavki=@ab_num,
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status
		--rclient_id=@client_id,
		--rclient_status=1,
		--alarmed=1
		WHERE BOLD_ID=@order_id;
	END
	END;
END






GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverOrdersBCasts]    Script Date: 20.10.2018 22:35:20 ******/
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
		@prev_distance decimal(28,10), @prev_date datetime, 
		@rating_bonus decimal(18, 5), @for_all_sectors smallint,
		@company_id int;
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ord.Adres_vyzova_vvodim, ord.SECTOR_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, 
	ord.prev_distance, ord.Data_predvariteljnaya, ord.driver_rating_diff,
	ord.for_all_sectors, ISNULL(ds.company_id, 0) as company_id FROM Zakaz ord
	INNER JOIN DR_ORD_PRIORITY dop ON ord.BOLD_ID=dop.order_id 
	LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id
	WHERE ord.Zavershyon=0 AND ord.REMOTE_SET>0 AND ord.REMOTE_SET<8 
	AND dop.priority<=0 AND dop.driver_id=@driver_id;
	--AND dop.priority>=-1
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, @company_id
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';

		IF (@rating_bonus>0)
			BEGIN
			SET @res=@res+',"orb'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@rating_bonus))+'"';
			END;

		IF (@for_all_sectors>0)
			BEGIN
			SET @res=@res+',"fas'+
			CAST(@counter as varchar(20))+'":"1"';
			END;

		IF (@company_id>0)
			BEGIN
			SET @res=@res+',"cmp'+
			CAST(@counter as varchar(20))+'":"' + 
			CAST(@company_id as varchar(20)) + '"';
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
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, @company_id
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

/****** Object:  UserDefinedFunction [dbo].[GetJSONOrdersBCasts]    Script Date: 20.10.2018 22:36:23 ******/
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
		@prev_distance decimal(28,10), @prev_date datetime,
		@rating_bonus decimal(18, 5), @for_all_sectors smallint,
		@company_id int;
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ord.Adres_vyzova_vvodim, ord.SECTOR_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
	ord.Data_predvariteljnaya, ord.driver_rating_diff, ord.for_all_sectors,
	ISNULL(ds.company_id, 0) as company_id FROM Zakaz ord
	LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
	WHERE Zavershyon=0 AND REMOTE_SET>0 AND REMOTE_SET<8;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, @company_id
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';
        
		IF (@rating_bonus>0)
			BEGIN
			SET @res=@res+',"orb'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@rating_bonus))+'"';
			END;

		IF (@for_all_sectors>0)
			BEGIN
			SET @res=@res+',"fas'+
			CAST(@counter as varchar(20))+'":"1"';
			END;

		IF (@company_id>0)
			BEGIN
			SET @res=@res+',"cmp'+
			CAST(@counter as varchar(20))+'":"' + 
			CAST(@company_id as varchar(20)) + '"';
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
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, @company_id
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	RETURN(@res)
END
GO

/****** Object:  Trigger [dbo].[AFTER_COORD_UPDATE]    Script Date: 20.10.2018 22:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[AFTER_COORD_UPDATE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT,
	@auto_assign_driver_by_coords smallint,
	@aass_driver_max_radius int, @count int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@auto_assign_driver_by_coords = auto_assign_driver_by_coords,
	@aass_driver_max_radius = aass_driver_max_radius
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @nOldValue int, @newClLat varchar(50),
			@newClLon varchar(50), @oldClLat varchar(50),
			@oldClLon varchar(50), @newAdrLat varchar(50),
			@newAdrLon varchar(50), @oldAdrLat varchar(50),
			@oldAdrLon varchar(50);

		SELECT @nOldValue=b.BOLD_ID, 
		@newClLat=ISNULL(a.rclient_lat, ''),
		@newClLon=ISNULL(a.rclient_lon, ''),
		@oldClLat=ISNULL(b.rclient_lat, ''),
		@oldClLon=ISNULL(b.rclient_lon, ''),
		@newAdrLat=ISNULL(a.adr_detect_lat, ''),
		@newAdrLon=ISNULL(a.adr_detect_lon, ''),
		@oldAdrLat=ISNULL(b.adr_detect_lat, ''),
		@oldAdrLon=ISNULL(b.adr_detect_lon, '')
		FROM inserted a, deleted b;
	
		IF ((@newClLat <> @oldClLat AND @newClLat <> '') OR 
			(@newClLon <> @oldClLon  AND @newClLon <> '') OR 
			(@newAdrLat <> @oldAdrLat  AND @newAdrLat <> '') OR 
			(@newAdrLon <> @oldAdrLon  AND @newAdrLon <> '') )
		BEGIN
			UPDATE Zakaz 
			SET is_coordinates_upd = 1
			WHERE BOLD_ID=@nOldValue;

			IF @auto_assign_driver_by_coords > 0 AND @aass_driver_max_radius > 0 BEGIN
				IF (@newClLat <> @oldClLat AND @newClLat <> '') OR 
					(@newClLon <> @oldClLon  AND @newClLon <> '') BEGIN
					EXEC AutoAssignDriverByCoords @nOldValue, @newClLat,
						@newClLon, @count = @count OUTPUT;
				END 
				ELSE IF (@newAdrLat <> @oldAdrLat  AND @newAdrLat <> '') OR 
					(@newAdrLon <> @oldAdrLon  AND @newAdrLon <> '') BEGIN
					EXEC AutoAssignDriverByCoords @nOldValue, @newAdrLat,
						@newAdrLon, @count = @count OUTPUT;
				END;
			END

			UPDATE Personal
			SET orders_coord_updated = 1;
		END;

	END;
	
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorList]    Script Date: 20.10.2018 22:45:59 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

ALTER FUNCTION [dbo].[GetJSONSectorList] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @company_id int, @sector_id int, @sector_count int,
		@sector_name varchar(255), @counter int, @for_all smallint, 
		@scompany_id int;
   
	SET @res='{"command":"s_lst","s_cnt":"';
	SET @counter = 0;

	SELECT @company_id=otnositsya_k_gruppe  
	FROM Voditelj
	WHERE BOLD_ID = @driver_id;

	SET @company_id = ISNULL(@company_id, 0);
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID
	WHERE ws.company_id = @company_id OR ws.company_id < 0;

	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dict.Naimenovanie, ws.for_all, ws.company_id  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID
	WHERE ws.company_id = @company_id OR ws.company_id < 0;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name, @for_all, @scompany_id
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20));

		IF (@for_all = 1) BEGIN
		SET @res=@res + '","fal'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@for_all as varchar(20));
		END;

		IF (@scompany_id > 0) BEGIN
		SET @res=@res + '","cm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@scompany_id as varchar(20));
		END;

		SET @res=@res + '","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sector_name,'"',' '),'''',' ')+'"'+
			dbo.GetSectorAreaCoords(@sector_id, @counter);
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name, @for_all, @scompany_id
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverSettings]    Script Date: 23.10.2018 11:02:29 ******/
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
		@curr_sh varchar(50), @lock_free_orders_info smallint,
		@auto_detect_driver_sector smallint, @company_id int,
		@use_opengts_monitoring smallint, @on_gps_signaling smallint,
		@dnts_wait_oth_company smallint, @dnts_wait_wtout_company smallint,
		@auto_show_wait_dialog smallint, @wait_dlg_with_sectors smallint,
		@alart_order_confirm smallint, @confirm_lineout_on_exit smallint,
		@hide_other_sect_wait_orders smallint, @dont_wait_in_busy_state smallint,
		@show_all_sectwait_manual smallint, @taxm_block_wtout_onplace smallint,
		@start_free_distance int, @start_free_time int, 
		@dispatcher_phone varchar(50), @reserved_ip varchar(50);
	
	SELECT TOP 1 @curr_mver=ISNULL(curr_mob_version,2102),
	@min_mver=ISNULL(min_mob_version,2102),
	@mand_upd=ISNULL(mandatory_update,0),
	@addit_rparams=ISNULL(addit_rem_params,''),
	@gps_srv_adr=ISNULL(GPS_SRV_ADR,''),
	@curr_sh=ISNULL(currency_short,''),
	@lock_free_orders_info = lock_free_orders_info,
	@auto_detect_driver_sector = auto_detect_driver_sector,
	@use_opengts_monitoring = use_opengts_monitoring, 
	@on_gps_signaling = on_gps_signaling,
	@dnts_wait_oth_company = dnts_wait_oth_company, 
	@dnts_wait_wtout_company = dnts_wait_wtout_company,
	@auto_show_wait_dialog = auto_show_wait_dialog, 
	@wait_dlg_with_sectors = wait_dlg_with_sectors,
	@alart_order_confirm = alart_order_confirm, 
	@confirm_lineout_on_exit = confirm_lineout_on_exit,
	@hide_other_sect_wait_orders = hide_other_sect_wait_orders, 
	@dont_wait_in_busy_state = dont_wait_in_busy_state,
	@show_all_sectwait_manual = show_all_sectwait_manual, 
	@taxm_block_wtout_onplace = taxm_block_wtout_onplace,
	@start_free_distance = start_free_distance, 
	@start_free_time = start_free_time, 
	@dispatcher_phone = dispatcher_phone, 
	@reserved_ip = reserved_ip
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
		@reqgps=require_gps,
		@company_id = ISNULL(otnositsya_k_gruppe, 0)   
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

	if(@use_opengts_monitoring=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"use_gps":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"use_gps":"no",';
	END; 
	
	if(@on_gps_signaling=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SCCR":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SCCR":"no",';
	END;
		
	if(@dnts_wait_oth_company=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWOC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWOC":"no",';
	END; 
	
	if(@dnts_wait_wtout_company=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWWC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWWC":"no",';
	END;
		
	if(@auto_show_wait_dialog=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLGA":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLGA":"no",';
	END; 
	
	if(@wait_dlg_with_sectors=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLWS":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLWS":"no",';
	END;
		
	if(@alart_order_confirm=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ALOC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ALOC":"no",';
	END;
	
	if(@confirm_lineout_on_exit=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"cloe":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"cloe":"no",';
	END;
		
	if(@hide_other_sect_wait_orders=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"HOSWO":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"HOSWO":"no",';
	END;
	
	if(@dont_wait_in_busy_state=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWIBS":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWIBS":"no",';
	END;
		
	if(@show_all_sectwait_manual=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SASWM":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SASWM":"no",';
	END;
	
	if(@taxm_block_wtout_onplace=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"TBWOP":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"TBWOP":"no",';
	END;
		
	if(@start_free_distance > 0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"stbdist":"' + CAST(@start_free_distance as varchar(20)) + '",';
	END; 
	
	if(@start_free_time > 0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"stbctm":"' + CAST(@start_free_time as varchar(20)) + '",';
	END; 
		
	if(@dispatcher_phone <> '')
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DSPH":"' + @dispatcher_phone + '",';
	END; 
	
	if(@reserved_ip <> '')
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ip2":"' + @reserved_ip + '",';
	END;

	if (@lock_free_orders_info = 1)
	BEGIN
		SET @tmetr_instr = @tmetr_instr+'"LCFOI":"yes",';
	END
	ELSE BEGIN
		SET @tmetr_instr = @tmetr_instr+'"LCFOI":"no",';
	END;

	if (@auto_detect_driver_sector = 1)
	BEGIN
		SET @tmetr_instr = @tmetr_instr+'"ADS":"yes",';
	END
	ELSE BEGIN
		SET @tmetr_instr = @tmetr_instr+'"ADS":"no",';
	END;

	SET @tmetr_instr = @tmetr_instr+'"cmpi":"' + CAST(@company_id as varchar(20)) + '",';
	
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

/****** Object:  StoredProcedure [dbo].[One10SecTask]    Script Date: 23.10.2018 11:02:08 ******/
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
			@auto_close_clcancel_time int, @auto_arh_empty_orders smallint,
			@use_fordbroadcast_priority smallint,
			@auto_for_all_tender smallint,
			@auto_for_all_longtime int;
	
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
	@auto_arh_empty_orders=ISNULL(auto_arh_empty_orders,0),
	@use_fordbroadcast_priority = use_fordbroadcast_priority,
	@auto_for_all_tender = auto_for_all_tender,
	@auto_for_all_longtime = auto_for_all_longtime
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
		if @auto_for_all_tender = 1 AND @auto_for_all_longtime > 0 BEGIN
			UPDATE dbo.Zakaz 
			SET 
			--konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), 
			--SECTOR_ID = (CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END),
			REMOTE_SET=2, Priority_counter=0, for_all_sectors = 1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 2)  
			and (Predvariteljnyi=0) and (rclient_status=0) AND for_all_sectors <> 1
			AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_for_all_longtime)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0))
			
			IF @@ROWCOUNT > 0 BEGIN

			IF (@use_fordbroadcast_priority = 1) 
			BEGIN
				DELETE FROM DR_ORD_PRIORITY WHERE order_id IN 
				(SELECT BOLD_ID FROM Zakaz 
					WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 2 OR REMOTE_SET = 3)  
					and (Predvariteljnyi=0) and (rclient_status=0) AND for_all_sectors <> 1
					AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_for_all_longtime)
					AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0)));
			END;

			EXEC SetOrdersWideBroadcasts 1, '';

			END;

			SET @success=1;
		END;

		if @auto_bsector_longorders>0 and @auto_bsector_longtime>0 and @auto_bsectorid_longorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), 
			SECTOR_ID = (CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), REMOTE_SET=2, Priority_counter=0, 
			for_all_sectors = (CASE WHEN (detected_sector > 0 AND failed_adr_coords_detect <= 0) THEN 0 ELSE 1 END),
			Adres_vyzova_vvodim = CAST(CASE WHEN (adr_manual_set=0 AND @auto_bsect_notmanual_ord=1) THEN 'позвони клиенту' ELSE Adres_vyzova_vvodim END AS varchar(255))
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) and (rclient_status=0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_longtime)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0))
			SET @success=1;
		end
		if @auto_bsector_onlineorders>0 and @auto_bsector_onlinetime>0 and @auto_bsectorid_onlineorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_onlineorders END), 
			SECTOR_ID=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_onlineorders END), REMOTE_SET=2, Priority_counter=0,
			for_all_sectors = (CASE WHEN (detected_sector > 0 AND failed_adr_coords_detect <= 0) THEN 0 ELSE 1 END)
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

