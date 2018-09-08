SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetJSONRClientStatus] 
	-- Add the parameters for the stored procedure here
	(@client_id int, @phone varchar(255), @full_data smallint, @res varchar(2000) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @acc_status int,
		@group_id int, @rsync int, @clsync smallint, @rcorder_status int,
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int;
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
	
		IF (@order_sort_dr_assign=1)
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
			SELECT BOLD_ID, Adres_vyzova_vvodim as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID, REMOTE_SET, on_place, Uslovn_stoim, ISNULL(tmhistory,''), ISNULL(status_accumulate,''), dbo.GetDrJSONCoordsByNum(Pozyvnoi_ustan), CONVERT(varchar, DATEPART(hh, Nachalo_zakaza_data))+':'+CONVERT(varchar, DATEPART(mi, Nachalo_zakaza_data))+' '+CONVERT(varchar, DATEPART(dd, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(mm, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(yyyy, Nachalo_zakaza_data)), rclient_status 
			FROM Zakaz ord WHERE 
			ord.rclient_id=@client_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(16,100)
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END;
		
		DECLARE @ors int, @opl int, @osumm int, @tmh varchar(1000), @stac varchar(1000);
		/*Открываем курсор*/
		OPEN @CURSOR
		/*Выбираем первую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, @order_start_date, @rc_status;
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
				CAST(@stac as varchar(20))+'"'+',"osdt'+
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
			
			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, @order_start_date, @rc_status;
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





