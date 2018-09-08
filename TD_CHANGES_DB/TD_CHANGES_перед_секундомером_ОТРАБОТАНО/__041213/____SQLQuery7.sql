ALTER FUNCTION [dbo].[GetJSONOrdersBCasts] ()
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255),
		@counter int;
   
	SET @res='{"command":"ford",';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT BOLD_ID, Adres_vyzova_vvodim  FROM Zakaz 
	WHERE Zavershyon=0 AND REMOTE_SET>0 AND REMOTE_SET<8;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+@order_adres+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	RETURN(@res)
END

GO
