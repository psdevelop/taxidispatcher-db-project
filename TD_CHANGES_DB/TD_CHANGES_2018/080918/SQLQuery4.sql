USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[GetTarifAreaCoords]    Script Date: 08.09.2018 14:54:17 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetSectorAreaCoords] (@sector_id int, @torder_num int)
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @scount int, @counter int,
		@lat decimal(28,10), @lon decimal(28,10),
		@order_num int;
   
	SET @res=',"trarcnt'+CAST(@torder_num as varchar(20))+'":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM AREA_LINES WHERE sector_id = @sector_id;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT order_num, lat, lon  
	FROM AREA_LINES
	WHERE sector_id = @sector_id  
	ORDER BY order_num ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        
        IF (CHARINDEX('.',CAST(@lat as varchar(20)))+5<=
			LEN(CAST(@lat as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@lat as varchar(20)),
				CHARINDEX('.',CAST(@lat as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@lat as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@lon as varchar(20)))+5<=
			LEN(CAST(@lon as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@lon as varchar(20)),
				CHARINDEX('.',CAST(@lon as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@lon as varchar(20));
		END
		
        SET @res=@res+',"tralat'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","tralon'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;

	RETURN(@res)
END

GO


