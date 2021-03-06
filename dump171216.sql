USE [master]
GO
/****** Object:  Database [TD5R1]    Script Date: 17.12.2016 12:13:38 ******/
CREATE DATABASE [TD5R1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TDTwoRelease_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TDTwoRelease_Data.MDF' , SIZE = 309632KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TDTwoRelease_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TDTwoRelease_Data_log.LDF' , SIZE = 3456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [TD5R1] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TD5R1].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [TD5R1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TD5R1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TD5R1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TD5R1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TD5R1] SET ARITHABORT OFF 
GO
ALTER DATABASE [TD5R1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TD5R1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TD5R1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TD5R1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TD5R1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TD5R1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TD5R1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TD5R1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TD5R1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TD5R1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TD5R1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TD5R1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TD5R1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TD5R1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TD5R1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TD5R1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TD5R1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TD5R1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TD5R1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TD5R1] SET  MULTI_USER 
GO
ALTER DATABASE [TD5R1] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [TD5R1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TD5R1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TD5R1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TD5R1]
GO
/****** Object:  User [яна]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [яна] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ФАИНАОП]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ФАИНАОП] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ФАИНАОП]
GO
/****** Object:  User [ФАИНА]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ФАИНА] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ФАИНА]
GO
/****** Object:  User [ТАНЯОП]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ТАНЯОП] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ТАНЯОП]
GO
/****** Object:  User [ТАНЯ]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ТАНЯ] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ТАНЯ]
GO
/****** Object:  User [СКАЗКА]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [СКАЗКА] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[СКАЗКА]
GO
/****** Object:  User [СВЕТА]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [СВЕТА] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[СВЕТА]
GO
/****** Object:  User [ОПЕРАТОР]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ОПЕРАТОР] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ОПЕРАТОР]
GO
/****** Object:  User [оля]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [оля] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Нонна]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Нонна] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Нона]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Нона] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Нинок]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Нинок] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Нинок]
GO
/****** Object:  User [НИНАОП]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [НИНАОП] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[НИНАОП]
GO
/****** Object:  User [НИНА]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [НИНА] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[НИНА]
GO
/****** Object:  User [Наташа]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Наташа] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [надя]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [надя] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Маша]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Маша] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Маша]
GO
/****** Object:  User [марина]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [марина] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ирина]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ирина] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Даша]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [Даша] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ГАЛЯОП]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ГАЛЯОП] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ГАЛЯОП]
GO
/****** Object:  User [ГАЛЯ]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [ГАЛЯ] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ГАЛЯ]
GO
/****** Object:  User [АННА]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [АННА] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[АННА]
GO
/****** Object:  User [valya]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [valya] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[valya]
GO
/****** Object:  User [sveta]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [sveta] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[sveta]
GO
/****** Object:  User [luda]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [luda] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[luda]
GO
/****** Object:  User [helen]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [helen] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[helen]
GO
/****** Object:  User [empty]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [empty] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[empty]
GO
/****** Object:  User [disp]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [disp] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[disp]
GO
/****** Object:  User [app_server]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [app_server] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [anna]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [anna] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[anna]
GO
/****** Object:  User [angel]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [angel] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[angel]
GO
/****** Object:  User [alex]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [alex] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[alex]
GO
/****** Object:  User [alena]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [alena] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[alena]
GO
/****** Object:  User [adzher]    Script Date: 17.12.2016 12:13:38 ******/
CREATE USER [adzher] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[adzher]
GO
ALTER ROLE [db_owner] ADD MEMBER [яна]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [яна]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [яна]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [яна]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [яна]
GO
ALTER ROLE [db_datareader] ADD MEMBER [яна]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [яна]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [яна]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [яна]
GO
ALTER ROLE [db_owner] ADD MEMBER [оля]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [оля]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [оля]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [оля]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [оля]
GO
ALTER ROLE [db_datareader] ADD MEMBER [оля]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [оля]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [оля]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [оля]
GO
ALTER ROLE [db_owner] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Нонна]
GO
ALTER ROLE [db_owner] ADD MEMBER [Нона]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Нона]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Нона]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Нона]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Нона]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Нона]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Нона]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Нона]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Нона]
GO
ALTER ROLE [db_owner] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Наташа]
GO
ALTER ROLE [db_owner] ADD MEMBER [надя]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [надя]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [надя]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [надя]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [надя]
GO
ALTER ROLE [db_datareader] ADD MEMBER [надя]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [надя]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [надя]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [надя]
GO
ALTER ROLE [db_owner] ADD MEMBER [марина]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [марина]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [марина]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [марина]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [марина]
GO
ALTER ROLE [db_datareader] ADD MEMBER [марина]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [марина]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [марина]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [марина]
GO
ALTER ROLE [db_owner] ADD MEMBER [ирина]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [ирина]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [ирина]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [ирина]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [ирина]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ирина]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ирина]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [ирина]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [ирина]
GO
ALTER ROLE [db_owner] ADD MEMBER [Даша]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Даша]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Даша]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Даша]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Даша]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Даша]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Даша]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Даша]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Даша]
GO
ALTER ROLE [db_owner] ADD MEMBER [app_server]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [app_server]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [app_server]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [app_server]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [app_server]
GO
ALTER ROLE [db_datareader] ADD MEMBER [app_server]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [app_server]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [app_server]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [app_server]
GO
ALTER ROLE [db_owner] ADD MEMBER [alex]
GO
/****** Object:  Schema [adzher]    Script Date: 17.12.2016 12:13:38 ******/
CREATE SCHEMA [adzher]
GO
/****** Object:  Schema [alena]    Script Date: 17.12.2016 12:13:38 ******/
CREATE SCHEMA [alena]
GO
/****** Object:  Schema [alex]    Script Date: 17.12.2016 12:13:38 ******/
CREATE SCHEMA [alex]
GO
/****** Object:  Schema [angel]    Script Date: 17.12.2016 12:13:38 ******/
CREATE SCHEMA [angel]
GO
/****** Object:  Schema [anna]    Script Date: 17.12.2016 12:13:38 ******/
CREATE SCHEMA [anna]
GO
/****** Object:  Schema [disp]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [disp]
GO
/****** Object:  Schema [empty]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [empty]
GO
/****** Object:  Schema [helen]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [helen]
GO
/****** Object:  Schema [luda]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [luda]
GO
/****** Object:  Schema [sveta]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [sveta]
GO
/****** Object:  Schema [valya]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [valya]
GO
/****** Object:  Schema [АННА]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [АННА]
GO
/****** Object:  Schema [ГАЛЯ]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ГАЛЯ]
GO
/****** Object:  Schema [ГАЛЯОП]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ГАЛЯОП]
GO
/****** Object:  Schema [Маша]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [Маша]
GO
/****** Object:  Schema [НИНА]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [НИНА]
GO
/****** Object:  Schema [НИНАОП]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [НИНАОП]
GO
/****** Object:  Schema [Нинок]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [Нинок]
GO
/****** Object:  Schema [ОПЕРАТОР]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ОПЕРАТОР]
GO
/****** Object:  Schema [СВЕТА]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [СВЕТА]
GO
/****** Object:  Schema [СКАЗКА]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [СКАЗКА]
GO
/****** Object:  Schema [ТАНЯ]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ТАНЯ]
GO
/****** Object:  Schema [ТАНЯОП]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ТАНЯОП]
GO
/****** Object:  Schema [ФАИНА]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ФАИНА]
GO
/****** Object:  Schema [ФАИНАОП]    Script Date: 17.12.2016 12:13:39 ******/
CREATE SCHEMA [ФАИНАОП]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrderNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddNewOrderNum] 
	-- Add the parameters for the stored procedure here
	(@bold_id int, @ord_num int OUTPUT)
AS
BEGIN 
    DECLARE @new_ord_num int;
    DECLARE @RETURN_VALUE int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED

	BEGIN TRAN
    
    UPDATE Objekt_vyborki_otchyotnosti SET Ispoljz_priz_3=
      (Ispoljz_priz_3+1);
      
    SELECT @new_ord_num=Ispoljz_priz_3 
      FROM Objekt_vyborki_otchyotnosti 
      
    COMMIT TRAN
     
    SET @ord_num=@new_ord_num;
    return
END


GO
/****** Object:  StoredProcedure [dbo].[ApplyRClientCoords]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ApplyRClientCoords] 
	-- Add the parameters for the stored procedure here
	(@rclient_id int, @lat varchar(50), @lon varchar(50))
AS
BEGIN 
	SET @rclient_id=ISNULL(@rclient_id,0);
	SET @lat=ISNULL(@lat,'');
	SET @lon=ISNULL(@lon,'');
	IF (@rclient_id>0 and @lat<>'' and @lon<>'') begin
		UPDATE Zakaz SET rclient_lat=@lat, rclient_lon=@lon 
		WHERE rclient_id=@rclient_id and Zavershyon=0 and Arhivnyi=0;

		UPDATE REMOTE_CLIENTS SET last_lat=@lat, last_lon=@lon 
		WHERE id=@rclient_id;
	end;
END


GO
/****** Object:  StoredProcedure [dbo].[AutoSetFromPretendents]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[AutoSetFromPretendents] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @delta_time_param int, @count int OUT,
		@sort_with_accept int, @manual_before int)
AS
BEGIN 
	DECLARE @order_dr_num int, 
	@last_status_time datetime, 
	@driver_id int, @accept_count int,
	@dr_count int;
	
	SET @count = 0;
	SET @last_status_time = NULL;
	SET @order_dr_num = 0;
	SET @dr_count = 0;

	SELECT @order_dr_num=REMOTE_DRNUM,
	@last_status_time=LAST_STATUS_TIME
	FROM Zakaz
	WHERE (Zakaz.BOLD_ID=@order_id);
	
	IF ((DATEDIFF(SECOND, @last_status_time, 
		CURRENT_TIMESTAMP)>=@delta_time_param)
		AND (@last_status_time IS NOT NULL) 
		AND (@order_dr_num>0) 
		AND (@last_status_time<CURRENT_TIMESTAMP))
	BEGIN
	
	--PRINT '111';
	
	SELECT @accept_count=COUNT(*) FROM
	ORDER_ACCEPTING WHERE ORDER_ID=@order_id
	AND DRIVER_NUM=@order_dr_num;
	
	SELECT TOP 1 @driver_id=oa.DRIVER_ID 
	FROM ORDER_ACCEPTING oa 
	WHERE oa.ORDER_ID=@order_id AND 
	oa.DRIVER_NUM=@order_dr_num
	ORDER BY oa.ACCEPT_DATE DESC;
	
	--SELECT TOP 1 @driver_id=dr.BOLD_ID 
	--FROM Voditelj dr 
	--WHERE dr.Pozyvnoi=@order_dr_num;
	
	SET @dr_count = @accept_count;
	
	if (@accept_count=0)
	BEGIN
		SELECT @accept_count=COUNT(*) 
		FROM ORDER_ACCEPTING
		WHERE ORDER_ID=@order_id;
		
		if (@accept_count>0)
		BEGIN
		  if (@sort_with_accept>0)
		  begin
			
			if(@manual_before=0)
			BEGIN
			
			SELECT TOP 1 @driver_id=oa.DRIVER_ID
			FROM ORDER_ACCEPTING oa JOIN Voditelj dr
			ON oa.DRIVER_ID=dr.BOLD_ID
			WHERE oa.ORDER_ID=@order_id
			AND oa.IS_MANUAL=0
			ORDER BY dr.Vremya_poslednei_zayavki ASC;
			
			SET @dr_count=@@ROWCOUNT;
			
			if (@dr_count=0)
			BEGIN
			
			SELECT TOP 1 @driver_id=oa.DRIVER_ID
			FROM ORDER_ACCEPTING oa 
			WHERE oa.ORDER_ID=@order_id 
			AND oa.IS_MANUAL>0
			ORDER BY oa.ACCEPT_DATE ASC;
			
			SET @dr_count=@@ROWCOUNT;
			
			END;
			
			END
			else
			BEGIN
			
			SELECT TOP 1 @driver_id=oa.DRIVER_ID 
			FROM ORDER_ACCEPTING oa 
			WHERE oa.ORDER_ID=@order_id 
			AND oa.IS_MANUAL>0
			ORDER BY oa.ACCEPT_DATE ASC;
			
			SET @dr_count=@@ROWCOUNT;
			
			if (@dr_count=0)
			BEGIN
			SELECT TOP 1 @driver_id=oa.DRIVER_ID
			FROM ORDER_ACCEPTING oa JOIN Voditelj dr
			ON oa.DRIVER_ID=dr.BOLD_ID
			WHERE oa.ORDER_ID=@order_id
			AND oa.IS_MANUAL=0
			ORDER BY dr.Vremya_poslednei_zayavki ASC;
			
			SET @dr_count=@@ROWCOUNT;
			
			END;
			
			END;
		  end
		  else
			begin
			
			SELECT TOP 1 @driver_id=oa.DRIVER_ID 
			FROM ORDER_ACCEPTING oa JOIN Voditelj dr
			ON oa.DRIVER_ID=dr.BOLD_ID
			WHERE oa.ORDER_ID=@order_id
			ORDER BY dr.Vremya_poslednei_zayavki ASC;
			
			end;
		END;
		
	END;
	
	if ((@accept_count>0) AND (@driver_id>0) 
		AND (@dr_count>0))
	BEGIN
		EXEC SetDriverFromPretendents @order_id, 
		@driver_id, @count = @count OUTPUT;
	END
	ELSE
	BEGIN
		EXEC ClearOrderAcceptByDrId @order_id,
		@driver_id, @accept_count;
	END;
	
	
	END;
END













GO
/****** Object:  StoredProcedure [dbo].[AutoSetOrderFinished]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[AutoSetOrderFinished] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @delta_time_param int, @count int OUT)
AS
BEGIN 
	DECLARE @order_dr_num int, 
	@last_status_time datetime, 
	@driver_id int, @accept_count int;
	
	SET @count = 0;
	SET @last_status_time = NULL;
	SET @order_dr_num = 0;

	SELECT @order_dr_num=REMOTE_DRNUM,
	@last_status_time=LAST_STATUS_TIME
	FROM Zakaz
	WHERE (Zakaz.BOLD_ID=@order_id);
	
	IF ((DATEDIFF(SECOND, @last_status_time, 
		CURRENT_TIMESTAMP)>=@delta_time_param)
		AND (@last_status_time IS NOT NULL) 
		AND (@order_dr_num>0) 
		AND (@last_status_time<CURRENT_TIMESTAMP))
	BEGIN
	
	if (@order_dr_num>0)
	BEGIN
		EXEC ManualSetOrderRemoteStatus @order_id, 
		100, @count = @count OUTPUT;
	END;
	
	
	END;
END













GO
/****** Object:  StoredProcedure [dbo].[CancelOrdersRClient]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CancelOrdersRClient] 
	-- Add the parameters for the stored procedure here
	(@phone varchar(255),
	@client_id int)
AS
BEGIN 
	
	if (@client_id>0)
	BEGIN
		UPDATE Zakaz SET 
		Adres_vyzova_vvodim='(ОТМЕНА КЛИЕНТОМ)'+REPLACE(Adres_vyzova_vvodim,'(ONLINE)',''),
		rclient_status=-1
		WHERE Telefon_klienta=@phone AND rclient_status>=0 AND 
		Zavershyon=0 AND rclient_id=@client_id AND REMOTE_SET<100;
	END;
END






GO
/****** Object:  StoredProcedure [dbo].[CheckClientRegistration]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[CheckClientRegistration] 
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
					if LEN(@phone)=10 begin
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
				if LEN(@phone)=10 begin
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
/****** Object:  StoredProcedure [dbo].[CheckDriverBusy]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CheckDriverBusy] 
	-- Add the parameters for the stored procedure here
	(@driver_id int)
AS
BEGIN 
    DECLARE @counter int, 
		@its_remote_client int, @dr_count int,
		@sync_acc int;
    
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
	--ORDER_DRV_CANCEL_USER_WAIT = 29;
	
	SELECT TOP 1 @sync_acc=ISNULL(sync_busy_accounting,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @sync_acc=ISNULL(@sync_acc,0);
    
    SELECT @dr_count=COUNT(*)
    from Voditelj dr
    WHERE dr.BOLD_ID=@driver_id;
    
    IF (@dr_count>0)
    BEGIN
    
    SELECT @its_remote_client=dr.ITS_REMOTE_CLIENT
    from Voditelj dr
    WHERE dr.BOLD_ID=@driver_id;
    
    IF(@its_remote_client=1)
    BEGIN
		IF (@sync_acc=1)
		BEGIN
			SELECT @counter=COUNT(*) FROM Zakaz
			WHERE vypolnyaetsya_voditelem=@driver_id
			and Zavershyon=0  and Arhivnyi=0
			and (REMOTE_SET IN (8,11,13,15,19,20,21,29,0)) 
			and Soobsheno_voditelyu=0 and REMOTE_SYNC=0;
		END
		ELSE
		BEGIN
			SELECT @counter=COUNT(*) FROM Zakaz
			WHERE vypolnyaetsya_voditelem=@driver_id
			and Zavershyon=0  and Arhivnyi=0
			and (REMOTE_SET IN (8,11,13,15,19,20,21,29,0)) 
			and Soobsheno_voditelyu=0;
		END;
    END
    ELSE
    BEGIN
		SELECT @counter=COUNT(*) FROM Zakaz
		WHERE vypolnyaetsya_voditelem=@driver_id
		and Zavershyon=0 and Arhivnyi=0 
		and Soobsheno_voditelyu=0;
    END;
    
	if(@counter>0)
	begin
		UPDATE Voditelj 
		SET Voditelj.Zanyat_drugim_disp=1 
		WHERE Voditelj.BOLD_ID=@driver_id;
	end
	else
	begin
		UPDATE Voditelj 
		SET Voditelj.Zanyat_drugim_disp=0 
		WHERE Voditelj.BOLD_ID=@driver_id;
	end;	
	
	END;
END


GO
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrId]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ClearOrderAcceptByDrId] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @count int OUT)
AS
BEGIN 

	SET @count=0;

	DELETE FROM ORDER_ACCEPTING 
	WHERE ORDER_ID=@order_id AND DRIVER_ID=@driver_id;
	
	SET @count=@@ROWCOUNT;
	
END




GO
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ClearOrderAcceptByDrNum] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 

	SET @count=0;

	DELETE FROM ORDER_ACCEPTING 
	WHERE ORDER_ID=@order_id AND DRIVER_NUM=@dr_num;
	
	SET @count=@@ROWCOUNT;
	
END




GO
/****** Object:  StoredProcedure [dbo].[FixOrderAccepting]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[FixOrderAccepting] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @order_id int, @dr_num int, @comment varchar(255), @is_manual int)
AS
BEGIN 
	INSERT INTO ORDER_ACCEPTING (ORDER_ID, DRIVER_ID, DRIVER_NUM, COMMENT, IS_MANUAL)
	VALUES (@order_id, @driver_id, @dr_num, @comment, @is_manual);
END



GO
/****** Object:  StoredProcedure [dbo].[GetDrDateCalcBalance]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GetDrDateCalcBalance]  ( @dr_num int, @res int OUT, 
		@DebtSumm decimal(28,10) OUT, @DrTakeSumm decimal(28,10) OUT, 
		@DrSumm decimal(28,10) OUT, @DrFixedSumm decimal(28,10) OUT)
AS
BEGIN
   declare @dr_count int, @driver_id int;
   
   SET @res=-1;
   SET @DebtSumm=0;
   SET @DrTakeSumm=0;
   SET @DrSumm=0;
   SET @DrFixedSumm=0;
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE Pozyvnoi=@dr_num;
   
   if (@dr_count=1) and (@dr_num>0) begin
		SELECT @driver_id=BOLD_ID FROM Voditelj 
		WHERE Pozyvnoi=@dr_num;
		
			DECLARE @db_version INT, @drcalc_start_date date,
			@ftime_tariff decimal(28,10), @min_debt decimal(28,10);
	
			SELECT TOP 1 @db_version=ISNULL(db_version,3),
			@drcalc_start_date=ISNULL(drcalc_start_date,GETDATE()),
			@min_debt=ISNULL(MIN_DEBET,0)
			FROM Objekt_vyborki_otchyotnosti
			WHERE Tip_objekta='for_drivers';
			
			if @drcalc_start_date>GETDATE()
			begin
				SET @drcalc_start_date=GETDATE();
			end
			
			DECLARE @emploee_date DATE, @free_days_count int;
			
			begin try
				SELECT @free_days_count=CONVERT(int,Udostoverenie_nom) from Voditelj
				where BOLD_ID=@driver_id;
			end try
			begin catch
				SET @free_days_count=0;
			end catch 
			
			SET @free_days_count=ISNULL(@free_days_count, 0);
			
			begin try
				SELECT @emploee_date=CONVERT(DATE, Klass_vodit, 104) from Voditelj
				where BOLD_ID=@driver_id;
			end try
			begin catch
				SET @emploee_date=@drcalc_start_date;
			end catch
			
			SET @emploee_date=ISNULL(@emploee_date, GETDATE());
			
			if @emploee_date>GETDATE()
			begin
				SET @emploee_date=GETDATE();
			end
			
			if @emploee_date<@drcalc_start_date begin
				SET @emploee_date=@drcalc_start_date;
			end
			else begin
				SET @drcalc_start_date=@emploee_date;
			end
			
			select @DrTakeSumm=SUM(Summa) from  Vyruchka_ot_voditelya 
			where Pozyvnoi=@dr_num and Data_postupleniya>=@drcalc_start_date
			
			SET @DrTakeSumm = ISNULL(@DrTakeSumm,0);

			select @DrSumm=(SUM(Uslovn_stoim)*dbo.GetDrTakePercent(@dr_num)) 
			from Zakaz where Nachalo_zakaza_data>@drcalc_start_date and
			Pozyvnoi_ustan=@dr_num AND Arhivnyi=0 and Zavershyon=1 AND
			Soobsheno_voditelyu=0
			
			SET @DrSumm = ISNULL(@DrSumm,0);

			select @DrFixedSumm=(dbo.GetDriverDaysFixedSumm(@dr_num, @emploee_date, @free_days_count) + 
			dbo.GetDrOrderFixedSumm(@dr_num, @emploee_date));
			
			SET @DrFixedSumm = ISNULL(@DrFixedSumm,0);
			
			SET @DebtSumm = @DrTakeSumm - @DrSumm - @DrFixedSumm;
			--PRINT @DebtSumm;
			--PRINT '---';
			--PRINT @DrTakeSumm;
			--PRINT '---';
			--PRINT @DrSumm;
			--PRINT '---';
			--PRINT @DrFixedSumm;
			
			if @DebtSumm<@min_debt begin
				SET @res=1;
			end
			else begin
				SET @res=-2;
			end
   end

   RETURN(@res)
END

GO
/****** Object:  StoredProcedure [dbo].[GetDriverQueuePosition]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetDriverQueuePosition] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @pos_msg varchar(255) OUT)
AS
BEGIN 

	DECLARE @sector_id int;
	DECLARE @sector_name varchar(255);
	DECLARE @last_order_time datetime;
	DECLARE @position int;
	DECLARE @driver_num int;
	
	SET @pos_msg='Не определен сектор водителя!';
	SET @sector_id=-1;
	SET @sector_name='НЕ ОПРЕДЕЛЕН';
	SET @last_order_time=GETDATE();
	
	SELECT TOP 1 @sector_id=Voditelj.
	rabotaet_na_sektore, @last_order_time=
	Voditelj.Vremya_poslednei_zayavki,
	@driver_num=Voditelj.Pozyvnoi 
	FROM Voditelj 
	WHERE Voditelj.BOLD_ID=@driver_id;
	
	IF(@sector_id>0)
	BEGIN
		SELECT @sector_name=sp.Naimenovanie 
		FROM  Spravochnik sp 
		WHERE sp.BOLD_ID=@sector_id;
		
		SELECT @position=COUNT(*)+1 
		FROM Voditelj dr WHERE
		dr.Vremya_poslednei_zayavki<
		@last_order_time AND 
		dr.rabotaet_na_sektore=@sector_id
		AND dr.V_rabote=1 AND dr.Pozyvnoi>0 
		and S_klass=0 and Zanyat_drugim_disp=0 and Na_pereryve=0;
		
		SET @pos_msg='Водитель '+
			CAST(@driver_num as varchar(50))+
			' на секторе "'+
			@sector_name +
			'" место в очереди - '+
			CAST(@position as varchar(50));
		
	END
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebt]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetDrLockOnCalcDebt]  ( @dr_num int, @res int OUT)
AS
BEGIN
   declare @dr_count int, @use_dr_lock smallint, @driver_id int;
   
   SET @res=-1
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE Pozyvnoi=@dr_num;
   
   if (@dr_count=1) and (@dr_num>0) begin
		SELECT @use_dr_lock=rlock_on_calc_debt, @driver_id=BOLD_ID FROM Voditelj 
		WHERE Pozyvnoi=@dr_num;
		if @use_dr_lock<>1 begin
			SET @res=-1
		end
		else begin
		
			DECLARE @db_version INT, @drcalc_start_date date,
			@ftime_tariff decimal(28,10), @min_debt decimal(28,10);
	
			SELECT TOP 1 @db_version=ISNULL(db_version,3),
			@drcalc_start_date=ISNULL(drcalc_start_date,GETDATE()),
			@min_debt=ISNULL(MIN_DEBET,0)
			FROM Objekt_vyborki_otchyotnosti
			WHERE Tip_objekta='for_drivers';
			
			if @drcalc_start_date>GETDATE()
			begin
				SET @drcalc_start_date=GETDATE();
			end
			
			DECLARE @emploee_date DATE, @free_days_count int;
			
			begin try
				SELECT @free_days_count=CONVERT(int,Udostoverenie_nom) from Voditelj
				where BOLD_ID=@driver_id;
			end try
			begin catch
				SET @free_days_count=0;
			end catch 
			
			SET @free_days_count=ISNULL(@free_days_count, 0);
			
			begin try
				SELECT @emploee_date=CONVERT(DATE, Klass_vodit, 104) from Voditelj
				where BOLD_ID=@driver_id;
			end try
			begin catch
				SET @emploee_date=@drcalc_start_date;
			end catch
			
			SET @emploee_date=ISNULL(@emploee_date, GETDATE());
			
			if @emploee_date>GETDATE()
			begin
				SET @emploee_date=GETDATE();
			end
			
			if @emploee_date<@drcalc_start_date begin
				SET @emploee_date=@drcalc_start_date;
			end
			else begin
				SET @drcalc_start_date=@emploee_date;
			end
			
			DECLARE @DrTakeSumm decimal(28,10), @DrSumm decimal(28,10), 
				@DrFixedSumm decimal(28,10), @DebtSumm decimal(28,10);
			
			select @DrTakeSumm=SUM(Summa) from  Vyruchka_ot_voditelya 
			where Pozyvnoi=@dr_num and Data_postupleniya>=@drcalc_start_date
			
			SET @DrTakeSumm = ISNULL(@DrTakeSumm,0);

			select @DrSumm=(SUM(Uslovn_stoim)*dbo.GetDrTakePercent(@dr_num)) 
			from Zakaz where Nachalo_zakaza_data>@drcalc_start_date and
			Pozyvnoi_ustan=@dr_num AND Arhivnyi=0 and Zavershyon=1 AND
			Soobsheno_voditelyu=0
			
			SET @DrSumm = ISNULL(@DrSumm,0);

			select @DrFixedSumm=(dbo.GetDriverDaysFixedSumm(@dr_num, @emploee_date, @free_days_count) + 
			dbo.GetDrOrderFixedSumm(@dr_num, @emploee_date));
			
			SET @DrFixedSumm = ISNULL(@DrFixedSumm,0);
			
			SET @DebtSumm = @DrTakeSumm - @DrSumm - @DrFixedSumm;
			--PRINT @DebtSumm;
			--PRINT '---';
			--PRINT @DrTakeSumm;
			--PRINT '---';
			--PRINT @DrSumm;
			--PRINT '---';
			--PRINT @DrFixedSumm;
			
			if @DebtSumm<@min_debt begin
				SET @res=1;
			end
			else begin
				SET @res=-2;
			end
			
		end
   end

   RETURN(@res)
END
GO
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebtDyn]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GetDrLockOnCalcDebtDyn]  ( @dr_num int, @res int OUT)
AS
BEGIN
   declare @dr_count int, @use_dr_lock smallint, @driver_id int, @dr_debt decimal(28,10);
   
   SET @res=-1
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE Pozyvnoi=@dr_num;
   
   if (@dr_count=1) and (@dr_num>0) begin
		SELECT @use_dr_lock=rlock_on_calc_debt, @driver_id=BOLD_ID, @dr_debt=DRIVER_BALANCE FROM Voditelj 
		WHERE Pozyvnoi=@dr_num;
		if @use_dr_lock<>1 begin
			SET @res=-1
		end
		else begin
		
			DECLARE @db_version INT, @drcalc_start_date date,
			@ftime_tariff decimal(28,10), @min_debt decimal(28,10);
	
			SELECT TOP 1 @db_version=ISNULL(db_version,3),
			@drcalc_start_date=ISNULL(drcalc_start_date,GETDATE()),
			@min_debt=ISNULL(MIN_DEBET,0)
			FROM Objekt_vyborki_otchyotnosti
			WHERE Tip_objekta='for_drivers';
			
			if @min_debt>@dr_debt
			begin
				SET @res=1
			end
			else	begin
			SET @res=-2
			end
			
		end
   end

   RETURN(@res)
END

GO
/****** Object:  StoredProcedure [dbo].[GetJSONDriverStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetJSONDriverStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @show_phone int, @res varchar(1000) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @on_launch int, @busy int,
		@dr_status varchar(255), @rsync int, 
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int;
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
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID  
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
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID   
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
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID   
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
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID   
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
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id;
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
			
			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, @opt_comb, @tplan_id;
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
/****** Object:  StoredProcedure [dbo].[GetJSONRClientStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetJSONRClientStatus] 
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






GO
/****** Object:  StoredProcedure [dbo].[IncOrdersPriorityById]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[IncOrdersPriorityById] 
	-- Add the parameters for the stored procedure here
	(@max_priority int, @order_id int)
AS
BEGIN 

	if(@max_priority<=0)
		SET @max_priority=20;
 
	UPDATE Zakaz 
	SET Zakaz.Priority_counter=
	Zakaz.Priority_counter+1 
	WHERE ((Zakaz.REMOTE_SET>0) OR 
	(Zakaz.REMOTE_SET<5)) AND
	Zakaz.Priority_counter<(@max_priority+1) AND 
	Zakaz.BOLD_ID = @order_id;

END







GO
/****** Object:  StoredProcedure [dbo].[IncrementOrdersPriority]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IncrementOrdersPriority] 
	-- Add the parameters for the stored procedure here
	(@max_priority int)
AS
BEGIN 

	DECLARE @db_version INT, @use_priority int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_priority=ISNULL(use_dr_priority,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_priority>0))
	BEGIN

	if(@max_priority<=0)
		SET @max_priority=20;
		
	DELETE FROM dbo.ORDER_PRIORITY
	WHERE (ABS(DATEDIFF(minute, INS_DATE, GETDATE())) > 30);
 
	UPDATE dbo.ORDER_PRIORITY 
	SET PRIORITY=PRIORITY+1 
	WHERE PRIORITY<(@max_priority+1);
	
	END;

END

GO
/****** Object:  StoredProcedure [dbo].[InsertCompletedOrder]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertCompletedOrder] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    UPDATE Objekt_vyborki_otchyotnosti SET Ispoljz_priz_3=
      (Ispoljz_priz_3+1);
      
    SELECT TOP 1 @new_ord_num=Ispoljz_priz_3 
      FROM Objekt_vyborki_otchyotnosti;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 18, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 18, 0);
    
    INSERT INTO Shablon_zakaza (BOLD_ID, BOLD_TYPE, Nomer_na_ulice, 
		yavlyaetsya_vyzovom_na_ulicu, yavl_vyzovom_na_raion, yavl_vyzovom_na_objekt, 
		imeet_pervuyu_ulicu_ugla, imeet_vtoruyu_ulicu_ugla) 
		VALUES (@bold_id, 18, 0, -1, -1, -1, -1, -1);
    
    INSERT INTO Zakaz (BOLD_ID, BOLD_TYPE, Kolichestvo_chasov, 
    Nachalo_zakaza_data, Konec_zakaza_data, 
    Telefon_klienta, Nomer_zakaza, Data_podachi, 
    Zavershyon, Arhivnyi, Uslovn_stoim, Adres_vyzova_vvodim, 
    Predvariteljnyi, Data_predvariteljnaya, 
    Zadeistv_predvarit, Data_po_umolchaniyu, 
	Soobsheno_voditelyu, Adres_okonchaniya_zayavki, 
	Yavl_pochasovym, Pozyvnoi_ustan, Data_pribytie, 
	Ustan_pribytie, Nomer_skidki, Slugebnyi, Primechanie, 
	Opr_s_obsh_linii, Data_na_tochke, vypolnyaetsya_voditelem, 
	otpuskaetsya_dostepcherom, ocenivaetsya_cherez, 
	adres_sektora, konechnyi_sektor_raboty, sektor_voditelya, 
	otpravlyaetsya) 
	VALUES (@bold_id, 18, 0.0, 
	GETDATE(), GETDATE(), 
	'', @new_ord_num, GETDATE(), 
	1, 0, 0.0, '', 
	0, GETDATE(), 
	0, GETDATE(), 
	0, '', 
	0, 0, GETDATE(), 
	0, 0, 0, '',
	0, GETDATE(), -1,
	-1, -1,
	-1, -1, -1,
	-1);
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
     
    --SET @ord_num=@new_ord_num;
    --return
END





GO
/****** Object:  StoredProcedure [dbo].[InsertEvent]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertEvent] 
	-- Add the parameters for the stored procedure here
	(@etype_id int, @order_id int, @driver_id int, @sector_id int, 
	@edate datetime, @description varchar(2000), @adres varchar(255), 
	@phone varchar(255), @dr_num int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;
	
	INSERT INTO TD_EVENTS (ETYPE_ID, ORDER_ID, DRIVER_ID, SECTOR_ID, EDATE,
		DESCRIPT, ADRES, PHONE, DR_NUM) VALUES(@etype_id, @order_id, @driver_id,
		@sector_id, @edate, @description, @adres, @phone, @dr_num);
	
	SET @count=@@ROWCOUNT;
	
	DELETE FROM TD_EVENTS WHERE CLOSED=1;
	UPDATE Voditelj SET has_active_events=1 WHERE BOLD_ID=@driver_id;
	UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	
END








GO
/****** Object:  StoredProcedure [dbo].[InsertEvent2]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertEvent2] 
	-- Add the parameters for the stored procedure here
	(@etype_id int, @order_id int, @driver_id int, @sector_id int, 
	@edate datetime, @description varchar(2000), @adres varchar(255), 
	@phone varchar(255), @dr_num int, @LATITUDE varchar(20), 
	@LONGITUDE varchar(20), @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;
	
	INSERT INTO TD_EVENTS (ETYPE_ID, ORDER_ID, DRIVER_ID, SECTOR_ID, EDATE,
		DESCRIPT, ADRES, PHONE, DR_NUM, LATITUDE, LONGITUDE) VALUES(@etype_id, @order_id, @driver_id,
		@sector_id, @edate, @description, @adres, @phone, @dr_num, @LATITUDE, @LONGITUDE);
	
	SET @count=@@ROWCOUNT;
	
	DELETE FROM TD_EVENTS WHERE CLOSED=1;
	UPDATE Voditelj SET has_active_events=1 WHERE BOLD_ID=@driver_id;
	UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	
END








GO
/****** Object:  StoredProcedure [dbo].[InsertEvent3]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertEvent3] 
	-- Add the parameters for the stored procedure here
	(@etype_id int, @order_id int, @driver_id int, @sector_id int, 
	@edate datetime, @description varchar(2000), @adres varchar(255), 
	@phone varchar(255), @dr_num int, @LATITUDE varchar(20), 
	@LONGITUDE varchar(20), @CONFIRMATED smallint, @uname varchar(255),
	@summ decimal(28,10), @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;
	SET @summ=ISNULL(@summ, 0);
	
	IF @etype_id=7 BEGIN
		DELETE FROM TD_EVENTS WHERE (CAST(EDATE as date)=CAST(@edate as date)) and (@etype_id=7) 
	END
	
	INSERT INTO TD_EVENTS (ETYPE_ID, ORDER_ID, DRIVER_ID, SECTOR_ID, EDATE,
		DESCRIPT, ADRES, PHONE, DR_NUM, LATITUDE, LONGITUDE, CONFIRMATED, UNAME, SUMM) VALUES(@etype_id, @order_id, @driver_id,
		@sector_id, @edate, @description, @adres, @phone, @dr_num, @LATITUDE, @LONGITUDE, @CONFIRMATED,
		ISNULL(@uname,''), @summ);
	
	SET @count=@@ROWCOUNT;
	
	DELETE FROM TD_EVENTS WHERE CLOSED=1;
	UPDATE Voditelj SET has_active_events=1 WHERE BOLD_ID=@driver_id;
	UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	
END








GO
/****** Object:  StoredProcedure [dbo].[InsertFictiveDrOrder]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertFictiveDrOrder] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @comment varchar(255), 
	@disp_id int, @order_id int OUT, @set_last_ord_time int)
AS
BEGIN 

	DECLARE @dr_num int;
	
	SET @dr_num = 0;
	SET @order_id = -1;
	
	SELECT @dr_num=Pozyvnoi FROM Voditelj
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
		
		if(@set_last_ord_time>0)
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			WHERE BOLD_ID=@driver_id;
		END;
		
	END
	END
END

GO
/****** Object:  StoredProcedure [dbo].[InsertNewDriverIncome]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertNewDriverIncome] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT, @its_dayly smallint, @summ decimal(28,10), @idt datetime, @dr_num int, @count int OUT)
AS
BEGIN 
    DECLARE @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int, @daily_count int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	SET @its_dayly = ISNULL(@its_dayly,0);
	SET @summ = ISNULL(@summ,0);
	SET @idt = ISNULL(@idt, GETDATE());
	SET @dr_num = ISNULL(@dr_num, 0);
	SET @count=0;
	
	SET @daily_count=0; 
	SELECT @daily_count=COUNT(*) FROM Vyruchka_ot_voditelya vv
	WHERE vv.Pozyvnoi=@dr_num and CAST(vv.Data_postupleniya as date)=CAST(@idt as DATE)
	and vv.ITS_DAYLY=1;
	
	IF(NOT ((@its_dayly=1) AND (@daily_count>0)))
	BEGIN
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 1, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 1, 0);
    
    INSERT INTO Prihod (BOLD_ID, BOLD_TYPE, sostavlyaet_prihod, 
		Summa_pozicii, Data_prihoda, Opisanie, otnos_k_operac_prih) 
		VALUES (@bold_id, 1, -1, 0, @idt, '-', -1);
    
    INSERT INTO Vyruchka_ot_voditelya(BOLD_ID, BOLD_TYPE, Summa, 
    kem_prinositsya, Data_postupleniya, Pozyvnoi, ITS_DAYLY) 
	VALUES (@bold_id, 1, @summ, 
	-1, @idt, @dr_num, @its_dayly);
	
	SET @count=@@ROWCOUNT;
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
    
    END;
     
    --SET @ord_num=@new_ord_num;
    --return
END




GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrder]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertNewOrder] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    UPDATE Objekt_vyborki_otchyotnosti SET Ispoljz_priz_3=
      (Ispoljz_priz_3+1);
      
    SELECT TOP 1 @new_ord_num=Ispoljz_priz_3 
      FROM Objekt_vyborki_otchyotnosti;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 18, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 18, 0);
    
    INSERT INTO Shablon_zakaza (BOLD_ID, BOLD_TYPE, Nomer_na_ulice, 
		yavlyaetsya_vyzovom_na_ulicu, yavl_vyzovom_na_raion, yavl_vyzovom_na_objekt, 
		imeet_pervuyu_ulicu_ugla, imeet_vtoruyu_ulicu_ugla) 
		VALUES (@bold_id, 18, 0, -1, -1, -1, -1, -1);
    
    INSERT INTO Zakaz (BOLD_ID, BOLD_TYPE, Kolichestvo_chasov, 
    Nachalo_zakaza_data, Konec_zakaza_data, 
    Telefon_klienta, Nomer_zakaza, Data_podachi, 
    Zavershyon, Arhivnyi, Uslovn_stoim, Adres_vyzova_vvodim, 
    Predvariteljnyi, Data_predvariteljnaya, 
    Zadeistv_predvarit, Data_po_umolchaniyu, 
	Soobsheno_voditelyu, Adres_okonchaniya_zayavki, 
	Yavl_pochasovym, Pozyvnoi_ustan, Data_pribytie, 
	Ustan_pribytie, Nomer_skidki, Slugebnyi, Primechanie, 
	Opr_s_obsh_linii, Data_na_tochke, vypolnyaetsya_voditelem, 
	otpuskaetsya_dostepcherom, ocenivaetsya_cherez, 
	adres_sektora, konechnyi_sektor_raboty, sektor_voditelya, 
	otpravlyaetsya) 
	VALUES (@bold_id, 18, 0.0, 
	GETDATE(), GETDATE(), 
	'', @new_ord_num, GETDATE(), 
	0, 0, 0.0, '', 
	0, GETDATE(), 
	0, GETDATE(), 
	0, '', 
	0, 0, GETDATE(), 
	0, 0, 0, '',
	0, GETDATE(), -1,
	-1, -1,
	-1, -1, -1,
	-1);
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
     
    --SET @ord_num=@new_ord_num;
    --return
END




GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrderDictItem]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewOrderDictItem] 
	-- Add the parameters for the stored procedure here
	(@phone varchar(255), @adr varchar(255), 
	@sect_id int, @bold_id int OUT)
AS
BEGIN 
    DECLARE @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 7, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 7, 0);
    
    INSERT INTO Sootvetstvie_parametrov_zakaza
		(BOLD_ID, BOLD_TYPE, Telefon_klienta, 
		Adres_vyzova_vvodim, otnositsya_k_sektoru,
		Summarn_chislo_vyzovov) 
		VALUES (@bold_id, 7, @phone, @adr, 
		@sect_id, 1);
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
     
    --SET @ord_num=@new_ord_num;
    --return
END





GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrderRetNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewOrderRetNum] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT, @order_num int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	SET @order_num = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    UPDATE Objekt_vyborki_otchyotnosti SET Ispoljz_priz_3=
      (Ispoljz_priz_3+1);
      
    SELECT TOP 1 @new_ord_num=Ispoljz_priz_3 
      FROM Objekt_vyborki_otchyotnosti;
      
    SET @order_num = @new_ord_num;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 18, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 18, 0);
    
    INSERT INTO Shablon_zakaza (BOLD_ID, BOLD_TYPE, Nomer_na_ulice, 
		yavlyaetsya_vyzovom_na_ulicu, yavl_vyzovom_na_raion, yavl_vyzovom_na_objekt, 
		imeet_pervuyu_ulicu_ugla, imeet_vtoruyu_ulicu_ugla) 
		VALUES (@bold_id, 18, 0, -1, -1, -1, -1, -1);
    
    INSERT INTO Zakaz (BOLD_ID, BOLD_TYPE, Kolichestvo_chasov, 
    Nachalo_zakaza_data, Konec_zakaza_data, 
    Telefon_klienta, Nomer_zakaza, Data_podachi, 
    Zavershyon, Arhivnyi, Uslovn_stoim, Adres_vyzova_vvodim, 
    Predvariteljnyi, Data_predvariteljnaya, 
    Zadeistv_predvarit, Data_po_umolchaniyu, 
	Soobsheno_voditelyu, Adres_okonchaniya_zayavki, 
	Yavl_pochasovym, Pozyvnoi_ustan, Data_pribytie, 
	Ustan_pribytie, Nomer_skidki, Slugebnyi, Primechanie, 
	Opr_s_obsh_linii, Data_na_tochke, vypolnyaetsya_voditelem, 
	otpuskaetsya_dostepcherom, ocenivaetsya_cherez, 
	adres_sektora, konechnyi_sektor_raboty, sektor_voditelya, 
	otpravlyaetsya) 
	VALUES (@bold_id, 18, 0.0, 
	GETDATE(), GETDATE(), 
	'', @new_ord_num, GETDATE(), 
	0, 0, 0.0, '', 
	0, GETDATE(), 
	0, GETDATE(), 
	0, '', 
	0, 0, GETDATE(), 
	0, 0, 0, '',
	0, GETDATE(), -1,
	-1, -1,
	-1, -1, -1,
	-1);
	
	SELECT TOP 1 @last_ts=LastTimestamp, 
	@last_ct=LastClockTime FROM BOLD_LASTCLOCK;
	
	UPDATE [BOLD_TIMESTAMP] 
	SET [BOLD_TIME_STAMP] = [BOLD_TIME_STAMP]+1;		
    
    SELECT TOP 1 @bold_ts=BOLD_TIME_STAMP 
    FROM BOLD_TIMESTAMP;
    
    SET @curr_dt = GETDATE();
    
    INSERT INTO BOLD_CLOCKLOG (LastTimestamp, 
    ThisTimestamp, LastClockTime, 
	ThisClockTime) VALUES (@last_ts, @bold_ts, 
	@last_ct, @curr_dt);
	
	UPDATE BOLD_LASTCLOCK SET LastTimestamp = @bold_ts, 
	LastClockTime = @curr_dt;
	
	UPDATE BOLD_XFILES
	SET BOLD_TIME_STAMP = @bold_ts
	WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
     
    --SET @ord_num=@new_ord_num;
    --return
END





GO
/****** Object:  StoredProcedure [dbo].[InsertOnHandAttemptOrder]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertOnHandAttemptOrder] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @adres varchar(255), 
	@disp_id int, @order_id int OUT)
AS
BEGIN 

	DECLARE @dr_num int;
	
	SET @dr_num = 0;
	SET @order_id = -1;
	
	SELECT @dr_num=Pozyvnoi FROM Voditelj
	WHERE BOLD_ID=@driver_id;
	
	if (@dr_num>0) BEGIN
	
	EXEC InsertNewOrder @bold_id = @order_id OUTPUT;
	
	if (@order_id>0)
	BEGIN
		UPDATE Zakaz SET REMOTE_DRNUM=@dr_num,
		otpuskaetsya_dostepcherom=@disp_id,
		Adres_vyzova_vvodim=@adres
		WHERE BOLD_ID=@order_id;
	END
	END
END


GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParams]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrderWithParams] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @ord_num  int OUT, 
	@order_id int OUT)
AS
BEGIN 

	DECLARE @comment varchar(255);
	
	SET @order_id = -1;
	SET @ord_num = -1;
	SET @comment = '';
	SET @gsm_detect_code=ISNULL(@gsm_detect_code,0);
	SET @phone=ISNULL(@phone, '');
	SET @deny_duplicate=1;--ISNULL(@deny_duplicate,0);
	SET @adres=ISNULL(@adres,'');
	SET @status=ISNULL(@status,0);
	SET @color_check=ISNULL(@color_check,0);
	SET @op_order=ISNULL(@op_order,0);
	SET @colored_new=ISNULL(@colored_new,0);
	SET @ab_num=ISNULL(@ab_num,'');
	
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
		Primechanie=@comment,
		REMOTE_SET=@status
		WHERE BOLD_ID=@order_id;
	END
	END;
END



GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsAlt]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOrderWithParamsAlt] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @ord_num  int OUT, 
	@order_id int OUT)
AS
BEGIN 

	DECLARE @comment varchar(255);
	
	SET @order_id = -1;
	SET @ord_num = -1;
	SET @comment = '';
	SET @gsm_detect_code=ISNULL(@gsm_detect_code,0);
	SET @phone=ISNULL(@phone, '');
	SET @deny_duplicate=1;--ISNULL(@deny_duplicate,0);
	SET @adres=ISNULL(@adres,'');
	SET @status=ISNULL(@status,0);
	SET @color_check=ISNULL(@color_check,0);
	SET @op_order=ISNULL(@op_order,0);
	SET @colored_new=ISNULL(@colored_new,0);
	SET @ab_num=ISNULL(@ab_num,'');
	
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
		otpuskaetsya_dostepcherom=3834947,
		Adres_vyzova_vvodim=@adres,
		Telefon_klienta=@phone, 
		Opr_s_obsh_linii=@color_check,
		Yavl_pochasovym=1,
		Ustan_pribytie=@colored_new,
		Adres_okonchaniya_zayavki=@ab_num,
		Primechanie=@comment,
		REMOTE_SET=@status
		WHERE BOLD_ID=@order_id;
	END
	END;
END




GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClient]    Script Date: 17.12.2016 12:13:39 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertOrderWithStatus] 
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


GO
/****** Object:  StoredProcedure [dbo].[ManualSetOrderRemoteStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ManualSetOrderRemoteStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dest_status int, @count int OUT)
AS
BEGIN 

	SET @count = 0;
	
	--ORDER_NO_REM_STATUS
	if (@dest_status=0) begin
    
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status 
		WHERE Zakaz.BOLD_ID=@order_id;
	
		SET @count=@@ROWCOUNT;
    
    end

	--ORDER_OCCUPED_ALLOW
    if (@dest_status=7) begin
    
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status 
		WHERE Zakaz.BOLD_ID=@order_id
		AND Zakaz.REMOTE_DRNUM>0 AND 
		(Zakaz.REMOTE_SET<7) AND 
		(Zakaz.REMOTE_SET>0);
	
		SET @count=@@ROWCOUNT;
    
    end
    
    --ORDER_ONHAND_ALLOW
    if (@dest_status=9) begin
    
		--ORDER_ONHAND_ATTEPMT = 23;
		--ORDER_ONHAND_ALLOW_USER_WAIT = 25;
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status 
		WHERE Zakaz.BOLD_ID=@order_id 
		AND Zakaz.REMOTE_DRNUM>0 AND 
		((Zakaz.REMOTE_SET=23) OR 
		(Zakaz.REMOTE_SET=25));
	
		SET @count=@@ROWCOUNT;
    
    end
    
    --ORDER_BUSY = 8; //???
    if (@dest_status=8) begin
    
		--ORDER_OCCUPED_ALLOW = 7;
		--ORDER_BUSY = 8; //???
		--ORDER_ONHAND_ALLOW = 9;
		--ORDER_ONHAND_ACTIVE = 10;
		--ORDER_ALLOW_ASK_WAIT = 17;
		--ORDER_ONHAND_ALLOW_ASK_WAIT = 18;
		--ORDER_CLOSE_ERROR = 20;
		--ORDER_DRCANCEL_DENY = 21;
		--ORDER_ONHAND_ATTEPMT = 23;
		--ORDER_ONHAND_DENY = 24;
		--ORDER_ONHAND_ALLOW_USER_WAIT = 25;
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status 
		WHERE Zakaz.BOLD_ID=@order_id AND 
		((Zakaz.REMOTE_SET>0 AND Zakaz.REMOTE_SET<7) OR 
		(Zakaz.REMOTE_SET IN (9,25,18,23)));
	
		SET @count=@@ROWCOUNT;
    
    end;
    
    --ORDER_DISP_CANCEL
    if (@dest_status=11) begin
    
		--ORDER_OCCUPED_ALLOW = 7;
		--ORDER_BUSY = 8; //???
		--ORDER_ONHAND_ALLOW = 9;
		--ORDER_ONHAND_ACTIVE = 10;
		--ORDER_ALLOW_ASK_WAIT = 17;
		--ORDER_ONHAND_ALLOW_ASK_WAIT = 18;
		--ORDER_CLOSE_ERROR = 20;
		--ORDER_DRCANCEL_DENY = 21;
		--ORDER_ONHAND_ATTEPMT = 23;
		--ORDER_ONHAND_DENY = 24;
		--ORDER_ONHAND_ALLOW_USER_WAIT = 25;
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status 
		WHERE Zakaz.BOLD_ID=@order_id;
	
		SET @count=@@ROWCOUNT;
    
    end;
    
    if (@dest_status=100) begin
    
		--ORDER_DRV_COMPLETE = 15;
		--ORDER_COMLETE_ALLOW = 16;
		--ORDER_COMPLETE_ALLOW_USER_WAIT = 26;
		--ORDER_CLOSE_ASK_WAIT = 27;
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@dest_status,
		Zakaz.Zavershyon=1 
		WHERE Zakaz.BOLD_ID=@order_id;
		-- AND
		--Zakaz.REMOTE_SET IN (15,16,26,27);
	
		SET @count=@@ROWCOUNT;
		
		DECLARE @order_dr_id int;
		
		if(@count>0)
		begin
		
			SELECT @order_dr_id=
			ordr.vypolnyaetsya_voditelem 
			FROM Zakaz ordr
			WHERE ordr.BOLD_ID=@order_id;
			
			--UPDATE Voditelj 
			--SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			--WHERE BOLD_ID=@order_dr_id;
		
			EXEC CheckDriverBusy @order_dr_id;
		end;
    
    end
    
    --ORDER_ONHAND_DENY = 24;
    --ORDER_CLOSE_ERROR = 20;
    --ORDER_DRCANCEL_DENY = 21;
    --ORDER_DRV_CANCEL_DISP_ALLOW = 14;
    --ORDER_CLOSE = 100;
    

	
END




GO
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveOrderToArhived] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @count int OUTPUT)
AS
BEGIN 

	DECLARE @BOLD_ID int, @BOLD_TYPE smallint, @Yavl_pochasovym int,
	@Kolichestvo_chasov decimal(28, 10), @Nachalo_zakaza_data datetime,
	@Konec_zakaza_data datetime, @Telefon_klienta varchar(255),
	@Data_podachi datetime, @Zavershyon int, @Arhivnyi int,
	@Uslovn_stoim decimal(28, 10), @Adres_vyzova_vvodim varchar(255),
	@Predvariteljnyi int, @Data_predvariteljnaya datetime,
	@Zadeistv_predvarit int, @Data_po_umolchaniyu datetime,
	@Soobsheno_voditelyu int, @vypolnyaetsya_voditelem int,
	@otpuskaetsya_dostepcherom int, @ocenivaetsya_cherez int,
	@adres_sektora int, @konechnyi_sektor_raboty int,
	@sektor_voditelya int, @Nomer_zakaza decimal(28, 10),
	@Adres_okonchaniya_zayavki varchar(255), @Pozyvnoi_ustan int,
	@Data_pribytie datetime, @Nomer_skidki int, @Ustan_pribytie int,
	@Primechanie varchar(255), @Slugebnyi int, @otpravlyaetsya int,
	@Opr_s_obsh_linii int, @Data_na_tochke datetime, @REMOTE_SET int,
	@REMOTE_INCOURSE int, @REMOTE_ACCEPTED int, @REMOTE_DRNUM int,
	@DRIVER_SMS_SEND_STATE int, @CLIENT_SMS_SEND_STATE int,
	@SMS_SEND_DRNUM varchar(50), @SMS_SEND_CLPHONE varchar(50),
	@Priority_counter int, @Individ_order int, @Individ_sending int,
	@SECTOR_ID int, @REMOTE_SUMM decimal(28, 10), @REMOTE_SYNC int,
	@LAST_STATUS_TIME datetime, @NO_TRANSMITTING INT, 
	@RESTORED smallint, @AUTO_ARHIVED smallint;
	
	SET @count=0;
 
    BEGIN TRY
    
		SELECT TOP 1 @BOLD_ID=BOLD_ID, @BOLD_TYPE=BOLD_TYPE, @Yavl_pochasovym=Yavl_pochasovym,
		@Kolichestvo_chasov=Kolichestvo_chasov, @Nachalo_zakaza_data=Nachalo_zakaza_data,
		@Konec_zakaza_data=Konec_zakaza_data, @Telefon_klienta=Telefon_klienta,
		@Data_podachi=Data_podachi, @Zavershyon=Zavershyon, @Arhivnyi=Arhivnyi,
		@Uslovn_stoim=Uslovn_stoim, @Adres_vyzova_vvodim=Adres_vyzova_vvodim,
		@Predvariteljnyi=Predvariteljnyi, @Data_predvariteljnaya=Data_predvariteljnaya,
		@Zadeistv_predvarit=Zadeistv_predvarit, @Data_po_umolchaniyu=Data_po_umolchaniyu,
		@Soobsheno_voditelyu=Soobsheno_voditelyu, @vypolnyaetsya_voditelem=vypolnyaetsya_voditelem,
		@otpuskaetsya_dostepcherom=otpuskaetsya_dostepcherom, @ocenivaetsya_cherez=ocenivaetsya_cherez,
		@adres_sektora=adres_sektora, @konechnyi_sektor_raboty=konechnyi_sektor_raboty,
		@sektor_voditelya=sektor_voditelya, @Nomer_zakaza=Nomer_zakaza,
		@Adres_okonchaniya_zayavki=Adres_okonchaniya_zayavki, @Pozyvnoi_ustan=Pozyvnoi_ustan,
		@Data_pribytie=Data_pribytie, @Nomer_skidki=Nomer_skidki, @Ustan_pribytie=Ustan_pribytie,
		@Primechanie=Primechanie, @Slugebnyi=Slugebnyi, @otpravlyaetsya=otpravlyaetsya,
		@Opr_s_obsh_linii=Opr_s_obsh_linii, @Data_na_tochke=Data_na_tochke, @REMOTE_SET=REMOTE_SET,
		@REMOTE_INCOURSE=REMOTE_INCOURSE, @REMOTE_ACCEPTED=REMOTE_ACCEPTED, @REMOTE_DRNUM=REMOTE_DRNUM,
		@DRIVER_SMS_SEND_STATE=DRIVER_SMS_SEND_STATE, @CLIENT_SMS_SEND_STATE=CLIENT_SMS_SEND_STATE,
		@SMS_SEND_DRNUM=SMS_SEND_DRNUM, @SMS_SEND_CLPHONE=SMS_SEND_CLPHONE,
		@Priority_counter=Priority_counter, @Individ_order=Individ_order, @Individ_sending=Individ_sending,
		@SECTOR_ID=SECTOR_ID, @REMOTE_SUMM=REMOTE_SUMM, @REMOTE_SYNC=REMOTE_SYNC,
		@LAST_STATUS_TIME=LAST_STATUS_TIME, @NO_TRANSMITTING=NO_TRANSMITTING 
		FROM Zakaz WHERE BOLD_ID=@order_id;
		
		SET @count=@@ROWCOUNT;
	     
		IF (@count>0) BEGIN
	    
			BEGIN TRY
			INSERT INTO ARHIVED_ORDERS
					( BOLD_ID ,	BOLD_TYPE ,	Yavl_pochasovym ,
					  Kolichestvo_chasov , Nachalo_zakaza_data ,
					  Konec_zakaza_data , Telefon_klienta ,
					  Data_podachi , Zavershyon , Arhivnyi ,
					  Uslovn_stoim , Adres_vyzova_vvodim ,
					  Predvariteljnyi , Data_predvariteljnaya ,
					  Zadeistv_predvarit , Data_po_umolchaniyu ,
					  Soobsheno_voditelyu , vypolnyaetsya_voditelem ,
					  otpuskaetsya_dostepcherom , ocenivaetsya_cherez ,
					  adres_sektora , konechnyi_sektor_raboty ,
					  sektor_voditelya , Nomer_zakaza ,
					  Adres_okonchaniya_zayavki , Pozyvnoi_ustan ,
					  Data_pribytie , Nomer_skidki , Ustan_pribytie ,
					  Primechanie , Slugebnyi , otpravlyaetsya ,
					  Opr_s_obsh_linii , Data_na_tochke , REMOTE_SET ,
					  REMOTE_INCOURSE , REMOTE_ACCEPTED , REMOTE_DRNUM ,
					  DRIVER_SMS_SEND_STATE , CLIENT_SMS_SEND_STATE ,
					  SMS_SEND_DRNUM , SMS_SEND_CLPHONE ,
					  Priority_counter , Individ_order , Individ_sending ,
					  SECTOR_ID , REMOTE_SUMM , REMOTE_SYNC ,
					  LAST_STATUS_TIME , NO_TRANSMITTING
					)
			VALUES  ( @BOLD_ID, @BOLD_TYPE, @Yavl_pochasovym,
					@Kolichestvo_chasov, @Nachalo_zakaza_data,
					@Konec_zakaza_data, @Telefon_klienta,
					@Data_podachi, @Zavershyon, @Arhivnyi,
					@Uslovn_stoim, @Adres_vyzova_vvodim,
					@Predvariteljnyi, @Data_predvariteljnaya,
					@Zadeistv_predvarit, @Data_po_umolchaniyu,
					@Soobsheno_voditelyu, @vypolnyaetsya_voditelem,
					@otpuskaetsya_dostepcherom, @ocenivaetsya_cherez,
					@adres_sektora, @konechnyi_sektor_raboty,
					@sektor_voditelya, @Nomer_zakaza,
					@Adres_okonchaniya_zayavki, @Pozyvnoi_ustan,
					@Data_pribytie, @Nomer_skidki, @Ustan_pribytie,
					@Primechanie, @Slugebnyi, @otpravlyaetsya,
					@Opr_s_obsh_linii, @Data_na_tochke, @REMOTE_SET,
					@REMOTE_INCOURSE, @REMOTE_ACCEPTED, @REMOTE_DRNUM,
					@DRIVER_SMS_SEND_STATE, @CLIENT_SMS_SEND_STATE,
					@SMS_SEND_DRNUM, @SMS_SEND_CLPHONE,
					@Priority_counter, @Individ_order, @Individ_sending,
					@SECTOR_ID, @REMOTE_SUMM, @REMOTE_SYNC,
					@LAST_STATUS_TIME, @NO_TRANSMITTING
					);
			        
			SET @count=@@ROWCOUNT;
			IF (@count>0) 
			BEGIN
				DELETE FROM Zakaz
				--SET AUTO_ARHIVED=1
				WHERE BOLD_ID=@order_id;
				SET @count=@@ROWCOUNT;
			END;

			END TRY
			BEGIN CATCH
				SET @count=0;
			END CATCH;
		END;

    END TRY
    BEGIN CATCH
		SET @count=0;
    END CATCH;
END

GO
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived2V]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveOrderToArhived2V] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @count int OUTPUT)
AS
BEGIN 

	DECLARE @BOLD_ID int, @BOLD_TYPE smallint, @Yavl_pochasovym int,
	@Kolichestvo_chasov decimal(28, 10), @Nachalo_zakaza_data datetime,
	@Konec_zakaza_data datetime, @Telefon_klienta varchar(255),
	@Data_podachi datetime, @Zavershyon int, @Arhivnyi int,
	@Uslovn_stoim decimal(28, 10), @Adres_vyzova_vvodim varchar(255),
	@Predvariteljnyi int, @Data_predvariteljnaya datetime,
	@Zadeistv_predvarit int, @Data_po_umolchaniyu datetime,
	@Soobsheno_voditelyu int, @vypolnyaetsya_voditelem int,
	@otpuskaetsya_dostepcherom int, @ocenivaetsya_cherez int,
	@adres_sektora int, @konechnyi_sektor_raboty int,
	@sektor_voditelya int, @Nomer_zakaza decimal(28, 10),
	@Adres_okonchaniya_zayavki varchar(255), @Pozyvnoi_ustan int,
	@Data_pribytie datetime, @Nomer_skidki int, @Ustan_pribytie int,
	@Primechanie varchar(255), @Slugebnyi int, @otpravlyaetsya int,
	@Opr_s_obsh_linii int, @Data_na_tochke datetime, @REMOTE_SET int,
	@REMOTE_INCOURSE int, @REMOTE_ACCEPTED int, @REMOTE_DRNUM int,
	@DRIVER_SMS_SEND_STATE int, @CLIENT_SMS_SEND_STATE int,
	@SMS_SEND_DRNUM varchar(50), @SMS_SEND_CLPHONE varchar(50),
	@Priority_counter int, @Individ_order int, @Individ_sending int,
	@SECTOR_ID int, @REMOTE_SUMM decimal(28, 10), @REMOTE_SYNC int,
	@LAST_STATUS_TIME datetime, @NO_TRANSMITTING INT, 
	@RESTORED smallint, @AUTO_ARHIVED smallint;
	
	SET @count=0;
 
    BEGIN TRY
	    
		INSERT INTO ARHIVED_ORDERS
				( BOLD_ID ,	BOLD_TYPE ,	Yavl_pochasovym ,
				  Kolichestvo_chasov , Nachalo_zakaza_data ,
				  Konec_zakaza_data , Telefon_klienta ,
				  Data_podachi , Zavershyon , Arhivnyi ,
				  Uslovn_stoim , Adres_vyzova_vvodim ,
				  Predvariteljnyi , Data_predvariteljnaya ,
				  Zadeistv_predvarit , Data_po_umolchaniyu ,
				  Soobsheno_voditelyu , vypolnyaetsya_voditelem ,
				  otpuskaetsya_dostepcherom , ocenivaetsya_cherez ,
				  adres_sektora , konechnyi_sektor_raboty ,
				  sektor_voditelya , Nomer_zakaza ,
				  Adres_okonchaniya_zayavki , Pozyvnoi_ustan ,
				  Data_pribytie , Nomer_skidki , Ustan_pribytie ,
				  Primechanie , Slugebnyi , otpravlyaetsya ,
				  Opr_s_obsh_linii , Data_na_tochke , REMOTE_SET ,
				  REMOTE_INCOURSE , REMOTE_ACCEPTED , REMOTE_DRNUM ,
				  DRIVER_SMS_SEND_STATE , CLIENT_SMS_SEND_STATE ,
				  SMS_SEND_DRNUM , SMS_SEND_CLPHONE ,
				  Priority_counter , Individ_order , Individ_sending ,
				  SECTOR_ID , REMOTE_SUMM , REMOTE_SYNC ,
				  LAST_STATUS_TIME , NO_TRANSMITTING
				)
		SELECT BOLD_ID, BOLD_TYPE, Yavl_pochasovym,
			Kolichestvo_chasov, Nachalo_zakaza_data,
			Konec_zakaza_data, Telefon_klienta,
			Data_podachi, Zavershyon, Arhivnyi,
			Uslovn_stoim, Adres_vyzova_vvodim,
			Predvariteljnyi, Data_predvariteljnaya,
			Zadeistv_predvarit, Data_po_umolchaniyu,
			Soobsheno_voditelyu, vypolnyaetsya_voditelem,
			otpuskaetsya_dostepcherom, ocenivaetsya_cherez,
			adres_sektora, konechnyi_sektor_raboty,
			sektor_voditelya, Nomer_zakaza,
			Adres_okonchaniya_zayavki, Pozyvnoi_ustan,
			Data_pribytie, Nomer_skidki, Ustan_pribytie,
			Primechanie, Slugebnyi, otpravlyaetsya,
			Opr_s_obsh_linii, Data_na_tochke, REMOTE_SET,
			REMOTE_INCOURSE, REMOTE_ACCEPTED, REMOTE_DRNUM,
			DRIVER_SMS_SEND_STATE, CLIENT_SMS_SEND_STATE,
			SMS_SEND_DRNUM, SMS_SEND_CLPHONE,
			Priority_counter, Individ_order, Individ_sending,
			SECTOR_ID, REMOTE_SUMM, REMOTE_SYNC,
			LAST_STATUS_TIME, NO_TRANSMITTING 
			FROM Zakaz WHERE BOLD_ID=@order_id;
		        
		SET @count=@@ROWCOUNT;
		IF (@count>0) 
		BEGIN
			DELETE FROM Zakaz
			--SET AUTO_ARHIVED=1
			WHERE BOLD_ID=@order_id;
			SET @count=@@ROWCOUNT;
		END;

    END TRY
    BEGIN CATCH
		SET @count=0;
    END CATCH;
END

GO
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveOrdPortionToArhived] 
	-- Add the parameters for the stored procedure here
	(@arh_limit int, @del_limit int, @last_arhived DATETIME, 
		@day_distance int, @arh_count int OUT, @del_count int OUT)
AS
BEGIN 

	DECLARE @ARH_CURSOR cursor, @DEL_CURSOR cursor;
	DECLARE @order_id int, @sys_day_distance int;
	DECLARE @border_datetime datetime, @last_complete_dt datetime,
		@last_sys_arhived datetime;
	DECLARE @arhived_count int, @aset_count int, 
		@auto_arh smallint;
	
	SET @last_arhived=ISNULL(@last_arhived,
		DATEADD(day,-1000,CURRENT_TIMESTAMP));	
		
	SET @sys_day_distance=21;
	SET @auto_arh=0;
	SET @arh_count=0;
	SET @del_count=0;
	SET @last_sys_arhived=
		DATEADD(day,-1000,CURRENT_TIMESTAMP);
	SELECT TOP 1 @auto_arh=ISNULL(auto_order_arhive,0),
	@last_sys_arhived=ISNULL(last_arh_date,
		DATEADD(day,-1000,CURRENT_TIMESTAMP)),
	@sys_day_distance=ISNULL(min_days_delta,21) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF (@auto_arh=1) AND (@last_sys_arhived<CURRENT_TIMESTAMP) 
		AND (@last_arhived<CURRENT_TIMESTAMP) 
	BEGIN
	IF ( (ABS(DATEDIFF(DAY,@last_sys_arhived,CURRENT_TIMESTAMP))<3)
		AND (ABS(DATEDIFF(DAY,@last_arhived,CURRENT_TIMESTAMP))<3) )
	BEGIN
	
		BEGIN TRY
			 
			SET @day_distance=ISNULL(@day_distance,21);
			IF (@day_distance<21)
			BEGIN
				SET @day_distance=21;
			END;
			
			IF (@sys_day_distance<21)
			BEGIN
				SET @sys_day_distance=21;
			END;	
			
			IF (@day_distance<@sys_day_distance)
			BEGIN
				SET @day_distance=@sys_day_distance;
			END;
			
			SET @arh_limit=ISNULL(@arh_limit,300);
			IF (@arh_limit>300)
			BEGIN
				SET @arh_limit=200;
			END;
			SET @del_limit=ISNULL(@del_limit,300);
			IF (@del_limit>300)
			BEGIN
				SET @del_limit=200;
			END;
			
			--SELECT @last_complete_dt=
			--MAX(ISNULL(Nachalo_zakaza_data,DATEADD(day,-1000,CURRENT_TIMESTAMP)))
			--FROM Zakaz WHERE Zavershyon=1;
			
			--SET @last_complete_dt=DATEADD(day,-@day_distance,
			--	@last_complete_dt);
				
			SET @border_datetime=DATEADD(day,-@day_distance,
				CURRENT_TIMESTAMP);	
				
			--IF(@last_complete_dt<@border_datetime)
			--BEGIN
			--	SET @border_datetime=@last_complete_dt;
			--END;	
			
			--SELECT @arh_count=COUNT(*)
			--FROM ToArhOrders WHERE 
			--	Nachalo_zakaza_data<@border_datetime;
			
			--IF (@arh_count>0)
			--BEGIN
				SET @ARH_CURSOR  = CURSOR SCROLL
				FOR
					SELECT BOLD_ID
					FROM ToArhOrders WHERE 
					Nachalo_zakaza_data<@border_datetime;
				/*Открываем курсор*/
				SET @arh_count=0;
				OPEN @ARH_CURSOR
				/*Выбираем первую строку*/
				FETCH NEXT FROM @ARH_CURSOR INTO @order_id
				/*Выполняем в цикле перебор строк*/
				WHILE ((@@FETCH_STATUS = 0) AND (@arh_count<=@arh_limit))
				BEGIN
					SET @aset_count=0;
					EXEC MoveOrderToArhived2V @order_id,
						@count = @aset_count OUTPUT;
					IF (@aset_count>0)
					BEGIN
						SET @arh_count=@arh_count+1;
					END;	
					/*Выбираем следующую строку*/
					FETCH NEXT FROM @ARH_CURSOR INTO @order_id
				END
				CLOSE @ARH_CURSOR
			--END
			--ELSE
			--BEGIN
			--	SET @arh_count=0;
			--END;
 
			UPDATE Objekt_vyborki_otchyotnosti
			SET last_arh_date=CURRENT_TIMESTAMP
			WHERE Tip_objekta='for_drivers';
			
		END TRY
		BEGIN CATCH
		END CATCH;
	END;
	END;		
	
END
GO
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived2V]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveOrdPortionToArhived2V] 
	-- Add the parameters for the stored procedure here
	(@arh_limit int, @del_limit int, @last_arhived DATETIME, 
		@day_distance int, @arh_count int OUT, @del_count int OUT)
AS
BEGIN 

	DECLARE @ARH_CURSOR cursor, @DEL_CURSOR cursor;
	DECLARE @order_id int, @sys_day_distance int;
	DECLARE @border_datetime datetime, @last_complete_dt datetime,
		@last_sys_arhived datetime;
	DECLARE @arhived_count int, @aset_count int, 
		@auto_arh smallint;
	
	SET @last_arhived=ISNULL(@last_arhived,
		DATEADD(day,-1000,CURRENT_TIMESTAMP));	
		
	SET @sys_day_distance=21;
	SET @auto_arh=0;
	SET @arh_count=0;
	SET @del_count=0;
	SET @last_sys_arhived=
		DATEADD(day,-1000,CURRENT_TIMESTAMP);
	SELECT TOP 1 @auto_arh=ISNULL(auto_order_arhive,0),
	@last_sys_arhived=ISNULL(last_arh_date,
		DATEADD(day,-1000,CURRENT_TIMESTAMP)),
	@sys_day_distance=ISNULL(min_days_delta,21) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF (@auto_arh=1) AND (@last_sys_arhived<CURRENT_TIMESTAMP) 
		AND (@last_arhived<CURRENT_TIMESTAMP) 
	BEGIN
	IF ( (ABS(DATEDIFF(DAY,@last_sys_arhived,CURRENT_TIMESTAMP))<3)
		AND (ABS(DATEDIFF(DAY,@last_arhived,CURRENT_TIMESTAMP))<3) )
	BEGIN
	
		BEGIN TRY
			 
			SET @day_distance=ISNULL(@day_distance,21);
			IF (@day_distance<21)
			BEGIN
				SET @day_distance=21;
			END;
			
			IF (@sys_day_distance<21)
			BEGIN
				SET @sys_day_distance=21;
			END;	
			
			IF (@day_distance<@sys_day_distance)
			BEGIN
				SET @day_distance=@sys_day_distance;
			END;
			
			SET @arh_limit=ISNULL(@arh_limit,300);
			IF (@arh_limit>300)
			BEGIN
				SET @arh_limit=200;
			END;
			SET @del_limit=ISNULL(@del_limit,300);
			IF (@del_limit>300)
			BEGIN
				SET @del_limit=200;
			END;
			
			--SELECT @last_complete_dt=
			--MAX(ISNULL(Nachalo_zakaza_data,DATEADD(day,-1000,CURRENT_TIMESTAMP)))
			--FROM Zakaz WHERE Zavershyon=1;
			
			--SET @last_complete_dt=DATEADD(day,-@day_distance,
			--	@last_complete_dt);
				
			SET @border_datetime=DATEADD(day,-@day_distance,
				CURRENT_TIMESTAMP);	
				
			--IF(@last_complete_dt<@border_datetime)
			--BEGIN
			--	SET @border_datetime=@last_complete_dt;
			--END;	
			
			--SELECT @arh_count=COUNT(*)
			--FROM ToArhOrders WHERE 
			--	Nachalo_zakaza_data<@border_datetime;
			
			--IF (@arh_count>0)
			--BEGIN
				SET @ARH_CURSOR  = CURSOR SCROLL
				FOR
					SELECT BOLD_ID
					FROM ToArhOrders WHERE 
					Nachalo_zakaza_data<@border_datetime;
				/*Открываем курсор*/
				SET @arh_count=0;
				OPEN @ARH_CURSOR
				/*Выбираем первую строку*/
				FETCH NEXT FROM @ARH_CURSOR INTO @order_id
				/*Выполняем в цикле перебор строк*/
				WHILE ((@@FETCH_STATUS = 0) AND (@arh_count<=@arh_limit))
				BEGIN
					SET @aset_count=0;
					
					INSERT INTO ARHIVED_ORDERS
							( BOLD_ID ,	BOLD_TYPE ,	Yavl_pochasovym ,
							  Kolichestvo_chasov , Nachalo_zakaza_data ,
							  Konec_zakaza_data , Telefon_klienta ,
							  Data_podachi , Zavershyon , Arhivnyi ,
							  Uslovn_stoim , Adres_vyzova_vvodim ,
							  Predvariteljnyi , Data_predvariteljnaya ,
							  Zadeistv_predvarit , Data_po_umolchaniyu ,
							  Soobsheno_voditelyu , vypolnyaetsya_voditelem ,
							  otpuskaetsya_dostepcherom , ocenivaetsya_cherez ,
							  adres_sektora , konechnyi_sektor_raboty ,
							  sektor_voditelya , Nomer_zakaza ,
							  Adres_okonchaniya_zayavki , Pozyvnoi_ustan ,
							  Data_pribytie , Nomer_skidki , Ustan_pribytie ,
							  Primechanie , Slugebnyi , otpravlyaetsya ,
							  Opr_s_obsh_linii , Data_na_tochke , REMOTE_SET ,
							  REMOTE_INCOURSE , REMOTE_ACCEPTED , REMOTE_DRNUM ,
							  DRIVER_SMS_SEND_STATE , CLIENT_SMS_SEND_STATE ,
							  SMS_SEND_DRNUM , SMS_SEND_CLPHONE ,
							  Priority_counter , Individ_order , Individ_sending ,
							  SECTOR_ID , REMOTE_SUMM , REMOTE_SYNC ,
							  LAST_STATUS_TIME , NO_TRANSMITTING
							)
					SELECT BOLD_ID, BOLD_TYPE, Yavl_pochasovym,
						Kolichestvo_chasov, Nachalo_zakaza_data,
						Konec_zakaza_data, Telefon_klienta,
						Data_podachi, Zavershyon, Arhivnyi,
						Uslovn_stoim, Adres_vyzova_vvodim,
						Predvariteljnyi, Data_predvariteljnaya,
						Zadeistv_predvarit, Data_po_umolchaniyu,
						Soobsheno_voditelyu, vypolnyaetsya_voditelem,
						otpuskaetsya_dostepcherom, ocenivaetsya_cherez,
						adres_sektora, konechnyi_sektor_raboty,
						sektor_voditelya, Nomer_zakaza,
						Adres_okonchaniya_zayavki, Pozyvnoi_ustan,
						Data_pribytie, Nomer_skidki, Ustan_pribytie,
						Primechanie, Slugebnyi, otpravlyaetsya,
						Opr_s_obsh_linii, Data_na_tochke, REMOTE_SET,
						REMOTE_INCOURSE, REMOTE_ACCEPTED, REMOTE_DRNUM,
						DRIVER_SMS_SEND_STATE, CLIENT_SMS_SEND_STATE,
						SMS_SEND_DRNUM, SMS_SEND_CLPHONE,
						Priority_counter, Individ_order, Individ_sending,
						SECTOR_ID, REMOTE_SUMM, REMOTE_SYNC,
						LAST_STATUS_TIME, NO_TRANSMITTING 
						FROM Zakaz WHERE BOLD_ID=@order_id;
					
					IF (@@ROWCOUNT>0)
					BEGIN
					    DELETE FROM Zakaz
						WHERE BOLD_ID=@order_id;
						SET @arh_count=@arh_count+1;
					END;	
					/*Выбираем следующую строку*/
					FETCH NEXT FROM @ARH_CURSOR INTO @order_id
				END
				CLOSE @ARH_CURSOR
			--END
			--ELSE
			--BEGIN
			--	SET @arh_count=0;
			--END;
 
			UPDATE Objekt_vyborki_otchyotnosti
			SET last_arh_date=CURRENT_TIMESTAMP
			WHERE Tip_objekta='for_drivers';
			
		END TRY
		BEGIN CATCH
		END CATCH;
	END;
	END;		
	
END
GO
/****** Object:  StoredProcedure [dbo].[One10SecTask]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[One10SecTask] 
	(@success int OUT)
AS
BEGIN 

	DECLARE @auto_bsector_longorders smallint, @auto_bsectorid_longorders int,
			@auto_bsector_longtime int, @auto_bsector_onlineorders smallint,
			@auto_bsectorid_onlineorders int, @auto_bsector_onlinetime int,
			@auto_neardriver_onlineorders smallint, @auto_neardriver_onlinetime int;
	
	SELECT TOP 1 @auto_bsector_longorders=ISNULL(auto_bsector_longorders,0),
	@auto_bsectorid_longorders=ISNULL(auto_bsectorid_longorders,-1),
	@auto_bsector_longtime=ISNULL(auto_bsector_longtime,0),
	@auto_bsector_onlineorders=ISNULL(auto_bsector_onlineorders,0),
	@auto_bsectorid_onlineorders=ISNULL(auto_bsectorid_onlineorders,-1),
	@auto_bsector_onlinetime=ISNULL(auto_bsector_onlinetime,0),
	@auto_neardriver_onlineorders=ISNULL(auto_neardriver_onlineorders,0), 
	@auto_neardriver_onlinetime=ISNULL(auto_neardriver_onlinetime,0)
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
			SECTOR_ID=@auto_bsectorid_longorders, REMOTE_SET=2, Priority_counter=0
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) and (rclient_status>=0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_longtime)
			AND Telefon_klienta<>'' AND Adres_vyzova_vvodim<>''
			SET @success=1;
		end
		if @auto_bsector_onlineorders>0 and @auto_bsector_onlinetime>0 and @auto_bsectorid_onlineorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=@auto_bsectorid_onlineorders, 
			SECTOR_ID=@auto_bsectorid_onlineorders, REMOTE_SET=2, Priority_counter=0
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) AND rclient_id>-1 and (rclient_status>=0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_onlinetime)
			AND Telefon_klienta<>'' AND Adres_vyzova_vvodim<>''
			SET @success=1;
		end
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END



GO
/****** Object:  StoredProcedure [dbo].[One3SecTask]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[One3SecTask] 
	(@success int OUT)
AS
BEGIN 

	SET @success=0;

	BEGIN TRY
		SET @success=1;
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END



GO
/****** Object:  StoredProcedure [dbo].[OneMinuteTask]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OneMinuteTask] 
	(@success int OUT)
AS
BEGIN 

	SET @success=0;

	BEGIN TRY
		SET @success=1;
		UPDATE Voditelj 
		SET DR_SUMM=dbo.GetDrWorkSumm(BOLD_ID);
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END


GO
/****** Object:  StoredProcedure [dbo].[ProceedOperationRequest]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ProceedOperationRequest] 
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
/****** Object:  StoredProcedure [dbo].[RealizeReservePresent]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[RealizeReservePresent] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @count int OUT)
AS
BEGIN 
	DECLARE @ab_num varchar(255), @discount_num int,
		@ab_count int, @person_id int, @reserved_cnt int;
	SET @count = 0;
	SET @ab_count = 0;
	SET @person_id = -1;
	SET @reserved_cnt = 0;

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
			SELECT @person_id=BOLD_ID, @reserved_cnt=RESERVED_PRESENTS FROM Persona
			WHERE Elektronnyi_adres='Индивидуальный клиент' 
			and CAST(Korpus as varchar(255))=@ab_num;
		END;
	END;
	
	IF ((@discount_num=0) and (@person_id>0) and (@reserved_cnt>0))
	BEGIN
	
	UPDATE Persona SET RESERVED_PRESENTS=RESERVED_PRESENTS-1 
	WHERE BOLD_ID=@person_id;
	
	UPDATE Zakaz 
	SET Nomer_skidki=1 
	WHERE BOLD_ID=@order_id;
	
	SET @count=@@ROWCOUNT;
	
	END
	
END




GO
/****** Object:  StoredProcedure [dbo].[RealizeTDEvent]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[RealizeTDEvent] 
	-- Add the parameters for the stored procedure here
	(@event_id int)
AS
BEGIN 
    DECLARE @event_type int, @summ decimal(28, 10), @edate datetime, @count int, @dr_num int;
    SELECT @event_type=ETYPE_ID, @summ=SUMM, @edate=EDATE,
    @dr_num=DR_NUM FROM TD_EVENTS WHERE EVENT_ID=@event_id;
    SET @summ = -@summ;
	IF(@event_type=7)	
	BEGIN
		EXEC InsertNewDriverIncome -1, 1, @summ, @edate, @dr_num, @count = @count OUTPUT;
		UPDATE Voditelj set daily_paym_status=0 where Pozyvnoi=@dr_num;
	END;
	UPDATE TD_EVENTS 
	SET CLOSED=1 
	WHERE EVENT_ID=@event_id;
END


GO
/****** Object:  StoredProcedure [dbo].[RecoveryOrder]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[RecoveryOrder] 
	-- Add the parameters for the stored procedure here
	(@driver_num int, @adres varchar(255), 
	@phone varchar(255), @sale int, @order_num INT, 
	@start_date DATETIME, @end_date DATETIME,
	@order_id int OUT, @err_msg varchar(255) OUT,
	@restore_crash INT OUT)
AS
BEGIN 

	DECLARE @driver_id INT, @dr_count INT;
	
	SET @driver_id = -1;
	SET @order_id = -1;
	SET @err_msg = 'UNKNOWN';
	SET @driver_num=ISNULL(@driver_num,0);
	SET @order_num=ISNULL(@order_num,0);
	SET @sale = ISNULL(@sale,0);
	SET @restore_crash = 0;
	
	IF (@order_num>0) 
	BEGIN
		IF(@sale>0)
		BEGIN
			IF (@driver_num>0)
			BEGIN
				
				SELECT @dr_count=COUNT(*) FROM Voditelj
				WHERE Pozyvnoi=@driver_num;
				
				if (@dr_count>0)
				BEGIN
				
					if (@dr_count=1) 
					BEGIN
					
						BEGIN TRY
						
							SET @err_msg = 'ROLLBACK RESTORE TRAN';
							SET @restore_crash = 1;
							
							BEGIN TRAN
						
							SELECT TOP 1 @driver_id=BOLD_ID FROM Voditelj
							WHERE Pozyvnoi=@driver_num;
							
							if (@driver_id>0) 
							BEGIN
								
								EXEC InsertCompletedOrder @bold_id = @order_id OUTPUT;
								
								if (@order_id>0)
								BEGIN
									UPDATE Zakaz SET Pozyvnoi_ustan=@driver_num,
									otpuskaetsya_dostepcherom=-1,
									vypolnyaetsya_voditelem=@driver_id,
									Adres_vyzova_vvodim=@adres,
									Telefon_klienta=@phone,
									Uslovn_stoim=@sale,
									Nachalo_zakaza_data=@start_date,
									Konec_zakaza_data=@end_date,
									RESTORED=1,
									Zavershyon=1
									WHERE BOLD_ID=@order_id;
								END
								ELSE
								BEGIN
									SET @err_msg = 'BAD NEW ORDER ID';
								END;
								
							END
							ELSE
							BEGIN
								SET @err_msg = CAST(@driver_num as VARCHAR(50))+' DRIVER BAD ID';
							END
							
							COMMIT TRAN
							
							SET @restore_crash = 0;
						
						END TRY
						BEGIN CATCH
							ROLLBACK TRAN
						END CATCH
					
					END
					ELSE
					BEGIN
						SET @err_msg = CAST(@driver_num as VARCHAR(50))+' DRIVER OVER 1 COUNT';
					END
				
				END
				ELSE
				BEGIN
					SET @err_msg = CAST(@driver_num as VARCHAR(50))+' DRIVER 0 COUNT';
				END;
				
			END
			ELSE
			BEGIN
				SET @err_msg = CAST(@driver_num as VARCHAR(50))+' DRIVER ERROR NUM';
			END
		END
		ELSE
		BEGIN
			SET @err_msg = 'NULL ORDER SALE';
		END
	END
	ELSE
	BEGIN
		SET @err_msg = 'ERROR ORDER NUM';
	END;
END



GO
/****** Object:  StoredProcedure [dbo].[ReserveOrderPresent]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ReserveOrderPresent] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @count int OUT)
AS
BEGIN 
	DECLARE @ab_num varchar(255), @discount_num int,
		@ab_count int, @person_id int;
	SET @count = 0;
	SET @ab_count = 0;
	SET @person_id = -1;

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
	
	UPDATE Zakaz 
	SET Nomer_skidki=0 
	WHERE BOLD_ID=@order_id;
	
	UPDATE Persona SET RESERVED_PRESENTS=RESERVED_PRESENTS+1 
	WHERE BOLD_ID=@person_id;
	
	SET @count=@@ROWCOUNT;
	
	END
	
END




GO
/****** Object:  StoredProcedure [dbo].[ResetRemoteDriversFlags]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ResetRemoteDriversFlags] 
	-- Add the parameters for the stored procedure here
AS
BEGIN 

	UPDATE Voditelj SET WAS_REMOTE_CLIENT=ITS_REMOTE_CLIENT;
	UPDATE Voditelj SET ITS_REMOTE_CLIENT=0;

END

GO
/****** Object:  StoredProcedure [dbo].[RestoreRemoteDriversFlags]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RestoreRemoteDriversFlags] 
	-- Add the parameters for the stored procedure here
AS
BEGIN 

	UPDATE Voditelj SET ITS_REMOTE_CLIENT=WAS_REMOTE_CLIENT;

END

GO
/****** Object:  StoredProcedure [dbo].[SetDriverDailyPaymStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SetDriverDailyPaymStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @pstatus int, @count int OUT)
AS
BEGIN 

	DECLARE @pay_status smallint, @day_payment decimal(28,10), 
		@pdate datetime, @dr_num int;
	--PAY_NULL = 0;
	--PAY_REQU = 1;
	--PAY_REQU_SEND = 2;
	--PAY_ALLOW = 3;
	--PAY_DECLINE = 4;

	SET @count=0;
	SET @pay_status = 0;
	SET @day_payment = 0;
	SET @pdate=GETDATE();
	SET @dr_num=0;
	

	SELECT @pay_status=ISNULL(daily_paym_status,0), @day_payment=ISNULL(day_payment,0),
	@pdate=paym_check_date, @dr_num=Pozyvnoi  
	FROM Voditelj WHERE BOLD_ID=@driver_id;
	
	IF @day_payment<=0 BEGIN
		SELECT TOP 1 @day_payment = ISNULL(day_payment,0) 
		FROM Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';
	END

	IF @pay_status=2 BEGIN
	    UPDATE Voditelj 
			SET Voditelj.daily_paym_status=@pstatus 
			WHERE Voditelj.BOLD_ID=@driver_id;
		IF @pstatus=3 BEGIN
			SET @day_payment = -@day_payment;
			EXEC InsertNewDriverIncome -1, 1, @day_payment, @pdate, @dr_num, @count = @count OUTPUT;
		END
		IF @pstatus=4 BEGIN
		    DECLARE @desc varchar(255);
			set @desc='Водитель '+CAST(@dr_num as varchar(20))+' отказывается оплатить сутки! Вычесть? '+CAST(@pdate as varchar(50));
			EXEC InsertEvent3 7, -1, @driver_id, -1, 
								@pdate, @desc, '',
								'', @dr_num, '',
								'', 1, 'app_server', @day_payment, @count = @count OUTPUT;
		END
	END;
	
END




GO
/****** Object:  StoredProcedure [dbo].[SetDriverFromPretendents]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetDriverFromPretendents] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @count int OUT)
AS
BEGIN 

	DECLARE @dr_num int, @dr_count int, @accept_count int;
	
	SET @count = -1;
	SET @dr_count = -1;
	
	--PRINT '10';

	SELECT @dr_count=COUNT(*) FROM Voditelj  
	WHERE Voditelj.BOLD_ID=@driver_id;
	
	EXEC ClearOrderAcceptByDrId @order_id,
		@driver_id, @accept_count;
	
	IF (@dr_count>0) BEGIN
	
		SELECT @dr_num=Pozyvnoi FROM Voditelj
		WHERE BOLD_ID=@driver_id;
		
		IF (@dr_num>0) BEGIN
		
			DECLARE @dir_dr_autoset int;
		
			SELECT TOP 1 
			@dir_dr_autoset=ISNULL(dir_dr_autoset,0) 
			FROM Objekt_vyborki_otchyotnosti
			WHERE Tip_objekta='for_drivers';
		
			IF @dir_dr_autoset>0 
			BEGIN
				UPDATE Zakaz SET
				REMOTE_SET=8, REMOTE_DRNUM=@dr_num,
				REMOTE_SYNC=1, vypolnyaetsya_voditelem=@driver_id,
				Pozyvnoi_ustan=@dr_num
				WHERE (((REMOTE_SET>0) AND 
				(REMOTE_SET<7)) OR REMOTE_SET 
				IN (23,24,25,26,12)) AND 
				(BOLD_ID=@order_id);
			END	
			ELSE
			BEGIN		
				UPDATE Zakaz SET
				REMOTE_SET=7,REMOTE_DRNUM=@dr_num
				WHERE (((REMOTE_SET>0) AND 
				(REMOTE_SET<7)) OR REMOTE_SET 
				IN (23,24,25,26,12)) AND 
				(BOLD_ID=@order_id);
			END; 
			
			SET @count = @@ROWCOUNT;
		
		END
	
	END
	
END



GO
/****** Object:  StoredProcedure [dbo].[SetDriverOnLine]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetDriverOnLine] 
	-- Add the parameters for the stored procedure here
	(@driver_id int)
AS
BEGIN 
	UPDATE Voditelj 
	SET Voditelj.V_rabote=1 
	WHERE Voditelj.BOLD_ID=@driver_id;
END

GO
/****** Object:  StoredProcedure [dbo].[SetDriverOutLine]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetDriverOutLine] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @count int OUT)
AS
BEGIN 

	EXEC CheckDriverBusy @driver_id;
	UPDATE Voditelj SET V_rabote=0 
	WHERE Voditelj.BOLD_ID=@driver_id AND 
	Voditelj.Zanyat_drugim_disp=0;
	SET @count=@@ROWCOUNT;
	
END


GO
/****** Object:  StoredProcedure [dbo].[SetDriverRemoteStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetDriverRemoteStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @status int, @count int OUT, 
		@check_busy int, @on_launch int, @on_line int,
		@sync int)
AS
BEGIN 

	--DR_ERROR_CL_SOCKET = -2;
	--DR_NOT_CONNECTED = -1;
	--DR_NOT_AUTORIZED = 0;
	--FREE_DRIVER = 1;
	--DR_IN_DECISION = 2;
	--DR_IN_WORKING = 3;
	--DR_IN_WORKING_ONHAND = 4;
	--DR_IN_CANCELING = 5;
	--DR_IN_SELF_CANCELING = 6;
	--DR_ON_REST = 7;
	--DR_OUT_FROM_LINE = 8;
	--DR_IN_WORKING_ONHAND_ATTEMPT = 9;
	--DR_IN_CANCELING_ATTEMPT = 10;
	--DR_IN_SELF_CANCELING_ATTEMPT = 11;
	--DR_ON_REST_ATTEMPT = 12;
	--DR_OUT_FROM_LINE_ATTEMPT = 13;
	--DR_IN_WORKING_ONHAND_DENY = 14;
	--DR_IN_SELF_CANCELING_DENY = 15; 
	--DR_ON_REST_DENY = 16;
	--DR_OUT_FROM_LINE_DENY = 17;
	--DR_FROM_REST_ATTEMPT = 18;
	--DR_NOACTIVE_STATUS=100;

	SET @count=0;

	IF(@status=1)	--FREE_DRIVER = 1;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id;
		
		SET @count=@@ROWCOUNT;
	END;
	
	IF(@status=-2)	--DR_ERROR_CL_SOCKET = -2;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id;
		
		SET @count=@@ROWCOUNT;
	END;

	IF(@status=12)	--DR_ON_REST_ATTEMPT = 12;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id AND
		Voditelj.REMOTE_STATUS NOT IN ( -1, -2);
		
		SET @count=@@ROWCOUNT;
	END;
	
	IF(@status=7)	--DR_ON_REST = 7;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id AND
		Voditelj.REMOTE_STATUS NOT IN ( -1, -2);
		
		SET @count=@@ROWCOUNT;
	END;
	
	IF(@status=18)	----DR_FROM_REST_ATTEMPT = 18;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id AND
		Voditelj.REMOTE_STATUS NOT IN ( -1, -2);
		
		SET @count=@@ROWCOUNT;
	END;
	
	IF(@status=100)	----DR_NOACTIVE_STATUS=100;
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.REMOTE_STATUS=@status 
		WHERE Voditelj.BOLD_ID=@driver_id AND
		Voditelj.REMOTE_STATUS NOT IN ( -1, -2);
		
		SET @count=@@ROWCOUNT;
	END;
	
	if(@count>0 AND @check_busy>0)
	BEGIN
		EXEC CheckDriverBusy @driver_id;
	END;
	
	if(@count>0 AND @on_launch>=0)
	BEGIN
		if(@on_launch>0)
		BEGIN
			UPDATE Voditelj 
			SET Na_pereryve=1
			WHERE BOLD_ID=@driver_id;
		END
		ELSE
		BEGIN
			UPDATE Voditelj 
			SET Na_pereryve=0
			WHERE BOLD_ID=@driver_id;
		END;
	END;
	
	if(@count>0 AND @on_line>=0)
	BEGIN
		if(@on_line>0)
		BEGIN
			UPDATE Voditelj 
			SET V_rabote=1
			WHERE BOLD_ID=@driver_id;
		END
		ELSE
		BEGIN
			UPDATE Voditelj 
			SET V_rabote=0
			WHERE BOLD_ID=@driver_id;
		END;
	END;
	
	if(@count>0 AND @sync>=0)
	BEGIN
		if(@sync>0)
		BEGIN
			UPDATE Voditelj 
			SET REMOTE_SYNC=1
			WHERE BOLD_ID=@driver_id;
		END
		ELSE
		BEGIN
			UPDATE Voditelj 
			SET REMOTE_SYNC=0
			WHERE BOLD_ID=@driver_id;
		END;
	END;
	
END


GO
/****** Object:  StoredProcedure [dbo].[SetDriverSector]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SetDriverSector] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @sector_id int, @count int OUT, 
		@remote_sync int,	@sector_name varchar(255) OUT)
AS
BEGIN 

	DECLARE @sect_num int;

	SET @sector_name='';

	SELECT @sector_name=dict.Naimenovanie,
		@sect_num=ws.Nomer_sektora
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID
	WHERE ws.BOLD_ID=@sector_id;
	
	SET @count=@@ROWCOUNT;
	
	IF(@count>0)
	BEGIN
		UPDATE Voditelj 
		SET Voditelj.rabotaet_na_sektore=@sector_id,
			Voditelj.REMOTE_SYNC=@remote_sync,
			Voditelj.Nomer_posl_sektora=@sect_num 
		WHERE Voditelj.BOLD_ID=@driver_id;
	
		SET @count=@@ROWCOUNT;
	END;
	
END




GO
/****** Object:  StoredProcedure [dbo].[SetDriverSectWBrodcastStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetDriverSectWBrodcastStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @status int, @count int OUT)
AS
BEGIN 

	SET @count=0;

	UPDATE Voditelj 
	SET Voditelj.SEND_WBROADCAST=@status 
	WHERE Voditelj.BOLD_ID=@driver_id;
	
	UPDATE Objekt_vyborki_otchyotnosti
	SET has_sect_wbroadcast=1;
		
	SET @count=@@ROWCOUNT;
	
END



GO
/****** Object:  StoredProcedure [dbo].[SetDriverStatSyncStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SetDriverStatSyncStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @status int, @count int OUT)
AS
BEGIN 

	--DR_ERROR_CL_SOCKET = -2;
	--DR_NOT_CONNECTED = -1;
	--DR_NOT_AUTORIZED = 0;
	--FREE_DRIVER = 1;
	--DR_IN_DECISION = 2;
	--DR_IN_WORKING = 3;
	--DR_IN_WORKING_ONHAND = 4;
	--DR_IN_CANCELING = 5;
	--DR_IN_SELF_CANCELING = 6;
	--DR_ON_REST = 7;
	--DR_OUT_FROM_LINE = 8;
	--DR_IN_WORKING_ONHAND_ATTEMPT = 9;
	--DR_IN_CANCELING_ATTEMPT = 10;
	--DR_IN_SELF_CANCELING_ATTEMPT = 11;
	--DR_ON_REST_ATTEMPT = 12;
	--DR_OUT_FROM_LINE_ATTEMPT = 13;
	--DR_IN_WORKING_ONHAND_DENY = 14;
	--DR_IN_SELF_CANCELING_DENY = 15; 
	--DR_ON_REST_DENY = 16;
	--DR_OUT_FROM_LINE_DENY = 17;
	--DR_FROM_REST_ATTEMPT = 18;
	--DR_NOACTIVE_STATUS=100;

	SET @count=0;

	UPDATE Voditelj 
	SET Voditelj.SYNC_STATUS=@status 
	WHERE Voditelj.BOLD_ID=@driver_id;
		
	SET @count=@@ROWCOUNT;
	
END



GO
/****** Object:  StoredProcedure [dbo].[SetIndOrderSendStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SetIndOrderSendStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @indiv_priority int)
AS
BEGIN 
	UPDATE Zakaz 
	SET Zakaz.Individ_sending=1, 
	Zakaz.Individ_order=0,
	Zakaz.REMOTE_SET=2,
	Zakaz.Priority_counter=
	Zakaz.Priority_counter-@indiv_priority 
	WHERE Zakaz.BOLD_ID=@order_id;
END




GO
/****** Object:  StoredProcedure [dbo].[SetOnHandOrderGoStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetOnHandOrderGoStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE (Zakaz.REMOTE_SET=9) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=10
	WHERE (Zakaz.REMOTE_SET=9) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
END







GO
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int)
AS
BEGIN 
	--DECLARE @dr_num int;
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
	
	UPDATE Voditelj 
	SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
	WHERE BOLD_ID=@driver_id;
	
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
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus2]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus2] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int)
AS
BEGIN 
	--DECLARE @dr_num int;
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
	
	UPDATE Voditelj 
	SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
	WHERE BOLD_ID=@driver_id;
	
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
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus3]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus3] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int, @tm_distance int)
AS
BEGIN 
	--DECLARE @dr_num int;
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
	
	UPDATE Voditelj 
	SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
	WHERE BOLD_ID=@driver_id;
	
	SET @count=@@ROWCOUNT;
	
	EXEC CheckDriverBusy @driver_id;
	
	END
	
END



GO
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAllowStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetOrderDispCancelAllowStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE (Zakaz.REMOTE_SET=11) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=12
	WHERE (Zakaz.REMOTE_SET=11) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
END







GO
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAttStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetOrderDispCancelAttStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE (Zakaz.REMOTE_SET>6) AND 
	(Zakaz.REMOTE_SET<11) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=11 
	WHERE (Zakaz.REMOTE_SET>6) AND 
	(Zakaz.REMOTE_SET<11) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
END







GO
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAllowStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetOrderDriverCancelAllowStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE (Zakaz.REMOTE_SET=13) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=14
	WHERE (Zakaz.REMOTE_SET=13) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
END







GO
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAttStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetOrderDriverCancelAttStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_id int, @count int OUT)
AS
BEGIN 
	--DECLARE @count int;
	SET @count = 0;
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=13 
	WHERE (Zakaz.REMOTE_SET=8) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@dr_id);
	
	SET @count=@@ROWCOUNT;
	
END








GO
/****** Object:  StoredProcedure [dbo].[SetOrderGoStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[SetOrderGoStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @dr_num int, @count int OUT)
AS
BEGIN 
	DECLARE @prev_dr_id int, 
	@on_launch int, @driver_id int;
	
	SET @count = 0;

	SELECT @count=COUNT(*)
	FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=17) OR 
	(Zakaz.REMOTE_SET=18)) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	SELECT TOP 1 @driver_id=dr.BOLD_ID 
	FROM Voditelj dr 
	WHERE dr.Pozyvnoi=@dr_num;
	
	if (@count>0)
	begin
	
	SELECT  
	
	@prev_dr_id=
	Zakaz.vypolnyaetsya_voditelem 
	FROM Zakaz
	WHERE   
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=8,
	Zakaz.vypolnyaetsya_voditelem=@driver_id,
	Zakaz.Pozyvnoi_ustan=@dr_num,
	Zakaz.CLIENT_SMS_SEND_STATE=1
	WHERE ((Zakaz.REMOTE_SET=17) OR 
	(Zakaz.REMOTE_SET=18)) AND  
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.REMOTE_DRNUM=@dr_num);
	
	UPDATE Voditelj
	SET Na_pereryve=0,
	Zanyat_drugim_disp=1
	WHERE BOLD_ID=@driver_id;
	
	EXEC CheckDriverBusy @prev_dr_id;
	
	end
	
	
	
END











GO
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SetOrderOccupAttemptStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @count int OUT, @status int, @is_manual int)
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
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus2]    Script Date: 17.12.2016 12:13:39 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderParam]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrderParam] 
	-- Add the parameters for the stored procedure here
	(@bold_id int, @param_name varchar(20), @int_value int, @str_value varchar(255), @float_value float, @res int OUTPUT)
AS
BEGIN 

	SET @res = 0;
 
    if (@param_name='REMOTE_SET')
		begin
			UPDATE Zakaz SET REMOTE_SET=@int_value WHERE BOLD_ID=@bold_id
			SET @res = @@ROWCOUNT;
		end

    if (@param_name='REMOTE_INCOURSE')
		begin
			UPDATE Zakaz SET REMOTE_INCOURSE=@int_value WHERE BOLD_ID=@bold_id
			SET @res = @@ROWCOUNT;
		end

    if (@param_name='REMOTE_ACCEPTED')
		begin
			UPDATE Zakaz SET REMOTE_ACCEPTED=@int_value WHERE BOLD_ID=@bold_id
            SET @res = @@ROWCOUNT;
		end

    /*if (@param_name='ORDER_SUMM')
		begin
			UPDATE Zakaz SET Uslovn_stoim=@float_value WHERE BOLD_ID=@bold_id
            SET @res = @@ROWCOUNT;
		end
	*/
     
    return
END
GO
/****** Object:  StoredProcedure [dbo].[SetOrderRemoteStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrderRemoteStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @status int, @count int OUT, 
	@priority_counter int)
AS
BEGIN 
	SET @count=0;
	
	DECLARE @db_version INT, @use_priority int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_priority=ISNULL(use_dr_priority,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	if ((@priority_counter>-10000) AND (@use_priority>0)) begin
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@status
		WHERE Zakaz.BOLD_ID=@order_id;
		
		UPDATE dbo.ORDER_PRIORITY 
		SET PRIORITY=@priority_counter
		WHERE ORDER_ID=@order_id;
		
		SET @count=@@ROWCOUNT;
	end
	else
	begin
		UPDATE Zakaz 
		SET Zakaz.REMOTE_SET=@status 
		WHERE Zakaz.BOLD_ID=@order_id;
		
		SET @count=@@ROWCOUNT;
	end;
	
END

GO
/****** Object:  StoredProcedure [dbo].[SetOrdersWideBroadcasts]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrdersWideBroadcasts] 
	-- Add the parameters for the stored procedure here
	(@set_owbcast int, @forders_bcasts varchar(5000) OUT)
AS
BEGIN 
	SET @forders_bcasts='';
	IF (ISNULL(@set_owbcast,0)=1)
	BEGIN
		SELECT @forders_bcasts=ISNULL(dbo.GetJSONOrdersBCasts(),'');
		UPDATE Objekt_vyborki_otchyotnosti 
		SET forders_wbroadcast=@forders_bcasts,
		has_ford_wbroadcast=1;
	END
	ELSE
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti
		SET has_ford_wbroadcast=0;
	END;
END

GO
/****** Object:  StoredProcedure [dbo].[SetWideBroadcasts]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetWideBroadcasts] 
	-- Add the parameters for the stored procedure here
	(@set_sectors int, @sectors_bcasts varchar(5000) OUT)
AS
BEGIN 
	SET @sectors_bcasts='';
	IF (ISNULL(@set_sectors,0)=1)
	BEGIN
		SELECT @sectors_bcasts=ISNULL(dbo.GetJSONSectorsStatus(),'');
		UPDATE Objekt_vyborki_otchyotnosti 
		SET sectors_wbroadcast=@sectors_bcasts,
		has_sect_wbroadcast=1;
	END
	ELSE
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti 
		SET has_sect_wbroadcast=0;
	END;
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetCustClientInfo]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetCustClientInfo]  ( @cust_num decimal, @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @cres varchar(255),
		@poz varchar(255), @model varchar(255), @gos_num  varchar(255)

  SET @res=''
   
   --select @ccount=COUNT(*) from Zakaz where 
   --nomer_zakaza=@cust_num
  SET @ccount=1
 
   if (@ccount>0) begin
      --select @cres=telefon_klienta+adres_vyzova_vvodim from Zakaz c where 
      --    c.nomer_zakaza=@cust_num   
      --if (@phone_adr='')  begin
      -- SET @res=''
      --end
      --else
      -- begin
      -- select ='Заявка от '+CAST(nachalo_zakaza_data as VARCHAR) from Zakaz c where 
      --     c.nomer_zakaza=@cust_num     
      --SET @res=CAST(@nzd as VARCHAR)   
         SET @cres=''
         SET @poz=''
		 SET @model=''
         SET @gos_num=''
         if (@dr_num>0) begin
			select @ccount=COUNT(*) from Voditelj v where 
				(v.Pozyvnoi=@dr_num)
			if (@ccount>0) begin
				select @poz=ISNULL(CAST(v.Pozyvnoi AS VARCHAR),''),
					@model=ISNULL(v.Marka_avtomobilya,''),
					@gos_num=ISNULL(v.Gos_nomernoi_znak,'') from Voditelj v where 
					(v.Pozyvnoi=@dr_num)
			end  
         end
		 
		 --if	(@poz<>'') begin
		 --	SET @poz='позывной '+@poz
		 --end
		 if ((@model<>'') AND (@gos_num<>'')) begin
			SET @res=@model+' '+@gos_num    
         end
        --end    
   end
   else begin
     set @res=''
   end

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetCustComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetCustComment]  ( @cust_num decimal, @nzd datetime, @phone_adr varchar(255), @oo decimal, @od decimal, @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @cres varchar(255)

   SET @res='Заявка от '
   
   --select @ccount=COUNT(*) from Zakaz where 
   --nomer_zakaza=@cust_num
  SET @ccount=1
 
   if (@ccount>0) begin

      --select @cres=telefon_klienta+adres_vyzova_vvodim from Zakaz c where 
      --    c.nomer_zakaza=@cust_num   
      if (@phone_adr='')  begin
       SET @res='Пустая заявка установите адрес или телефон'
      end
      else
       begin

      -- select ='Заявка от '+CAST(nachalo_zakaza_data as VARCHAR) from Zakaz c where 
      --     c.nomer_zakaza=@cust_num     

        SET @res=CAST(@nzd as VARCHAR) 
        SET @cres=', нет оператора '
        select @ccount=COUNT(*) from Personal p where 
          (p.BOLD_ID=@oo)
         if (@ccount>0) begin
            select @cres=', оператор '+p.login from Personal p where 
            (p.BOLD_ID=@oo)
         end 

        SET @res=@res+@cres

        SET @cres=', нет диспетчера '
        select @ccount=COUNT(*) from Personal p where 
          (p.BOLD_ID=@od)
         if (@ccount>0) begin
            select @cres=', диспетчер '+p.login from Personal p where 
            (p.BOLD_ID=@od)
         end  

         SET @res=@res+@cres 
         
         SET @cres=' не опр. водитель '
         if (@dr_num>0) begin
			select @ccount=COUNT(*) from Voditelj v where 
				(v.Pozyvnoi=@dr_num)
			if (@ccount>0) begin
				select @cres=', машина '+CAST(v.Pozyvnoi AS VARCHAR)+' '+
					ISNULL(v.Marka_avtomobilya,'нет марки и цвета')+' '+
					ISNULL(v.Gos_nomernoi_znak,'нет гос. номера') from Voditelj v where 
					(v.Pozyvnoi=@dr_num)
			end  
         end

         SET @res=@res+@cres      

        end    

   end
   else begin
     set @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDevNumByCode]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDevNumByCode]  ( @phone varchar(255))
RETURNS int
AS
BEGIN
   declare @res int, @code varchar(50)
   
   SET @res=0
   
   IF LEN(@phone)=10
   BEGIN
		SET @code=LEFT(@phone,3)
		SELECT @res=device_num FROM DEVICE_CODES WHERE code=@code
   END

   if @res=NULL begin
       SET @res=0
   end  

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDiscountNumOnOrderCount]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDiscountNumOnOrderCount]  ( @order_count int)
RETURNS int
AS
BEGIN
   declare @res int,
		@use_bonus1 int, @bonus1_val int,
		@use_bonus2 int, @bonus2_val int,
		@use_bonus3 int, @bonus3_val int,
		@use_bonus4 int, @bonus4_val int;
		
  SET @res=0;
   
  SELECT TOP 1 
		@use_bonus1=ISNULL(Ispoljz_priz_1,0), 
		@use_bonus2=ISNULL(Ispoljz_priz_2,0),
		@use_bonus3=ISNULL(use_bonus3,0),
		@use_bonus4=ISNULL(use_bonus4,0),
		@bonus1_val=ISNULL(Prizovoe_kolichestvo_1,0),
		@bonus2_val=ISNULL(Prizovoe_kolichestvo_2,0),
		@bonus3_val=ISNULL(Prizovoe_kolichestvo_3,0),
		@bonus4_val=ISNULL(Prizovoe_kolichestvo_4,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if (@use_bonus1>0) AND (@bonus1_val>0) 
	begin
		if ((@order_count % @bonus1_val)=0)
		begin
			SET @res=1;
		end;
	end;
	
	if (@use_bonus2>0) AND (@bonus2_val>0) 
	begin
		if ((@order_count % @bonus2_val)=0)
		begin
			SET @res=2;
		end;
	end;
	
	if (@use_bonus3>0) AND (@bonus3_val>0) 
	begin
		if ((@order_count % @bonus3_val)=0)
		begin
			SET @res=3;
		end;
	end;
	
	if (@use_bonus4>0) AND (@bonus4_val>0) 
	begin
		if ((@order_count % @bonus4_val)=0)
		begin
			SET @res=4;
		end;
	end;

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrComment]  (@LastDATE datetime, @Drnum int, @Occup_attr int, @launch int)
RETURNS varchar(255)
AS
BEGIN
   DECLARE @DrComment varchar(255),
           @Occuped varchar(15)
   IF @Occup_attr=0 BEGIN
     SET @Occuped='свободен'
   END
    ELSE
   BEGIN
     SET @Occuped='занят'
   END

   IF @launch<>0 
    BEGIN
      SET @Occuped='на перерыве'
    END

   SET @DrComment= CAST(@Drnum AS VARCHAR(4))+' '+@Occuped+' посл. '
+CAST(DATEPART(hh,(@LastDATE))AS CHAR(2))+'ч.'
+CAST(DATEPART(mm,(@LastDATE))AS CHAR(2))+'мин. '  

   RETURN(@DrComment)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDayliTariff]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrDayliTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @day_pay decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @day_pay=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @day_pay=dr.day_payment from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @day_pay>0 begin
		SET @res=@day_pay
	 end
	 else
	 begin
		select @res=ovo.day_payment from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDaysIntervalFixedSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE FUNCTION [dbo].[GetDrDaysIntervalFixedSumm]  (@Drnum int, @start_date datetime, @end_date datetime, @free_days_count int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @onday_fixed decimal(28, 10),
           @days_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @onday_fixed=0
   SET @days_count=0
   SET @dr_count=0
   SET @res=0
   
   if (@end_date<@start_date)
   begin
	SET @end_date=@start_date
   end
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     
     select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
      
     if @d_kl=0 BEGIN 
		 SET @days_count=DATEDIFF(day, @start_date, @end_date) - 
			@free_days_count;
	    
		 select @onday_fixed=ovo.Kol_posl_dnei from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@onday_fixed*@days_count;
     end
   END  

   RETURN(@res)
END





GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDynBalanceByNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrDynBalanceByNum]  ( @dr_num int)
RETURNS decimal(28,10)
AS
BEGIN
   declare @res decimal(28,10)
   
   SET @res=0
   
   if (@dr_num>0)
   begin
	select @res=DRIVER_BALANCE   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrIDByNum]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res int
   
   SET @res=-1
   
  select @res=BOLD_ID   
   from Voditelj where 
     Pozyvnoi=@dr_num 

   if @res=NULL begin
       SET @res=-1
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverDaysFixedSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetDriverDaysFixedSumm]  (@Drnum int, @start_date datetime, @free_days_count int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @onday_fixed decimal(28, 10),
           @days_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @onday_fixed=0
   SET @days_count=0
   SET @dr_count=0
   SET @res=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
   
	 select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
      
     if @d_kl=0 BEGIN
		 SET @days_count=DATEDIFF(day, @start_date, GETDATE()) - 
			@free_days_count;
	    
		 select @onday_fixed=ovo.Kol_posl_dnei from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@onday_fixed*@days_count;
     END
   END  

   RETURN(@res)
END




GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversCCHTTPParams]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDriversCCHTTPParams] ()
RETURNS varchar(1500)
AS
BEGIN
	declare @res varchar(1500);
	DECLARE @CURSOR cursor;
	DECLARE @dr_count int,
		@lat varchar(50), @lon varchar(50), 
		@counter int, @dr_num int;
   
	SET @res='dc=0';
	SET @counter = 0;
	
	SELECT @dr_count=COUNT(*)  
	FROM Voditelj WHERE ISNULL(last_lat,'')<>'' 
	AND ISNULL(last_lon,'')<>'' AND Pozyvnoi>0 
	AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10);
	
	IF (@dr_count>0)
	BEGIN
	
	SET @res='dc='+CAST(@dr_count as varchar(20));
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT last_lat, last_lon, Pozyvnoi  
	FROM Voditelj WHERE ISNULL(last_lat,'')<>'' 
	AND ISNULL(last_lon,'')<>'' AND Pozyvnoi>0 
	AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10);
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @lat, @lon, @dr_num
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @counter=@counter+1;
        SET @res=@res+'&lat'+CAST(@counter as varchar(20))+'='+CAST(@lat as varchar(20))+
			'&lon'+CAST(@counter as varchar(20))+'='+CAST(@lon as varchar(20))+
			'&dn'+CAST(@counter as varchar(20))+'='+CAST(@dr_num as varchar(20));
        
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @lat, @lon, @dr_num
	END
	CLOSE @CURSOR
	
	END

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversMinBalance]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDriversMinBalance] ()
RETURNS decimal(28,10)
AS
BEGIN
   DECLARE @min_debet decimal(28,10)
   
   SELECT @min_debet=MIN_DEBET FROM Objekt_vyborki_otchyotnosti WHERE Tip_objekta='for_drivers';  

   SET @min_debet=ISNULL(@min_debet,0);

   RETURN(@min_debet)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrJSONCoordsByNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrJSONCoordsByNum]  ( @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @res int, @coords_json varchar(255);
   
   SET @res=-1
   SET @dr_num=ISNULL(@dr_num,0)
   SET @coords_json=''
   
  if @dr_num>0 begin
  select @coords_json=BOLD_ID, @coords_json=',"dlat":"'+ISNULL(last_lat,'')+'"'+',"dlon":"'+ISNULL(last_lon,'')+'"'  
   from Voditelj where 
     Pozyvnoi=@dr_num and ISNULL(last_lat,'')<>'' and ISNULL(last_lon,'')<>''
  end

   if @coords_json=NULL begin
       SET @coords_json=''
   end  

   RETURN(@coords_json)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursRateOrdCount]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrLastHoursRateOrdCount]  (@DriverId int, @hours int, @rating_summ decimal(28,10))
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @order_count int
   
   SET @order_count=0
   
   select @order_count=COUNT(*) from Zakaz
   where vypolnyaetsya_voditelem=@DriverId 
   and (Konec_zakaza_data<=CURRENT_TIMESTAMP) 
   and (Konec_zakaza_data>=DATEADD(hour,@hours,CURRENT_TIMESTAMP)) 
   and Arhivnyi=0 and Soobsheno_voditelyu=0 and 
   Zavershyon=1 and Uslovn_stoim>=@rating_summ;   

   RETURN(@order_count)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrLastHoursSumm]  (@DriverId int, @hours int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @summ decimal(28, 10)
   
   SET @summ=0
   
   select @summ=ISNULL(SUM(Uslovn_stoim),0) from Zakaz
   where vypolnyaetsya_voditelem=@DriverId 
   and (Konec_zakaza_data<=CURRENT_TIMESTAMP) 
   and (Konec_zakaza_data>=DATEADD(hour,@hours,CURRENT_TIMESTAMP)) 
   and Arhivnyi=0 and Soobsheno_voditelyu=0 and Zavershyon=1;   

   RETURN(@summ)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrOrderFixedSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetDrOrderFixedSumm]  (@Drnum int, @start_date datetime)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @order_fixed decimal(28, 10),
           @order_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @order_fixed=0
   SET @order_count=0
   SET @dr_count=0
   SET @res=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
   
	 select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
	 
	 if @d_kl=0 BEGIN
   
		 select @order_count=COUNT(*) from Zakaz ord
		 where ord.Pozyvnoi_ustan=@Drnum AND 
		 ord.Nachalo_zakaza_data>=@start_date AND
		 ord.Arhivnyi=0 and ord.Zavershyon=1 AND
		 ord.Soobsheno_voditelyu=0;
	    
		 select @order_fixed=ovo.Kolich_vyd_benzina from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@order_fixed*@order_count;
     
     end
     
   END  

   RETURN(@res)
END




GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTakePercent]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTakePercent]  (@Drnum int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @all_percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @all_percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.Individ_procent from Voditelj dr
     where Pozyvnoi=@Drnum
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.Procent_otchisleniya from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTariffPlanId]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrTariffPlanId]  (@driver_id int)
RETURNS int
AS
BEGIN
	DECLARE @tplan_id int, @gr_tplan_id int
   
	SET @tplan_id=-1
	SET @gr_tplan_id=-1
   
	select @tplan_id=ISNULL(PR_POLICY_ID,-1)  
	from Voditelj where BOLD_ID=@driver_id;
	
	SELECT @gr_tplan_id=ISNULL(gr.PR_POLICY_ID,-1) 
	FROM Voditelj dr, Gruppa_voditelei gr 
	WHERE dr.otnositsya_k_gruppe=gr.BOLD_ID AND
	dr.BOLD_ID=@driver_id;
   
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=@gr_tplan_id
	END
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=-1
	END 

	RETURN(@tplan_id)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTaxTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.tmeter_tariff from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.tmeter_tariff from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTimeTariff]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTimeTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.ftime_tariff from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.ftime_tariff from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNum]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrUseDynBByNum]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res smallint
   
   SET @res=0
   
   if (@dr_num>0)
   begin
	select @res=use_dyn_balance   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNumWithSettParam]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrUseDynBByNumWithSettParam]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res smallint, @use_dr_bcounter int;
   
   SET @res=0
   
   SELECT @use_dr_bcounter=use_dr_balance_counter 
   FROM Objekt_vyborki_otchyotnosti 
   WHERE Tip_objekta='for_drivers';  

   SET @use_dr_bcounter=ISNULL(@use_dr_bcounter,0)
   
   if (@dr_num>0)
   begin
	select @res=use_dyn_balance   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);
   
   IF((@use_dr_bcounter=1) AND (@res=1))
   BEGIN
		SET @res=1;
   END
   ELSE
   BEGIN
		SET @res=0;
   END;

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrWorkSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrWorkSumm]  (@driver_id int)
RETURNS decimal(28, 10)
AS
BEGIN
	DECLARE @dr_summ decimal(28, 10),
		@stdt DATETIME, @enddt DATETIME,
		@tm DATETIME, @tm_str VARCHAR(255);

	SET @dr_summ=0;
	
	SELECT TOP 1 @tm_str=ISNULL(Cvet_nachavshihsya,'08:00:00') 
		FROM dbo.Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';

	SET @tm=CAST(@tm_str as DATETIME);

   
	IF ((CAST(CAST(GETDATE() AS INTEGER) AS DATETIME)+@tm)<GETDATE()) 
	BEGIN
		SET @stdt=CAST(CAST(CURRENT_TIMESTAMP AS INTEGER) AS DATETIME)+@tm;
		SET @enddt = CAST(CAST(DATEADD(DAY,1,
			CURRENT_TIMESTAMP) AS INTEGER) AS DATETIME) + @tm;
	END
	ELSE
	BEGIN
		SET @enddt=CAST(CAST(CURRENT_TIMESTAMP AS INTEGER) AS DATETIME)+@tm;
		SET @stdt = CAST(CAST(DATEADD(DAY,-1,
			CURRENT_TIMESTAMP) AS INTEGER) AS DATETIME) +@tm;
	END;

	select @dr_summ=SUM(Uslovn_stoim) from dbo.Zakaz
	where Zavershyon<>0 AND vypolnyaetsya_voditelem=@driver_id
	AND Konec_zakaza_data>=@stdt AND Konec_zakaza_data<=@enddt;

	--END TRY
	--BEGIN CATCH
	--	SET @dr_summ=0;
	--END CATCH;

	RETURN(ISNULL(@dr_summ,0))
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSector]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetEndSector]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN 
   declare @ccount int, @res varchar(255)

    select @ccount=COUNT(*) from Zakaz c, Sektor_raboty s where 
     (c.nomer_zakaza=@cust_num) AND
     (c.konechnyi_sektor_raboty=s.BOLD_ID)
 
   if (@ccount>0) begin
       select @res=s.Podskazka_na_sektore from Zakaz c, Sektor_raboty s where 
         (c.nomer_zakaza=@cust_num) AND
         (c.konechnyi_sektor_raboty=s.BOLD_ID)
   end
   else begin
      SET @res='Не определён конеч. сектор'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSectorNameByID]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetEndSectorNameByID]  ( @s_id int)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255)
   
  select @res=Naimenovanie   
   from Spravochnik where 
     BOLD_ID=@s_id  

   if @res=NULL begin
       SET @res='Не установлен сектор'
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDrClientSuccessSMSCount]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetIntervalDrClientSuccessSMSCount]  (@dr_num int, @start_dt datetime, @end_dt datetime)
RETURNS int
AS
BEGIN
  declare @res int

  SET @res=0;
 
   if (@dr_num>0) AND (@start_dt<@end_dt) begin
  
		select @res=COUNT(*) from Zakaz ord  
			where ord.Nachalo_zakaza_data>=@start_dt AND 
			ord.Konec_zakaza_data<=@end_dt AND 
			ord.CLIENT_SMS_SEND_STATE=2 AND 
			ord.Pozyvnoi_ustan=@dr_num;
   end

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDriverSuccessSMSCount]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetIntervalDriverSuccessSMSCount]  (@dr_num int, @start_dt datetime, @end_dt datetime)
RETURNS int
AS
BEGIN
  declare @res int

  SET @res=0;
 
   if (@dr_num>0) AND (@start_dt<@end_dt) begin
  
		select @res=COUNT(*) from Zakaz ord  
			where ord.Nachalo_zakaza_data>=@start_dt AND 
			ord.Konec_zakaza_data<=@end_dt AND 
			ord.DRIVER_SMS_SEND_STATE=2 AND 
			ord.Pozyvnoi_ustan=@dr_num;
   end

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverSettings]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetJSONDriverSettings]  ( @driver_id int)
RETURNS varchar(1500)
AS
BEGIN
	declare @en_moving int, @use_gps smallint,
		@gtss_acct_id varchar(50), @gtss_dev_id varchar(50), 
		@reqgps smallint;
	DECLARE @curr_mver INT, @min_mver int, @mand_upd int, 
		@addit_rparams varchar(500), @dr_addit_rparams varchar(500), @gps_srv_adr varchar(255),
		@gps_instr varchar(1000), @ftime_tariff decimal(28,10), 
		@tmeter_tariff decimal(28,10), @use_tmeter smallint,
		@use_nlocserv smallint, @use_bloc smallint, 
		@tmetr_instr varchar(1000), @tplan_id int, @gr_tplan_id int;
	
	SELECT TOP 1 @curr_mver=ISNULL(curr_mob_version,2102),
	@min_mver=ISNULL(min_mob_version,2102),
	@mand_upd=ISNULL(mandatory_update,0),
	@addit_rparams=ISNULL(addit_rem_params,''),
	@gps_srv_adr=ISNULL(GPS_SRV_ADR,'')
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
		CAST(@tplan_id as varchar(20))+'","grtpi":"'+
		CAST(@gr_tplan_id as varchar(20))+'",'+
		@tmetr_instr+@gps_instr+@addit_rparams+@dr_addit_rparams+
		'"msg_end":"ok"}')
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriversList]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONDriversList] ()
RETURNS varchar(1000)
AS
BEGIN
	declare @res varchar(1000);
	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @sector_count int,
		@sector_name varchar(255), @counter INT,
		@online_dr_count INT, @busy_dr_count INT,
		@onlaunch_count int;
   
	SET @res='{"command":"s_lst","s_cnt":"';
	SET @counter = 0;
	
	SELECT @online_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0;
	
	SELECT @busy_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
	SELECT @busy_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	
	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dict.Naimenovanie  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20))+'","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sector_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
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
/****** Object:  UserDefinedFunction [dbo].[GetJSONOrdersBCasts]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetJSONOrdersBCasts] ()
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255), @end_sect int,
		@counter int;
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT BOLD_ID, Adres_vyzova_vvodim, SECTOR_ID  FROM Zakaz 
	WHERE Zavershyon=0 AND REMOTE_SET>0 AND REMOTE_SET<8;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+@order_adres+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorList]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONSectorList] ()
RETURNS varchar(1000)
AS
BEGIN
	declare @res varchar(1000);
	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @sector_count int,
		@sector_name varchar(255), @counter int;
   
	SET @res='{"command":"s_lst","s_cnt":"';
	SET @counter = 0;
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	
	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dict.Naimenovanie  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20))+'","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sector_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
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
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorsStatus]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetJSONSectorsStatus] ()
RETURNS varchar(1000)
AS
BEGIN
	declare @res varchar(1000);
	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @sector_count int,
		@counter int;
   
	SET @res='{"command":"s_st","s_cnt":"';
	SET @counter = 0;
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty;
	
	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dbo.GetSectorDrCount(ws.BOLD_ID)  
	FROM Sektor_raboty ws;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_count
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20))+'","dc'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_count as varchar(20))+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_count
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
/****** Object:  UserDefinedFunction [dbo].[GetJSONTarifAndOptionsList]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONTarifAndOptionsList] ()
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @sid int, @scount int,
		@sname varchar(255), @counter int,
		@timetr decimal(28,10), @tmetrtr decimal(28,10),
		@os_coeff decimal(28,10), @os_comp decimal(28,10),
		@tplan_id int, @short_name varchar(20);
   
	SET @res='{"command":"to_lst","t_cnt":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM ORDER_TARIF;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50), 
		@fmt_str3 varchar(50), @fmt_str4 varchar(50), 
		@dist_part int, @dpart_tarif decimal(28, 10), 
		@stop_tarif decimal(28, 10), @dist_start int,
		@otarid int, @otplid int;
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ID, TARIF_NAME, TIME_TARIF, TMETER_TARIF, PR_POLICY_ID, SHORT_NAME, DISTANCE_PART, DPART_TARIF, STOP_TARIF, DISTANCE_START, outher_tarid, outher_tplid  
	FROM ORDER_TARIF ORDER BY ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid
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
			CAST(@otplid as varchar(20))+'"'+
			dbo.GetTarifAreaCoords(@sid, @counter);
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid
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
/****** Object:  UserDefinedFunction [dbo].[GetNearestBeginEndDate]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetNearestBeginEndDate]  (@dr_num int, @start_date datetime)
RETURNS datetime
AS
BEGIN
   declare @ccount int, @res datetime,  @order_type varchar(255)

  SET @order_type=NULL
  SET @res=@start_date
   
   select TOP 1 @order_type=ord.Adres_vyzova_vvodim, 
   @res=ord.Nachalo_zakaza_data from Zakaz ord 
   where (ord.Telefon_klienta = 'Фиктивная') AND
   ord.Pozyvnoi_ustan=@dr_num AND 
   (ord.Nachalo_zakaza_data>@start_date) AND 
   ((ord.Adres_vyzova_vvodim = 'Постановка на линию') or
   (ord.Adres_vyzova_vvodim = 'Снятие с линии'))
	ORDER BY ord.Nachalo_zakaza_data ASC 
   --nomer_zakaza=@cust_num
 
   if ((@order_type <> 'Снятие с линии') or (@order_type=NULL)) begin
	 SET @res=@start_date	
   end

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderAMICommand]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrderAMICommand]  ( @oid int)
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
	@demon_call_timeout varchar(20), @demon_callerid varchar(50);
   
   select @call_demon_locsip_name=call_demon_locsip_name,
		@demon_call_ctx=demon_call_ctx, @demon_call_virtext=demon_call_virtext,
		@demon_call_priority=demon_call_priority, @demon_call_timeout=demon_call_timeout,
		@demon_callerid=demon_callerid
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
		'Channel: SIP/'+@call_demon_locsip_name+'/8'+@clphone+'***___CRLF'+
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
/****** Object:  UserDefinedFunction [dbo].[GetOrderINumComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetOrderINumComment]  ( @inum varchar(255))
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255), @pres1 int, @pres2 int, @pres3 int
   
   select @pres1=Prizovoe_kolichestvo_1 from Objekt_vyborki_otchyotnosti where
    Tip_objekta='for_drivers' 
  
  if @pres1>0 begin
  select @res=('Абонент: '+Familiya+' '+Imya+' '+Otchestvo+
  ', приз. накопл. -'+CAST((dom%@pres1) as VARCHAR)+', '+
   'рез.-'+CAST(RESERVED_PRESENTS as VARCHAR)+'.')  
   from Persona where 
     CAST(korpus as varchar(255))=@inum  
  end
 else
  begin
    select @res=('Абонент: '+Familiya+' '+Imya+' '+Otchestvo+
    ', выз. всего-'+CAST(dom as VARCHAR)+', '+
    'рез.-'+CAST(RESERVED_PRESENTS as VARCHAR)+'.')  
   from Persona where 
     CAST(korpus as varchar(255))=@inum
  end

   if @res=NULL begin
       SET @res='Нет данных по абонентскому номеру '
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdOptsStrByOComb]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrdOptsStrByOComb]  (@ocomb bigint)
RETURNS varchar(1000)
AS
BEGIN
	DECLARE @res varchar(1000), @option_name varchar(255), 
		@mod2 int, @counter int;
	DECLARE @CURSOR cursor;
   
	SET @res='';
	SET @counter=0;
   
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT OPTION_NAME   
	FROM ORDER_OPTION  
    ORDER BY ID ASC;
    
    OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @option_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @mod2=@ocomb % 2;
		if(@mod2<>0)
		BEGIN
		    if(@counter>0)
		    BEGIN
				SET @res=@res+' ,';
		    END
			SET @res=@res+@option_name;
			SET @counter=@counter+1;
		END;
		SET @ocomb=@ocomb/2;
		FETCH NEXT FROM @CURSOR INTO @option_name
	END
	CLOSE @CURSOR
    
    SET @res=ISNULL(@res,'');
    if(@res='') 
    BEGIN
		SET @res='Нет опций';
    END 

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdTarifNameByTId]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrdTarifNameByTId]  ( @tid int)
RETURNS varchar(255)
AS
BEGIN
	declare @res varchar(255)
   
	SET @res='Не указан';
   
	SELECT @res=TARIF_NAME   
	FROM ORDER_TARIF WHERE 
    ID=@tid;
    
    SET @res=ISNULL(@res,'Не указан'); 

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetPrevCustComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetPrevCustComment]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @prev int

    select @ccount=COUNT(*) from Zakaz where 
   nomer_zakaza=@cust_num
 
   if (@ccount>0) begin
      select @prev=Predvariteljnyi from Zakaz where 
         nomer_zakaza=@cust_num
      if @prev=1 begin
        select @res='Дата предв. заявки '+CAST(Data_predvariteljnaya as VARCHAR) from Zakaz where 
         nomer_zakaza=@cust_num
      end
      else begin
         SET @res='Заявка не является предварительной'
      end
   end
   else begin
      SET @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetRemoteCustComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetRemoteCustComment]  ( @REMOTE_SET int, 
@REMOTE_INCOURSE int, @REMOTE_ACCEPTED int, @REMOTE_DRNUM int)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255)

   SET @res='НЕТ ДАННЫХ'
   
 
   if (@REMOTE_SET<>0) begin
  
      if (@REMOTE_INCOURSE<>0)  begin
        SET @res='Передана, уведомлен '+CAST( @REMOTE_DRNUM AS CHAR(10))
      end
      else
       begin
        SET @res='Передана, не уведомлен '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end

       if (@REMOTE_ACCEPTED=-1)  begin
        SET @res='ОТКАЗ '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_ACCEPTED=1)  begin
        SET @res='Принял '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-1)  begin
        SET @res='Отмена диспетчером для '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-2)  begin
        SET @res='Отмена водителем '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-3)  begin
        SET @res='Отмена принята водителем '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end

   end
   else begin
     set @res='Не передана'
     if (@REMOTE_ACCEPTED<>0)  begin
        SET @res='Не передана, ОТКАЗ '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSDSumm]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSDSumm]  ( @sd varchar(10))
RETURNS decimal(28,10)
AS
BEGIN
   declare @res decimal(28,10)

   select @res=COUNT(*) from Zakaz where 
   @sd=(CAST(DATEPART(yyyy, nachalo_zakaza_data)as varchar(4))+'.'+
CAST(DATEPART(mm, nachalo_zakaza_data)as varchar(2))+'.'+
CAST(DATEPART(dd, nachalo_zakaza_data)as varchar(2)))

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSectorDrCount]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSectorDrCount]  (@sector_id int)
RETURNS int
AS
BEGIN
   DECLARE @dr_count int;
   SET @dr_count=0;
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE rabotaet_na_sektore=@sector_id and V_rabote=1 and S_klass=0
   AND Pozyvnoi>0 and Zanyat_drugim_disp=0 and Na_pereryve=0;  

   RETURN(@dr_count)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetSendSMSCustComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSendSMSCustComment]  ( @DRIVER_SMS_SEND_STATE int, 
@CLIENT_SMS_SEND_STATE int, @SMS_SEND_DRNUM varchar(50), 
@SMS_SEND_CLPHONE varchar(50))
RETURNS varchar(255)
AS
BEGIN
	declare @dr_res varchar(255), @cl_res varchar(255)

	SET @dr_res=''
	SET @cl_res=''
   
 
	if (@DRIVER_SMS_SEND_STATE=0) begin
		SET @dr_res='-'
	end

	if (@DRIVER_SMS_SEND_STATE=1) begin
		SET @dr_res='ЗАПРОС SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@DRIVER_SMS_SEND_STATE=2) begin
		SET @dr_res='ОТПРАВЛЕНО SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@DRIVER_SMS_SEND_STATE=-1) begin
		SET @dr_res='ОШИБКА SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@CLIENT_SMS_SEND_STATE=0) begin
		SET @cl_res='-'
	end

	if (@CLIENT_SMS_SEND_STATE=1) begin
		SET @cl_res='ЗАПРОС SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	if (@CLIENT_SMS_SEND_STATE=2) begin
		SET @cl_res='ОТПРАВЛЕНО SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	if (@CLIENT_SMS_SEND_STATE=-1) begin
		SET @cl_res='ОШИБКА SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	RETURN(@dr_res+' '+@cl_res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSpecCustComment]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSpecCustComment]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @spec int

    select @ccount=COUNT(*) from Zakaz where 
   nomer_zakaza=@cust_num
 
   if (@ccount>0) begin
       select @spec=Slugebnyi from Zakaz where 
         nomer_zakaza=@cust_num
           if @spec=1 begin
             SET @res='Явл. служебной'
           end
           else begin
              SET @res='Не явл. служебной'
           end
   end
   else begin
      SET @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStartSector]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetStartSector]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN 
   declare @ccount int, @res varchar(255)

    select @ccount=COUNT(*) from Zakaz c, Sektor_raboty s where 
     (c.nomer_zakaza=@cust_num) AND
     (c.adres_sektora=s.BOLD_ID)
 
   if (@ccount>0) begin
       select @res=s.Podskazka_na_sektore from Zakaz c, Sektor_raboty s where 
         (c.nomer_zakaza=@cust_num) AND
         (c.adres_sektora=s.BOLD_ID)
   end
   else begin
      SET @res='Не определён нач. сектор'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetTarifAreaCoords]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetTarifAreaCoords] (@tarif_id int, @torder_num int)
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
	FROM AREA_LINES WHERE tarif_id=@tarif_id;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT order_num, lat, lon  
	FROM AREA_LINES ORDER BY order_num ASC;
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
/****** Object:  UserDefinedFunction [dbo].[GetTarTaxTariff]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetTarTaxTariff]  (@tar_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE  @res decimal(28, 10)
   
   SET @res=0
   
   select @res=ISNULL(ot.TMETER_TARIF,0) from ORDER_TARIF ot
   where ot.ID=@tar_id 
   
   SET @res=ISNULL(@res,0);  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetTarTimeTariff]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetTarTimeTariff]  (@tar_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE  @res decimal(28, 10)
   
   SET @res=0
   
   select @res=ISNULL(ot.TIME_TARIF,0) from ORDER_TARIF ot
   where ot.ID=@tar_id 
   
   SET @res=ISNULL(@res,0);  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetUseDrBCounter]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetUseDrBCounter] ()
RETURNS int
AS
BEGIN
   DECLARE @use_dr_bcounter int
   
   SELECT @use_dr_bcounter=use_dr_balance_counter FROM Objekt_vyborki_otchyotnosti WHERE Tip_objekta='for_drivers';  

   SET @use_dr_bcounter=ISNULL(@use_dr_bcounter,0);

   RETURN(@use_dr_bcounter)
END

GO
/****** Object:  Table [dbo].[AREA_LINES]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA_LINES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lat] [decimal](28, 10) NOT NULL,
	[lon] [decimal](28, 10) NOT NULL,
	[order_num] [int] NOT NULL,
	[tarif_id] [int] NOT NULL,
	[tplan_id] [int] NOT NULL,
	[outher_tarid] [int] NOT NULL,
	[outher_tplid] [int] NOT NULL,
 CONSTRAINT [PK_AREA_LINES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ARHIVED_ORDERS]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARHIVED_ORDERS](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Yavl_pochasovym] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Yavl_poch__4D1564AE]  DEFAULT ((0)),
	[Kolichestvo_chasov] [decimal](28, 10) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Kolichest__4E0988E7]  DEFAULT ((0)),
	[Nachalo_zakaza_data] [datetime] NOT NULL,
	[Konec_zakaza_data] [datetime] NOT NULL,
	[Telefon_klienta] [varchar](255) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Telefon_k__4EFDAD20]  DEFAULT (''),
	[Data_podachi] [datetime] NOT NULL,
	[Zavershyon] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Zavershyo__55AAAAAF]  DEFAULT ((0)),
	[Arhivnyi] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Arhivnyi__569ECEE8]  DEFAULT ((0)),
	[Uslovn_stoim] [decimal](28, 10) NULL CONSTRAINT [DF__ARHIVED_ORDERS__Uslovn_st__5792F321]  DEFAULT ((0)),
	[Adres_vyzova_vvodim] [varchar](255) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Adres_vyz__5887175A]  DEFAULT (''),
	[Predvariteljnyi] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Predvarit__597B3B93]  DEFAULT ((0)),
	[Data_predvariteljnaya] [datetime] NOT NULL,
	[Zadeistv_predvarit] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Zadeistv___5B638405]  DEFAULT ((0)),
	[Data_po_umolchaniyu] [datetime] NOT NULL,
	[Soobsheno_voditelyu] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Soobsheno__5F3414E9]  DEFAULT ((0)),
	[vypolnyaetsya_voditelem] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__vypolnyae__60283922]  DEFAULT ((-1)),
	[otpuskaetsya_dostepcherom] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__otpuskaet__611C5D5B]  DEFAULT ((-1)),
	[ocenivaetsya_cherez] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__ocenivaet__62108194]  DEFAULT ((-1)),
	[adres_sektora] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__adres_sek__6304A5CD]  DEFAULT ((-1)),
	[konechnyi_sektor_raboty] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__konechnyi__63F8CA06]  DEFAULT ((-1)),
	[sektor_voditelya] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__sektor_vo__04659998]  DEFAULT ((-1)),
	[Nomer_zakaza] [decimal](28, 10) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Nomer_zak__0559BDD1]  DEFAULT ((0)),
	[Adres_okonchaniya_zayavki] [varchar](255) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Adres_oko__12B3B8EF]  DEFAULT (''),
	[Pozyvnoi_ustan] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__Pozyvnoi___186C9245]  DEFAULT ((0)),
	[Data_pribytie] [datetime] NULL,
	[Nomer_skidki] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Nomer_ski__4262CC11]  DEFAULT ((0)),
	[Ustan_pribytie] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Ustan_pri__4356F04A]  DEFAULT ((0)),
	[Primechanie] [varchar](255) NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Primechan__4A03EDD9]  DEFAULT (''),
	[Slugebnyi] [int] NOT NULL CONSTRAINT [DF__ARHIVED_ORDERS__Slugebnyi__4AF81212]  DEFAULT ((0)),
	[otpravlyaetsya] [int] NULL CONSTRAINT [DF__ARHIVED_ORDERS__otpravlya__4BEC364B]  DEFAULT ((-1)),
	[Opr_s_obsh_linii] [int] NOT NULL DEFAULT ((0)),
	[Data_na_tochke] [datetime] NULL,
	[REMOTE_SET] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_SET]  DEFAULT ((0)),
	[REMOTE_INCOURSE] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_IN_COURSE]  DEFAULT ((0)),
	[REMOTE_ACCEPTED] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_ACCEPTED]  DEFAULT ((0)),
	[REMOTE_DRNUM] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_DRNUM]  DEFAULT ((0)),
	[DRIVER_SMS_SEND_STATE] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_DRIVER_SMS_SEND_STATE]  DEFAULT ((0)),
	[CLIENT_SMS_SEND_STATE] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_CLIENT_SMS_SEND_STATE]  DEFAULT ((0)),
	[SMS_SEND_DRNUM] [varchar](50) NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_SMS_SEND_DRNUM]  DEFAULT ('пусто'),
	[SMS_SEND_CLPHONE] [varchar](50) NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_SMS_SEND_CLPHONE]  DEFAULT ('пусто'),
	[Priority_counter] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_Priority_counter]  DEFAULT ((0)),
	[Individ_order] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_Individ_order]  DEFAULT ((0)),
	[Individ_sending] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_Individ_sending]  DEFAULT ((0)),
	[SECTOR_ID] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_SECTOR_ID]  DEFAULT ((-1)),
	[REMOTE_SUMM] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_SUMM]  DEFAULT ((0)),
	[REMOTE_SYNC] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_REMOTE_SYNC]  DEFAULT ((0)),
	[LAST_STATUS_TIME] [datetime] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_LAST_STATUS_TIME]  DEFAULT (getdate()),
	[NO_TRANSMITTING] [int] NOT NULL CONSTRAINT [DF_ARHIVED_ORDERS_NO_TRANSMITTING]  DEFAULT ((0)),
 CONSTRAINT [IX_ARHIVED_ORDERS_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Balans]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balans](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Data_vych_balansa] [datetime] NULL,
 CONSTRAINT [IX_Balans_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_CLOCKLOG]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLD_CLOCKLOG](
	[LastTimestamp] [int] NOT NULL,
	[ThisTimestamp] [int] NOT NULL,
	[LastClockTime] [datetime] NOT NULL,
	[ThisClockTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_ID]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLD_ID](
	[BOLD_ID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_LASTCLOCK]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLD_LASTCLOCK](
	[LastTimestamp] [int] NOT NULL,
	[LastClockTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_MEMBERMAPPING]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_MEMBERMAPPING](
	[CLASSNAME] [varchar](60) NOT NULL,
	[MEMBERNAME] [varchar](60) NOT NULL,
	[TABLENAME] [varchar](60) NOT NULL,
	[COLUMNS] [varchar](60) NOT NULL,
	[MAPPERNAME] [varchar](60) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOLD_OBJECT]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLD_OBJECT](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[READ_ONLY] [int] NOT NULL,
 CONSTRAINT [IX_BOLD_OBJECT_XCN] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_R_CLSMAP]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_R_CLSMAP](
	[CLASSNAME] [varchar](60) NOT NULL,
	[TABLENAME] [varchar](60) NOT NULL,
	[CLASSIDREQUIRED] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOLD_TABLES]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_TABLES](
	[TABLENAME] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOLD_TIMESTAMP]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLD_TIMESTAMP](
	[BOLD_TIME_STAMP] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOLD_TYPE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_TYPE](
	[BOLD_TYPE] [smallint] NOT NULL,
	[CLASSNAME] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOLD_W_CLSMAP]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_W_CLSMAP](
	[CLASSNAME] [varchar](60) NOT NULL,
	[TABLENAME] [varchar](60) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOLD_XFILES]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOLD_XFILES](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[EXTERNAL_ID] [varchar](255) NOT NULL,
	[BOLD_TIME_STAMP] [int] NOT NULL,
 CONSTRAINT [IX_BOLD_XFILES_FY5] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEVICE_CODES]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEVICE_CODES](
	[code] [varchar](50) NOT NULL CONSTRAINT [DF_DEVICE_CODES_code]  DEFAULT ('000'),
	[device_num] [int] NOT NULL CONSTRAINT [DF_DEVICE_CODES_device_num]  DEFAULT ((0)),
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DEVICE_CODES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENT_TYPES]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_TYPES](
	[ETYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[CODE] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gruppa_voditelei]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gruppa_voditelei](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[PR_POLICY_ID] [int] NOT NULL CONSTRAINT [DF_Gruppa_voditelei_PR_POLICY_ID]  DEFAULT ((-1)),
 CONSTRAINT [IX_Gruppa_voditKYB] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Klass_poiska]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klass_poiska](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Iskatj_po_klientu] [int] NOT NULL,
	[Imya_klienta] [varchar](255) NOT NULL,
	[Otchestvo_klienta] [varchar](255) NOT NULL,
	[Iskatj_po_klyuch_slovam] [int] NOT NULL,
	[Klyuch_slovo] [varchar](255) NOT NULL,
	[Iskatj_po_date_dob] [int] NOT NULL,
	[S_daty_dob] [datetime] NOT NULL,
	[Po_datu_dob] [datetime] NOT NULL,
	[Seg_data] [datetime] NOT NULL,
	[Nomer_sled_vyp] [int] NOT NULL,
	[God_sled_vyp] [int] NOT NULL,
	[Data_sled_vyp] [datetime] NOT NULL,
	[Iskatj_dvoinikov] [int] NOT NULL,
	[Tek_izdanie_ident] [int] NOT NULL,
 CONSTRAINT [IX_Klass_poiskaJ53] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_operacii]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_operacii](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Naimenovanie_operacii] [varchar](255) NOT NULL DEFAULT (''),
	[Data] [datetime] NOT NULL,
	[Vremya] [varchar](255) NOT NULL DEFAULT (''),
	[ot_deistvii] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Log_operaciiDH3] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mashina]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mashina](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Modelj] [varchar](255) NOT NULL,
	[upravlyaetsya_voditelem] [int] NULL,
 CONSTRAINT [IX_Mashina_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Objekt]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objekt](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
 CONSTRAINT [IX_Objekt_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Objekt_vyborki_otchyotnosti]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Objekt_vyborki_otchyotnosti](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Tip_objekta] [varchar](255) NOT NULL DEFAULT (''),
	[Data_nachala] [datetime] NOT NULL,
	[Data_konca] [datetime] NOT NULL,
	[Procent_otchisleniya] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Filjtr_pozyvnoi] [int] NOT NULL DEFAULT (0),
	[Filjtr_data_nachala] [datetime] NOT NULL,
	[Filjtr_data_konca] [datetime] NOT NULL,
	[Cvet_prinyatyh] [varchar](255) NOT NULL DEFAULT (''),
	[Cvet_nachavshihsya] [varchar](255) NOT NULL DEFAULT (''),
	[Cvet_okonchivshihsya] [varchar](255) NOT NULL DEFAULT (''),
	[Vybratj_poslednie_nesk_dnei] [int] NOT NULL DEFAULT (0),
	[Kol_posl_dnei] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Data_minus_vybir_dni] [datetime] NOT NULL,
	[Nomer_pozyvnoi_filjtr] [int] NOT NULL DEFAULT (0),
	[Cvet_predvarit] [varchar](255) NOT NULL DEFAULT (''),
	[Data_po_umolchaniyu] [datetime] NOT NULL,
	[Avtozapoln_sektorov] [int] NOT NULL DEFAULT (0),
	[Naznach_iz_obsh__spiska] [int] NOT NULL DEFAULT (0),
	[rep_time] [datetime] NULL,
	[Avtozap_konechn_sekt] [int] NOT NULL DEFAULT (0),
	[Avtozap_nach_sektora] [int] NOT NULL DEFAULT (0),
	[Soobsh_o_netochn_sekt_reg] [int] NOT NULL DEFAULT (0),
	[Zapros_konech_sektora] [int] NOT NULL DEFAULT (0),
	[Zapros_nach_sektora] [int] NOT NULL DEFAULT (0),
	[Ispoljz_priz_1] [int] NOT NULL DEFAULT (0),
	[Ispoljz_priz_2] [int] NOT NULL DEFAULT (0),
	[Ispoljz_priz_3] [int] NOT NULL DEFAULT (0),
	[Koeff_prizov_sbavki_1] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Koeff_prizov_sbavki_2] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Koeff_prizov_sbavki_3] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Prizovoe_kolichestvo_1] [int] NOT NULL DEFAULT (0),
	[Prizovoe_kolichestvo_2] [int] NOT NULL DEFAULT (0),
	[Prizovoe_kolichestvo_3] [int] NOT NULL DEFAULT (0),
	[Velichina_priz_sbavki_1] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Velichina_priz_sbavki_2] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Velichina_priz_sbavki_3] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Regim_dispetchera] [int] NOT NULL DEFAULT (0),
	[Estj_nachatye] [int] NOT NULL DEFAULT (0),
	[Estj_otpravlennye] [int] NOT NULL DEFAULT (0),
	[Ne_uchit_zanyat_drug_disp] [int] NOT NULL DEFAULT (0),
	[Kolich_deg_grupp] [int] NOT NULL DEFAULT (0),
	[Per_obnovl_deg] [varchar](255) NOT NULL DEFAULT (''),
	[Per_obnovl_obychn_vod] [varchar](255) NOT NULL DEFAULT (''),
	[Sutki_deg_gruppy] [datetime] NULL,
	[Tek_deg_gruppa] [int] NOT NULL DEFAULT (0),
	[Vr_smeny_deg_grupp] [varchar](255) NOT NULL DEFAULT (''),
	[Kolich_vyd_benzina] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Komment_k_rabote] [varchar](255) NOT NULL DEFAULT (''),
	[Namen_organizacii] [varchar](255) NOT NULL DEFAULT (''),
	[Napravlenie_1] [varchar](255) NOT NULL DEFAULT (''),
	[Napravlenie_2] [varchar](255) NOT NULL DEFAULT (''),
	[Napravlenie_3] [varchar](255) NOT NULL DEFAULT (''),
	[Nom_putevogo_lista] [int] NOT NULL DEFAULT (0),
	[Putev_list_seriya] [varchar](255) NOT NULL DEFAULT (''),
	[BetweenOnEnd] [datetime] NULL,
	[BetweenSetOn] [datetime] NULL,
	[BetweenStartSet] [datetime] NULL,
	[BetweenOnEndColor] [varchar](255) NULL DEFAULT ('16777215'),
	[BetweenSetOnColor] [varchar](255) NULL DEFAULT ('16777215'),
	[BetweenStartSetColor] [varchar](255) NULL DEFAULT ('16777215'),
	[BetweenSetEnd] [datetime] NULL,
	[BetweenSetEndColor] [varchar](255) NULL DEFAULT (''),
	[ViewSetEndLong] [int] NOT NULL DEFAULT (0),
	[cvet_obshepriz] [varchar](255) NOT NULL DEFAULT (''),
	[cvet_so_skidkoi] [varchar](255) NOT NULL DEFAULT (''),
	[obshepriz_chislo] [int] NOT NULL DEFAULT (0),
	[obshepriz_schyotchik] [int] NOT NULL DEFAULT (0),
	[simv_avtom_ustan] [int] NOT NULL DEFAULT (0),
	[schit_okon_posl_kon_sekt] [int] NOT NULL DEFAULT (0),
	[vr_smeny_dispetcherov] [varchar](255) NOT NULL DEFAULT (''),
	[use_bonus3] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_bonus3]  DEFAULT ((0)),
	[use_bonus4] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_bonus4]  DEFAULT ((0)),
	[Prizovoe_kolichestvo_4] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_Prizovoe_kolichestvo_4]  DEFAULT ((0)),
	[DAYLY_SALE] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_DAYLY_SALE]  DEFAULT ((0)),
	[MIN_DEBET] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_MIN_DEBET]  DEFAULT ((0)),
	[view_bonuses] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_view_bonuses]  DEFAULT ((0)),
	[view_ab_bonuses] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_view_ab_bonuses]  DEFAULT ((0)),
	[use_ab_account] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_ab_account]  DEFAULT ((0)),
	[db_version] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_db_version]  DEFAULT ((3)),
	[use_dr_priority] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_dr_priority]  DEFAULT ((0)),
	[dir_dr_autoset] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dir_dr_autoset]  DEFAULT ((0)),
	[auto_order_arhive] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_order_arhive]  DEFAULT ((0)),
	[last_arh_date] [datetime] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_arhived_border_date]  DEFAULT (getdate()),
	[min_days_delta] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_min_arh_day_last_delta]  DEFAULT ((21)),
	[sectors_wbroadcast] [varchar](5000) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_sectors_wbroadcast]  DEFAULT (''),
	[use_sect_wbroadcast] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_sect_wbroadcast]  DEFAULT ((0)),
	[has_sect_wbroadcast] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_has_sect_wbroadcast]  DEFAULT ((0)),
	[sync_busy_accounting] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_sybc_busy_accounting]  DEFAULT ((0)),
	[curr_mob_version] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_curr_mob_version]  DEFAULT ((2102)),
	[min_mob_version] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_min_mob_version]  DEFAULT ((2102)),
	[mandatory_update] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_mand_upd]  DEFAULT ((0)),
	[addit_rem_params] [varchar](500) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_addit_rem_params]  DEFAULT (''),
	[GPS_SRV_ADR] [varchar](255) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_GPS_SRV_ADR]  DEFAULT (''),
	[forders_wbroadcast] [varchar](5000) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_forders_wbroadcast]  DEFAULT (''),
	[use_ford_wbroadcast] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_ford_wbroadcast]  DEFAULT ((0)),
	[has_ford_wbroadcast] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_has_ford_wbroadcast]  DEFAULT ((0)),
	[to_show_fords] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_to_show_fords]  DEFAULT ((0)),
	[clsms_ordground] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_clsms_ordground]  DEFAULT ((0)),
	[send_wait_info] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_send_wait_info]  DEFAULT ((0)),
	[send_prev_wait] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_send_prev_wait]  DEFAULT ((0)),
	[use_dr_balance_counter] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_dr_balance_counter]  DEFAULT ((0)),
	[dont_reset_dr_queue] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_reset_dr_queue]  DEFAULT ((0)),
	[odirect_to_dsect] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_odirect_to_dsect]  DEFAULT ((0)),
	[ftime_tariff] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_ftime_tariff]  DEFAULT ((0)),
	[recalc_on_timeset] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_recalc_on_timeset]  DEFAULT ((0)),
	[drcalc_start_date] [date] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_drcalc_start_date]  DEFAULT (getdate()),
	[order_sort_dr_assign] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_sort_dr_assign]  DEFAULT ((0)),
	[tmeter_tariff] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_tmeter_tariff]  DEFAULT ((0)),
	[taropt_accounting] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_taropt_accounting]  DEFAULT ((0)),
	[autotarif_by_driver] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_autotarif_by_driver]  DEFAULT ((0)),
	[overtar_by_driver] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_overtar_by_driver]  DEFAULT ((0)),
	[autotarif_by_tplan] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_autoconf_by_tarif]  DEFAULT ((0)),
	[day_payment] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_day_payment]  DEFAULT ((0)),
	[manual_day_sale] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_manual_day_sale]  DEFAULT ((0)),
	[dayli_pay_time_offset] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dayli_pay_time_offset]  DEFAULT ((480)),
	[new_wperiod_opercent] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_new_wperiod_opercent]  DEFAULT ((0.2)),
	[check_net_time] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_check_net_time]  DEFAULT ((0)),
	[last_net_time] [datetime] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_last_net_time]  DEFAULT (getdate()),
	[test_phone] [varchar](50) NULL,
	[disp_phone] [varchar](50) NULL,
	[manager_phone] [varchar](50) NULL,
	[call_demon_locsip_name] [varchar](50) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_call_demon_locsip_name]  DEFAULT ('goip_mts343'),
	[call_demon_netsip_name] [varchar](50) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_call_demon_netsip_name]  DEFAULT ('SipNetFIRST'),
	[demon_call_ctx] [varchar](50) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_demon_call_ctx]  DEFAULT ('from-internal'),
	[demon_call_virtext] [varchar](50) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_demon_call_virtext]  DEFAULT ('102'),
	[demon_call_priority] [varchar](20) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_demon_call_priority]  DEFAULT ('1'),
	[demon_call_timeout] [varchar](20) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_demon_call_timeout]  DEFAULT ('30000'),
	[demon_callerid] [varchar](50) NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_demon_callerid]  DEFAULT ('89883138837'),
	[clord_sort_dassign] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_clord_sort_dassign]  DEFAULT ((0)),
	[max_clrereg_cnt] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_max_clrereg_cnt]  DEFAULT ((5)),
	[fix_order_pay_with_daily_pay] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_fix_order_pay_with_daily_pay]  DEFAULT ((1)),
	[clsms_onplaceto] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_clsms_onplaceto]  DEFAULT ((0)),
	[dont_show_auto_count] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_show_auto_count]  DEFAULT ((0)),
	[dont_show_auto_coords] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_show_auto_coords]  DEFAULT ((0)),
	[dont_show_driver_info] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_show_driver_info]  DEFAULT ((0)),
	[auto_bsector_longorders] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsector_longorders]  DEFAULT ((0)),
	[auto_bsectorid_longorders] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsectorid_longorders]  DEFAULT ((-1)),
	[auto_bsector_longtime] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsector_longtime]  DEFAULT ((60)),
	[auto_bsector_onlineorders] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsector_onlineorders]  DEFAULT ((0)),
	[auto_bsectorid_onlineorders] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsectorid_onlineorders]  DEFAULT ((-1)),
	[auto_bsector_onlinetime] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsector_onlinetime]  DEFAULT ((20)),
	[auto_neardriver_onlineorders] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_neardriver_onlineorders]  DEFAULT ((0)),
	[auto_neardriver_onlinetime] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_neardriver_onlinetime]  DEFAULT ((60)),
	[neardriver_online_byord_geocode] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_neardriver_online_byord_geocode]  DEFAULT ((0)),
	[auto_neardriver_allorders] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_neardriver_allorders]  DEFAULT ((0)),
	[auto_neardriver_alltime] [int] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_neardriver_alltime]  DEFAULT ((60)),
	[neardriver_all_byord_geocode] [smallint] NOT NULL CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_neardriver_all_byord_geocode]  DEFAULT ((0)),
 CONSTRAINT [IX_Objekt_vyborBXE] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operaciya]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Operaciya](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Debet] [varchar](255) NOT NULL DEFAULT (''),
	[Kredit] [varchar](255) NOT NULL DEFAULT (''),
	[Osnovanie] [varchar](255) NOT NULL DEFAULT (''),
	[Statjya] [varchar](255) NOT NULL DEFAULT (''),
	[Kommentarii] [varchar](255) NOT NULL DEFAULT (''),
	[Summa_operacii] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Data] [datetime] NULL,
 CONSTRAINT [IX_Operaciya_BO8C4] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_ACCEPTING]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_ACCEPTING](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDER_ID] [int] NOT NULL,
	[DRIVER_ID] [int] NOT NULL,
	[ACCEPT_DATE] [datetime] NOT NULL CONSTRAINT [DF_ORDER_ACCEPTING_ACCEPT_DATE]  DEFAULT (getdate()),
	[COMMENT] [varchar](255) NULL,
	[DRIVER_NUM] [int] NOT NULL CONSTRAINT [DF_ORDER_ACCEPTING_DRIVER_NUM]  DEFAULT ((0)),
	[IS_MANUAL] [int] NOT NULL CONSTRAINT [DF_ORDER_ACCEPTING_IS_MANUAL]  DEFAULT ((0)),
	[WAITING] [int] NOT NULL CONSTRAINT [DF_ORDER_ACCEPTING_WAITING]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_OPTION]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_OPTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OPTION_NAME] [varchar](255) NOT NULL CONSTRAINT [DF_ORDER_OPTION_OPTION_NAME]  DEFAULT ('Без названия'),
	[OSUMM_COEFF] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_OPTION_OSUMM_COEFF]  DEFAULT ((1)),
	[OS_COMPOSED] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_OPTION_OS_COMPOSED]  DEFAULT ((0)),
	[PR_POLICY_ID] [int] NOT NULL CONSTRAINT [DF_ORDER_OPTION_PR_POLICY_ID]  DEFAULT ((-1)),
	[SHORT_NAME] [varchar](20) NOT NULL CONSTRAINT [DF_ORDER_OPTION_SHORT_NAME]  DEFAULT (''),
	[IF_DEF] [smallint] NOT NULL CONSTRAINT [DF_ORDER_OPTION_IF_DEF]  DEFAULT ((0)),
 CONSTRAINT [PK_ORDER_OPTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_PRIORITY]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_PRIORITY](
	[ORDER_ID] [int] NOT NULL,
	[PRIORITY] [int] NOT NULL CONSTRAINT [DF_ORDER_PRIORITY_PRIORITY]  DEFAULT ((0)),
	[INS_DATE] [datetime] NOT NULL CONSTRAINT [DF_ORDER_PRIORITY_INS_DATE]  DEFAULT (getdate()),
	[REMOTE_SET] [int] NOT NULL CONSTRAINT [DF_ORDER_PRIORITY_REMOTE_SET]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER_TARIF]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_TARIF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TARIF_NAME] [varchar](255) NOT NULL CONSTRAINT [DF_ORDER_TARIF_TARIF_NAME]  DEFAULT ('Без названия'),
	[TIME_TARIF] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_TARIF_TIME_TARIF]  DEFAULT ((0)),
	[TMETER_TARIF] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_TARIF_TMETER_TARIF]  DEFAULT ((0)),
	[PR_POLICY_ID] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_PR_POLICY_ID]  DEFAULT ((-1)),
	[SHORT_NAME] [varchar](20) NOT NULL CONSTRAINT [DF_ORDER_TARIF_SHORT_NAME]  DEFAULT (''),
	[IF_DEF] [smallint] NOT NULL CONSTRAINT [DF_ORDER_TARIF_IF_DEF]  DEFAULT ((0)),
	[RATING_SUMM] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_TARIF_RATING_SUMM]  DEFAULT ((0)),
	[IN_RATING] [smallint] NOT NULL CONSTRAINT [DF_ORDER_TARIF_IN_RATING]  DEFAULT ((0)),
	[RATING_PRIORITY] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_RATING_PRIORITY]  DEFAULT ((0)),
	[DISTANCE_PART] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_DISTANCE_PART]  DEFAULT ((0)),
	[DPART_TARIF] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_TARIF_DPART_TARIF]  DEFAULT ((0)),
	[STOP_TARIF] [decimal](28, 10) NOT NULL CONSTRAINT [DF_ORDER_TARIF_STOP_TARIF]  DEFAULT ((0)),
	[DISTANCE_START] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_DISTANCE_START]  DEFAULT ((0)),
	[outher_tarid] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_outher_tarid]  DEFAULT ((-1)),
	[outher_tplid] [int] NOT NULL CONSTRAINT [DF_ORDER_TARIF_outher_tplid]  DEFAULT ((-1)),
 CONSTRAINT [PK_ORDER_TARIF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organizaciya]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organizaciya](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Strana] [varchar](255) NOT NULL DEFAULT ('Россия'),
	[Oblastj] [varchar](255) NOT NULL DEFAULT ('Краснодарский край'),
	[Gorod] [varchar](255) NOT NULL DEFAULT ('Анапа'),
	[BIK] [varchar](255) NOT NULL DEFAULT (''),
	[Naimenovanie] [varchar](255) NOT NULL DEFAULT (''),
	[YavlyaetsyaVlad] [int] NOT NULL DEFAULT (0),
	[Rukovoditelj] [varchar](255) NOT NULL DEFAULT (''),
	[GlBuhgalter] [varchar](255) NOT NULL DEFAULT (''),
	[INN] [varchar](255) NOT NULL DEFAULT (''),
	[Rasch__schet] [varchar](255) NOT NULL DEFAULT (''),
	[KPP] [varchar](255) NOT NULL DEFAULT (''),
	[Tip_organizacii] [varchar](255) NOT NULL DEFAULT (''),
	[Kor_schet] [varchar](255) NOT NULL DEFAULT (''),
	[Naim__banka] [varchar](255) NOT NULL DEFAULT (''),
 CONSTRAINT [IX_OrganizaciyaQT0] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Familiya] [varchar](255) NOT NULL DEFAULT (''),
	[Imya] [varchar](255) NOT NULL DEFAULT (''),
	[Otchestvo] [varchar](255) NOT NULL DEFAULT (''),
	[Ulica] [varchar](255) NOT NULL DEFAULT (''),
	[Dom] [int] NOT NULL DEFAULT (0),
	[Kvartira] [int] NOT NULL DEFAULT (0),
	[Korpus] [int] NOT NULL DEFAULT (0),
	[Mobiljnyi_telefon] [varchar](255) NOT NULL DEFAULT (''),
	[Rabochii_telefon] [varchar](255) NOT NULL DEFAULT (''),
	[Domashnii_telefon] [varchar](255) NOT NULL DEFAULT (''),
	[Elektronnyi_adres] [varchar](255) NOT NULL DEFAULT (''),
	[RESERVED_PRESENTS] [int] NOT NULL CONSTRAINT [DF_Persona_RESERVED_PRICES]  DEFAULT ((0)),
 CONSTRAINT [IX_Persona_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Login] [varchar](255) NOT NULL DEFAULT (''),
	[Parolj] [varchar](255) NOT NULL DEFAULT (''),
	[Prava] [int] NOT NULL DEFAULT (0),
	[Kommentarii] [varchar](255) NOT NULL DEFAULT (''),
	[Razreshitj_vsyo] [int] NOT NULL DEFAULT (0),
	[Razresh_administr] [int] NOT NULL DEFAULT (0),
	[Razresh_nastroiku_raboty] [int] NOT NULL DEFAULT (0),
	[Razreshitj_prosmotr_logov] [int] NOT NULL DEFAULT (0),
	[Razr_rabotu_s_arhivom] [int] NOT NULL DEFAULT (0),
	[Razreshitj_udalenie_vypuskov] [int] NOT NULL DEFAULT (0),
	[Razr_udalenie_razdelov] [int] NOT NULL DEFAULT (0),
	[Razreshitj_udalenie_objyavlenii] [int] NOT NULL DEFAULT (0),
	[Razreshitj_udalenie_ostaljnogo] [int] NOT NULL DEFAULT (0),
	[Razr_prav_redkomen_sprav] [int] NOT NULL DEFAULT (0),
	[Razr_prav_oper_razdelov] [int] NOT NULL DEFAULT (0),
	[chem_uchityvaetsya_dispetcher] [int] NULL DEFAULT ((-1)),
	[Estj_nachatye] [int] NOT NULL DEFAULT (0),
	[Estj_otpravlennye] [int] NOT NULL DEFAULT (0),
	[Ident_dispetchera] [int] NOT NULL DEFAULT (0),
	[Imya_dispetchera] [varchar](255) NOT NULL DEFAULT (''),
	[HasRefreshData] [int] NOT NULL DEFAULT (0),
	[UserEntered] [int] NOT NULL DEFAULT (0),
	[EstjVneshnieManip] [int] NOT NULL DEFAULT (0),
	[Rolj_dispetchera] [int] NOT NULL DEFAULT (0),
	[Vidit_vseh] [int] NOT NULL DEFAULT (0),
	[Prover_vodit] [int] NOT NULL DEFAULT (0),
	[HasRemOrdChanges] [int] NOT NULL CONSTRAINT [DF_Personal_HasRemOrdChanges]  DEFAULT ((0)),
	[HasRemDrChanges] [int] NOT NULL CONSTRAINT [DF_Personal_HasRemDrChanges]  DEFAULT ((0)),
	[ITSRemProgramm] [int] NOT NULL CONSTRAINT [DF_Personal_ITSRemProgramm]  DEFAULT ((0)),
	[LastActivityTime] [datetime] NOT NULL CONSTRAINT [DF_Personal_LastActivityTime]  DEFAULT (getdate()),
 CONSTRAINT [IX_Personal_BOLK0N] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plohie_klienty]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plohie_klienty](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Telefon_klienta] [varchar](255) NOT NULL,
	[Pozyvnoi] [int] NOT NULL,
	[Nachalo] [varchar](255) NOT NULL,
	[Adres_vyzova_vvodim] [varchar](255) NOT NULL,
 CONSTRAINT [IX_Plohie_klienJH8] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRICE_POLICY]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRICE_POLICY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[POLICY_NAME] [varchar](255) NOT NULL CONSTRAINT [DF_PRICE_POLICY_POLICY_NAME]  DEFAULT ('Ценовая политика х'),
	[SHORT_NAME] [varchar](20) NOT NULL CONSTRAINT [DF_PRICE_POLICY_SHORT_NAME]  DEFAULT (''),
	[IF_DEF] [smallint] NOT NULL CONSTRAINT [DF_PRICE_POLICY_IF_DEF]  DEFAULT ((0)),
 CONSTRAINT [PK_PRICE_POLICY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prihod]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prihod](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[sostavlyaet_prihod] [int] NULL DEFAULT ((-1)),
	[Summa_pozicii] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Data_prihoda] [datetime] NULL,
	[Opisanie] [varchar](255) NOT NULL DEFAULT (''),
	[otnos_k_operac_prih] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Prihod_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Raion]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raion](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[predpolagaet_stoimostj] [int] NULL DEFAULT ((-1)),
	[otnositsya_k_sektoru] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Raion_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rashod]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rashod](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[sostavlyaet_rashod] [int] NULL DEFAULT ((-1)),
	[Summa_pozicii] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Data_rashoda] [datetime] NULL,
	[Opisanie] [varchar](255) NOT NULL DEFAULT (''),
	[otnos_k_operacii_rash] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Rashod_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REMOTE_CLIENTS]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REMOTE_CLIENTS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[family] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[last_visit] [datetime] NULL,
	[birthday] [date] NULL,
	[order_count] [int] NOT NULL,
	[discount_code] [varchar](50) NULL,
	[comment] [varchar](255) NULL,
	[trust_require] [smallint] NOT NULL,
	[acc_status] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[lat] [decimal](28, 10) NOT NULL,
	[lon] [decimal](28, 10) NOT NULL,
	[againregscnt] [smallint] NOT NULL,
	[isagainreg] [smallint] NOT NULL,
	[authentificate] [smallint] NOT NULL,
	[active] [smallint] NOT NULL,
	[has_send_data] [smallint] NOT NULL,
	[last_lat] [varchar](50) NULL,
	[last_lon] [varchar](50) NULL,
 CONSTRAINT [PK_REMOTE_CLIENTS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_REMOTE_CLIENTS] UNIQUE NONCLUSTERED 
(
	[phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sektor_raboty]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sektor_raboty](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Nomer_sektora] [int] NOT NULL DEFAULT (0),
	[Oblastj_sverhu] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Oblastj_sleva] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Shirina] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Vysota] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Podskazka_na_sektore] [varchar](1000) NOT NULL DEFAULT (''),
	[Kod_sektora] [varchar](255) NOT NULL DEFAULT (''),
	[ford_count] [int] NOT NULL CONSTRAINT [DF_Sektor_raboty_ford_count]  DEFAULT ((0)),
	[ford_json] [varchar](5000) NOT NULL CONSTRAINT [DF_Sektor_raboty_ford_json]  DEFAULT (''),
	[has_fords] [smallint] NOT NULL CONSTRAINT [DF_Sektor_raboty_has_fords]  DEFAULT ((0)),
	[to_show_fords] [smallint] NOT NULL CONSTRAINT [DF_Sektor_raboty_to_show_fords]  DEFAULT ((0)),
 CONSTRAINT [IX_Sektor_rabotC9J] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shablon_zakaza]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shablon_zakaza](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Nomer_na_ulice] [int] NOT NULL DEFAULT (0),
	[yavlyaetsya_vyzovom_na_ulicu] [int] NULL DEFAULT ((-1)),
	[yavl_vyzovom_na_raion] [int] NULL DEFAULT ((-1)),
	[yavl_vyzovom_na_objekt] [int] NULL DEFAULT ((-1)),
	[imeet_pervuyu_ulicu_ugla] [int] NULL DEFAULT ((-1)),
	[imeet_vtoruyu_ulicu_ugla] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Shablon_zaka0QD] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sootvetstvie_parametrov_zakaza]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sootvetstvie_parametrov_zakaza](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Telefon_klienta] [varchar](255) NOT NULL DEFAULT (''),
	[Adres_vyzova_vvodim] [varchar](255) NOT NULL DEFAULT (''),
	[otnositsya_k_sektoru] [int] NULL DEFAULT ((-1)),
	[Summarn_chislo_vyzovov] [int] NOT NULL DEFAULT (0),
 CONSTRAINT [IX_SootvetstvieYIE] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Spravochnik]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Spravochnik](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Naimenovanie] [varchar](255) NOT NULL DEFAULT (''),
	[Kommentarii] [varchar](255) NOT NULL DEFAULT (''),
	[Identifikator] [int] NOT NULL DEFAULT (0),
 CONSTRAINT [IX_Spravochnik_AS5] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Spravochnik_grupp_vypuskov]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spravochnik_grupp_vypuskov](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
 CONSTRAINT [IX_Spravochnik_9RV] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stoimostj]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stoimostj](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Stoimostj] [decimal](28, 10) NOT NULL,
	[zavisit_ot_raiona] [int] NULL,
 CONSTRAINT [IX_Stoimostj_BOJ16] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TD_DAY_CALENDAR]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_DAY_CALENDAR](
	[CDAY_ITEM_ID] [int] IDENTITY(1,1) NOT NULL,
	[DAY_DATE] [date] NOT NULL,
	[ON_DAY_SUMM_FIXED] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TD_EVENTS]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TD_EVENTS](
	[EVENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CDATE] [datetime] NOT NULL CONSTRAINT [DF_TD_EVENTS_CDATE]  DEFAULT (getdate()),
	[ETYPE_ID] [int] NOT NULL CONSTRAINT [DF_TD_EVENTS_ETYPE_ID]  DEFAULT ((-1)),
	[DRIVER_ID] [int] NOT NULL CONSTRAINT [DF_TD_EVENTS_DRIVER_ID]  DEFAULT ((-1)),
	[ORDER_ID] [int] NOT NULL CONSTRAINT [DF_TD_EVENTS_ORDER_ID]  DEFAULT ((-1)),
	[SECTOR_ID] [int] NOT NULL CONSTRAINT [DF_TD_EVENTS_SECTOR_ID]  DEFAULT ((-1)),
	[CLOSED] [smallint] NOT NULL CONSTRAINT [DF_TD_EVENTS_CLOSED]  DEFAULT ((0)),
	[EDATE] [datetime] NOT NULL CONSTRAINT [DF_TD_EVENTS_EDATE]  DEFAULT (getdate()),
	[DESCRIPT] [varchar](2000) NOT NULL CONSTRAINT [DF_TD_EVENTS_DESCRIPTION]  DEFAULT ('Без описания'),
	[ADRES] [varchar](255) NOT NULL CONSTRAINT [DF_TD_EVENTS_ADRES]  DEFAULT (''),
	[PHONE] [varchar](255) NOT NULL CONSTRAINT [DF_TD_EVENTS_PHONE]  DEFAULT (''),
	[DR_NUM] [int] NOT NULL CONSTRAINT [DF_TD_EVENTS_DR_NUM]  DEFAULT ((-1)),
	[LATITUDE] [varchar](20) NOT NULL CONSTRAINT [DF_TD_EVENTS_LATITUDE]  DEFAULT (''),
	[LONGITUDE] [varchar](20) NOT NULL CONSTRAINT [DF_TD_EVENTS_LONGITUDE]  DEFAULT (''),
	[CONFIRMATED] [smallint] NOT NULL CONSTRAINT [DF_TD_EVENTS_CONFIRMATED]  DEFAULT ((0)),
	[UNAME] [varchar](255) NOT NULL CONSTRAINT [DF_TD_EVENTS_UNAME]  DEFAULT (''),
	[SUMM] [decimal](28, 10) NOT NULL CONSTRAINT [DF_TD_EVENTS_SUMM]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ulica]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulica](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
 CONSTRAINT [IX_Ulica_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vhody_poljz]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vhody_poljz](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Data] [datetime] NULL,
	[Vhod] [int] NOT NULL DEFAULT (0),
	[Vyhod] [int] NOT NULL DEFAULT (0),
	[V_roli_operatora] [int] NOT NULL DEFAULT (0),
	[V_roli_dispetchera] [int] NOT NULL DEFAULT (0),
	[yavl_vhodom_poljz] [int] NULL DEFAULT ((-1)),
 CONSTRAINT [IX_Vhody_poljz_2TB] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Voditelj]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Voditelj](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Pozyvnoi] [int] NOT NULL DEFAULT (0),
	[V_rabote] [int] NOT NULL DEFAULT (0),
	[Na_pereryve] [int] NOT NULL DEFAULT (0),
	[Indeks_ocheryodnosti] [int] NOT NULL DEFAULT (0),
	[Data_po_umolchaniyu] [datetime] NOT NULL,
	[rabotaet_na] [int] NULL DEFAULT ((-1)),
	[chem_uchityvaetsya_voditelj] [int] NULL DEFAULT ((-1)),
	[rabotaet_na_sektore] [int] NULL DEFAULT ((-1)),
	[Nomer_posl_sektora] [int] NOT NULL DEFAULT (0),
	[Zanyat_drugim_disp] [int] NOT NULL DEFAULT (0),
	[Vremya_poslednei_zayavki] [datetime] NULL,
	[Nomer_deg_gruppy] [int] NOT NULL DEFAULT (0),
	[A_klass] [int] NOT NULL DEFAULT (0),
	[B_klass] [int] NOT NULL DEFAULT (0),
	[D_klass] [int] NOT NULL DEFAULT (0),
	[E_klass] [int] NOT NULL DEFAULT (0),
	[Garagn_nomer] [varchar](255) NOT NULL DEFAULT (''),
	[Gos_nomernoi_znak] [varchar](255) NOT NULL DEFAULT (''),
	[Klass_vodit] [varchar](255) NOT NULL DEFAULT (''),
	[Licenzionnaya_kart] [varchar](255) NOT NULL DEFAULT (''),
	[Marka_avtomobilya] [varchar](255) NOT NULL DEFAULT (''),
	[S_klass] [int] NOT NULL DEFAULT (0),
	[Udostoverenie_nom] [varchar](255) NOT NULL DEFAULT (''),
	[Izm_haraktrist] [int] NOT NULL DEFAULT (0),
	[cvet_avto] [varchar](255) NOT NULL DEFAULT (''),
	[tip_nomer_racii] [varchar](255) NOT NULL DEFAULT (''),
	[otnositsya_k_gruppe] [int] NULL DEFAULT ((-1)),
	[Individ_procent] [decimal](28, 10) NOT NULL DEFAULT (0),
	[Priority] [int] NOT NULL CONSTRAINT [DF_Voditelj_Priority]  DEFAULT ((0)),
	[REMOTE_LOGIN] [varchar](50) NULL CONSTRAINT [DF_Voditelj_REMOTE_LOGIN]  DEFAULT (''),
	[REMOTE_PASSWORD] [varchar](50) NULL CONSTRAINT [DF_Voditelj_REMOTE_PASSWORD]  DEFAULT (''),
	[REMOTE_STATUS] [int] NOT NULL CONSTRAINT [DF_Voditelj_REMOTE_STATUS]  DEFAULT ((0)),
	[ACCEPT_RSTATUS] [int] NOT NULL CONSTRAINT [DF_Voditelj_ACCEPT_RSTATUS]  DEFAULT ((0)),
	[STAT_ORDER_ID] [int] NOT NULL CONSTRAINT [DF_Voditelj_STAT_ORDER_ID]  DEFAULT ((-1)),
	[REMOTE_SYNC] [int] NOT NULL CONSTRAINT [DF_Voditelj_REMOTE_SYNC]  DEFAULT ((0)),
	[LAST_STATUS_TIME] [datetime] NOT NULL CONSTRAINT [DF_Voditelj_LAST_STATUS_TIME]  DEFAULT (getdate()),
	[ITS_REMOTE_CLIENT] [int] NOT NULL CONSTRAINT [DF_Voditelj_ITS_REMOTE_CLIENT]  DEFAULT ((0)),
	[SYNC_STATUS] [int] NOT NULL CONSTRAINT [DF_Voditelj_SYNC_STATUS]  DEFAULT ((0)),
	[DR_SUMM] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Voditelj_DR_SUMM]  DEFAULT ((0)),
	[SEND_WBROADCAST] [int] NOT NULL CONSTRAINT [DF_Voditelj_SEND_WBROADCAST]  DEFAULT ((0)),
	[EN_MOVING] [int] NOT NULL CONSTRAINT [DF_Voditelj_EN_MOVING]  DEFAULT ((0)),
	[USE_GPS] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_USE_GPS]  DEFAULT ((0)),
	[GTSS_ACCT_ID] [varchar](50) NOT NULL CONSTRAINT [DF_Voditelj_GTSS_ACCT_ID]  DEFAULT ('demo'),
	[GTSS_DEV_ID] [varchar](50) NOT NULL CONSTRAINT [DF_Voditelj_GTSS_DEV_ID]  DEFAULT ('demo'),
	[has_sect_fords] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_has_sect_fords]  DEFAULT ((0)),
	[has_forall_fords] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_has_forall_fords]  DEFAULT ((0)),
	[DRIVER_BALANCE] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Voditelj_DRIVER_BALANCE]  DEFAULT ((0)),
	[use_dyn_balance] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_use_dyn_balance]  DEFAULT ((0)),
	[has_active_events] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_has_active_events]  DEFAULT ((0)),
	[rlock_on_calc_debt] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_rlock_on_calc_debt]  DEFAULT ((0)),
	[WAS_REMOTE_CLIENT] [int] NOT NULL CONSTRAINT [DF_Voditelj_WAS_REMOTE_CLIENT]  DEFAULT ((0)),
	[ftime_tariff] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Voditelj_ftime_tariff]  DEFAULT ((0)),
	[tmeter_tariff] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Voditelj_tmeter_tariff]  DEFAULT ((0)),
	[GPSC_REQU_FLAG] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_GPSC_REQU_FLAG]  DEFAULT ((0)),
	[use_tmeter] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_use_tmeter]  DEFAULT ((-1)),
	[use_nlocserv] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_use_nlocserv]  DEFAULT ((-1)),
	[use_bloc] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_use_bloc]  DEFAULT ((-1)),
	[PR_POLICY_ID] [int] NOT NULL CONSTRAINT [DF_Voditelj_PR_POLICY_ID]  DEFAULT ((-1)),
	[day_payment] [decimal](28, 10) NOT NULL CONSTRAINT [DF_Voditelj_day_payment]  DEFAULT ((0)),
	[manual_day_sale] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_manual_day_sale]  DEFAULT ((0)),
	[daily_paym_status] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_daily_paym_status]  DEFAULT ((0)),
	[online_set_uname] [varchar](255) NOT NULL CONSTRAINT [DF_Voditelj_last_op_uname]  DEFAULT (''),
	[paym_check_date] [datetime] NOT NULL CONSTRAINT [DF_Voditelj_paym_check_date_1]  DEFAULT (getdate()),
	[require_gps] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_require_gps]  DEFAULT ((0)),
	[avar1] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar1]  DEFAULT ((0)),
	[avar2] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar2]  DEFAULT ((0)),
	[avar3] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar3]  DEFAULT ((0)),
	[avar4] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar4]  DEFAULT ((0)),
	[avar5] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar5]  DEFAULT ((0)),
	[avar6] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar6]  DEFAULT ((0)),
	[avar7] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar7]  DEFAULT ((0)),
	[avar8] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar8]  DEFAULT ((0)),
	[avar9] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar9]  DEFAULT ((0)),
	[avar10] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_avar10]  DEFAULT ((0)),
	[addit_rem_params] [varchar](500) NOT NULL CONSTRAINT [DF_Voditelj_addit_rem_params]  DEFAULT (''),
	[fix_order_pay_with_daily_pay] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_fix_order_pay_with_daily_pay]  DEFAULT ((1)),
	[last_lat] [varchar](50) NULL,
	[last_lon] [varchar](50) NULL,
	[last_speed] [varchar](50) NULL,
	[last_cctime] [datetime] NOT NULL CONSTRAINT [DF_Voditelj_last_cctime]  DEFAULT (getdate()),
	[its_manager] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_its_manager]  DEFAULT ((0)),
 CONSTRAINT [IX_Voditelj_BOLHTI] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vyruchka_ot_voditelya]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vyruchka_ot_voditelya](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Summa] [decimal](28, 10) NOT NULL,
	[kem_prinositsya] [int] NULL,
	[Data_postupleniya] [datetime] NULL,
	[Pozyvnoi] [int] NOT NULL,
	[ITS_DAYLY] [smallint] NOT NULL,
 CONSTRAINT [IX_Vyruchka_ot_7UB] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zakaz]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zakaz](
	[BOLD_ID] [int] NOT NULL,
	[BOLD_TYPE] [smallint] NOT NULL,
	[Yavl_pochasovym] [int] NOT NULL,
	[Kolichestvo_chasov] [decimal](28, 10) NOT NULL,
	[Nachalo_zakaza_data] [datetime] NOT NULL,
	[Konec_zakaza_data] [datetime] NOT NULL,
	[Telefon_klienta] [varchar](255) NOT NULL,
	[Data_podachi] [datetime] NOT NULL,
	[Zavershyon] [int] NOT NULL,
	[Arhivnyi] [int] NOT NULL,
	[Uslovn_stoim] [decimal](28, 10) NULL,
	[Adres_vyzova_vvodim] [varchar](255) NOT NULL,
	[Predvariteljnyi] [int] NOT NULL,
	[Data_predvariteljnaya] [datetime] NOT NULL,
	[Zadeistv_predvarit] [int] NOT NULL,
	[Data_po_umolchaniyu] [datetime] NOT NULL,
	[Soobsheno_voditelyu] [int] NOT NULL,
	[vypolnyaetsya_voditelem] [int] NULL,
	[otpuskaetsya_dostepcherom] [int] NULL,
	[ocenivaetsya_cherez] [int] NULL,
	[adres_sektora] [int] NULL,
	[konechnyi_sektor_raboty] [int] NULL,
	[sektor_voditelya] [int] NULL,
	[Nomer_zakaza] [decimal](28, 10) NOT NULL,
	[Adres_okonchaniya_zayavki] [varchar](255) NOT NULL,
	[Pozyvnoi_ustan] [int] NULL,
	[Data_pribytie] [datetime] NULL,
	[Nomer_skidki] [int] NOT NULL,
	[Ustan_pribytie] [int] NOT NULL,
	[Primechanie] [varchar](255) NOT NULL,
	[Slugebnyi] [int] NOT NULL,
	[otpravlyaetsya] [int] NULL,
	[Opr_s_obsh_linii] [int] NOT NULL,
	[Data_na_tochke] [datetime] NULL,
	[REMOTE_SET] [int] NOT NULL,
	[REMOTE_INCOURSE] [int] NOT NULL,
	[REMOTE_ACCEPTED] [int] NOT NULL,
	[REMOTE_DRNUM] [int] NOT NULL,
	[DRIVER_SMS_SEND_STATE] [int] NOT NULL,
	[CLIENT_SMS_SEND_STATE] [int] NOT NULL,
	[SMS_SEND_DRNUM] [varchar](50) NOT NULL,
	[SMS_SEND_CLPHONE] [varchar](50) NOT NULL,
	[Priority_counter] [int] NOT NULL,
	[Individ_order] [int] NOT NULL,
	[Individ_sending] [int] NOT NULL,
	[SECTOR_ID] [int] NOT NULL,
	[REMOTE_SUMM] [decimal](28, 10) NOT NULL,
	[REMOTE_SYNC] [int] NOT NULL,
	[LAST_STATUS_TIME] [datetime] NOT NULL,
	[NO_TRANSMITTING] [int] NOT NULL,
	[RESTORED] [smallint] NOT NULL,
	[AUTO_ARHIVED] [smallint] NOT NULL,
	[WAITING] [int] NOT NULL,
	[direct_sect_id] [int] NOT NULL,
	[fixed_time] [int] NOT NULL,
	[fixed_summ] [decimal](28, 10) NOT NULL,
	[on_place] [smallint] NOT NULL,
	[dr_assign_date] [datetime] NULL,
	[tm_distance] [int] NOT NULL,
	[tm_summ] [decimal](28, 10) NOT NULL,
	[TARIFF_ID] [int] NOT NULL,
	[OPT_COMB] [bigint] NOT NULL,
	[OPT_COMB_STR] [varchar](255) NOT NULL,
	[PR_POLICY_ID] [int] NOT NULL,
	[call_it] [smallint] NOT NULL,
	[rclient_id] [int] NOT NULL,
	[rclient_status] [int] NOT NULL,
	[clsync] [smallint] NOT NULL,
	[tmsale] [decimal](28, 10) NOT NULL,
	[tmhistory] [varchar](1000) NULL,
	[status_accumulate] [varchar](2000) NOT NULL,
	[rclient_lat] [varchar](50) NULL,
	[rclient_lon] [varchar](50) NULL,
	[alarmed] [smallint] NOT NULL,
 CONSTRAINT [IX_Zakaz_BOLD_ID] PRIMARY KEY CLUSTERED 
(
	[BOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ActiveDriversState]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ActiveDriversState]
AS
SELECT     DR_SUMM, BOLD_ID, Pozyvnoi, V_rabote, Na_pereryve, rabotaet_na_sektore, Nomer_posl_sektora, Zanyat_drugim_disp, Vremya_poslednei_zayavki, REMOTE_STATUS, ITS_REMOTE_CLIENT, 
                      LAST_STATUS_TIME, has_active_events, use_dyn_balance, DRIVER_BALANCE
FROM         dbo.Voditelj AS dr
WHERE     (Pozyvnoi > 0)

GO
/****** Object:  View [dbo].[ArhToDelOrders]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ArhToDelOrders]
AS
SELECT     TOP (300) BOLD_ID, Nachalo_zakaza_data
FROM         dbo.Zakaz
WHERE     (Zavershyon = 1) AND (AUTO_ARHIVED = 1)
ORDER BY Nachalo_zakaza_data

GO
/****** Object:  View [dbo].[CallItOrders]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CallItOrders]
AS
SELECT     BOLD_ID, Nomer_zakaza, Telefon_klienta, Adres_vyzova_vvodim, Pozyvnoi_ustan, dbo.GetDevNumByCode({ fn IFNULL(Telefon_klienta, '') }) AS dev_num
FROM         dbo.Zakaz
WHERE     (Arhivnyi = 0) AND (Zavershyon = 0) AND (call_it = 1) AND (ABS(DATEDIFF(minute, Konec_zakaza_data, GETDATE())) < 10) AND (Telefon_klienta <> '')

GO
/****** Object:  View [dbo].[DRIVER_RATINGS]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DRIVER_RATINGS]
AS
SELECT     TOP (100) PERCENT SUM(dbo.GetDrLastHoursRateOrdCount(dbo.Voditelj.BOLD_ID, - 12, dbo.ORDER_TARIF.RATING_SUMM) * (1 + 0.5 * dbo.ORDER_TARIF.RATING_PRIORITY)) AS DRIVER_RATING,
                       dbo.Voditelj.Pozyvnoi, dbo.Voditelj.Vremya_poslednei_zayavki
FROM         dbo.ORDER_TARIF CROSS JOIN
                      dbo.Voditelj
WHERE     (dbo.ORDER_TARIF.IN_RATING = 1) AND (dbo.Voditelj.V_rabote = 1)
GROUP BY dbo.Voditelj.Pozyvnoi, dbo.Voditelj.Vremya_poslednei_zayavki

GO
/****** Object:  View [dbo].[DriversActivityIntervals]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DriversActivityIntervals]
AS
SELECT TOP (100) PERCENT Pozyvnoi_ustan, Nachalo_zakaza_data AS StartDate, dbo.GetNearestBeginEndDate(Pozyvnoi_ustan, Nachalo_zakaza_data) 
               AS NearEndDate, DATEDIFF(minute, Nachalo_zakaza_data, dbo.GetNearestBeginEndDate(Pozyvnoi_ustan, Nachalo_zakaza_data)) AS MinuteDelta
FROM  dbo.Zakaz AS ord
WHERE (Telefon_klienta = 'Фиктивная') AND (Adres_vyzova_vvodim = 'Постановка на линию')
ORDER BY StartDate

GO
/****** Object:  View [dbo].[EVENTS_VIEW]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EVENTS_VIEW]
AS
SELECT     tde.EVENT_ID, tde.CDATE, tde.ETYPE_ID, tde.DRIVER_ID, tde.ORDER_ID, tde.SECTOR_ID, tde.CLOSED, tde.EDATE, tde.DESCRIPT, tde.ADRES, tde.PHONE, tde.DR_NUM, et.CODE, et.NAME, 
                      dr.Pozyvnoi, tde.LATITUDE, tde.LONGITUDE, tde.CONFIRMATED, tde.UNAME
FROM         dbo.TD_EVENTS AS tde LEFT OUTER JOIN
                      dbo.EVENT_TYPES AS et ON tde.ETYPE_ID = et.ETYPE_ID LEFT OUTER JOIN
                      dbo.Sektor_raboty AS sr ON tde.SECTOR_ID = sr.BOLD_ID LEFT OUTER JOIN
                      dbo.Voditelj AS dr ON tde.DRIVER_ID = dr.BOLD_ID

GO
/****** Object:  View [dbo].[LastWeekOrdersView]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[LastWeekOrdersView]
AS
SELECT     BOLD_ID, BOLD_TYPE, Yavl_pochasovym, Kolichestvo_chasov, Nachalo_zakaza_data, Konec_zakaza_data, Telefon_klienta, Data_podachi, Zavershyon, Arhivnyi, 
                      Uslovn_stoim, Adres_vyzova_vvodim, Predvariteljnyi, Data_predvariteljnaya, Zadeistv_predvarit, Data_po_umolchaniyu, Soobsheno_voditelyu, 
                      vypolnyaetsya_voditelem, otpuskaetsya_dostepcherom, ocenivaetsya_cherez, adres_sektora, konechnyi_sektor_raboty, sektor_voditelya, Nomer_zakaza, 
                      Adres_okonchaniya_zayavki, Pozyvnoi_ustan, Data_pribytie, Nomer_skidki, Ustan_pribytie, Primechanie, Slugebnyi, otpravlyaetsya, Opr_s_obsh_linii, 
                      Data_na_tochke
FROM         dbo.Zakaz
WHERE     (Nachalo_zakaza_data >= GETDATE() - 7)

GO
/****** Object:  View [dbo].[RemoteOrders]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RemoteOrders]
AS
SELECT     BOLD_ID, Telefon_klienta, Adres_vyzova_vvodim, 
Pozyvnoi_ustan, REMOTE_SET, REMOTE_INCOURSE, REMOTE_ACCEPTED, 
REMOTE_DRNUM 
FROM         dbo.Zakaz
WHERE  (REMOTE_SET>=-1) AND (REMOTE_SET<=1)
GO
/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SMSSendOrders]
AS
SELECT     BOLD_ID, Nomer_zakaza, Telefon_klienta, Adres_vyzova_vvodim, Pozyvnoi_ustan, DRIVER_SMS_SEND_STATE, CLIENT_SMS_SEND_STATE, SMS_SEND_DRNUM, SMS_SEND_CLPHONE, 
                      dbo.GetCustClientInfo(BOLD_ID, Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, Uslovn_stoim, WAITING, dbo.GetOrderAMICommand(BOLD_ID) AS AMI_COMMAND
FROM         dbo.Zakaz
WHERE     (DRIVER_SMS_SEND_STATE = 1) AND (Arhivnyi = 0) AND (Zavershyon = 0) OR
                      (Arhivnyi = 0) AND (Zavershyon = 0) AND (CLIENT_SMS_SEND_STATE = 1) OR
                      (Arhivnyi = 0) AND (CLIENT_SMS_SEND_STATE = 3) AND (ABS(DATEDIFF(minute, Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(Uslovn_stoim, 0) > 0)

GO
/****** Object:  View [dbo].[ToArhOrders]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ToArhOrders]
AS
SELECT     TOP (300) BOLD_ID, Nachalo_zakaza_data
FROM         dbo.Zakaz
WHERE     (Zavershyon = 1) AND (AUTO_ARHIVED = 0)
ORDER BY Nachalo_zakaza_data

GO
/****** Object:  Index [IX_Balans_BOLD_5VC]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Balans_BOLD_5VC] ON [dbo].[Balans]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BOLD_OBJECT_R0Z]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_BOLD_OBJECT_R0Z] ON [dbo].[BOLD_OBJECT]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Gruppa_vodit3XQ]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Gruppa_vodit3XQ] ON [dbo].[Gruppa_voditelei]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Klass_poiska10X]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Klass_poiska10X] ON [dbo].[Klass_poiska]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Log_operaciiN0S]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Log_operaciiN0S] ON [dbo].[Log_operacii]
(
	[ot_deistvii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Log_operaciiYLO]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Log_operaciiYLO] ON [dbo].[Log_operacii]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Mashina_BOLDB8J]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Mashina_BOLDB8J] ON [dbo].[Mashina]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Mashina_upraJVJ]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Mashina_upraJVJ] ON [dbo].[Mashina]
(
	[upravlyaetsya_voditelem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Objekt_BOLD_S36]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Objekt_BOLD_S36] ON [dbo].[Objekt]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Objekt_vybor0UD]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Objekt_vybor0UD] ON [dbo].[Objekt_vyborki_otchyotnosti]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Operaciya_BOFJF]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Operaciya_BOFJF] ON [dbo].[Operaciya]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrganizaciyaRFE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_OrganizaciyaRFE] ON [dbo].[Organizaciya]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Persona_BOLDMAY]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Persona_BOLDMAY] ON [dbo].[Persona]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personal_BOL3J9]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Personal_BOL3J9] ON [dbo].[Personal]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personal_cheUDE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Personal_cheUDE] ON [dbo].[Personal]
(
	[chem_uchityvaetsya_dispetcher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Plohie_klienFP4]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Plohie_klienFP4] ON [dbo].[Plohie_klienty]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prihod_BOLD_QS5]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Prihod_BOLD_QS5] ON [dbo].[Prihod]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prihod_otnos7JF]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Prihod_otnos7JF] ON [dbo].[Prihod]
(
	[otnos_k_operac_prih] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prihod_sostaSMI]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Prihod_sostaSMI] ON [dbo].[Prihod]
(
	[sostavlyaet_prihod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Raion_BOLD_TYPE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Raion_BOLD_TYPE] ON [dbo].[Raion]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Raion_otnosiFEO]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Raion_otnosiFEO] ON [dbo].[Raion]
(
	[otnositsya_k_sektoru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Raion_predpoRV2]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Raion_predpoRV2] ON [dbo].[Raion]
(
	[predpolagaet_stoimostj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rashod_BOLD_4_6]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Rashod_BOLD_4_6] ON [dbo].[Rashod]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rashod_otnos4_K]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Rashod_otnos4_K] ON [dbo].[Rashod]
(
	[otnos_k_operacii_rash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rashod_sosta5OC]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Rashod_sosta5OC] ON [dbo].[Rashod]
(
	[sostavlyaet_rashod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sektor_rabotI40]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Sektor_rabotI40] ON [dbo].[Sektor_raboty]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zaka3QG]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zaka3QG] ON [dbo].[Shablon_zakaza]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zakaB0Y]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zakaB0Y] ON [dbo].[Shablon_zakaza]
(
	[yavlyaetsya_vyzovom_na_ulicu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zakaES5]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zakaES5] ON [dbo].[Shablon_zakaza]
(
	[yavl_vyzovom_na_objekt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zakaJEG]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zakaJEG] ON [dbo].[Shablon_zakaza]
(
	[yavl_vyzovom_na_raion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zakaP1D]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zakaP1D] ON [dbo].[Shablon_zakaza]
(
	[imeet_vtoruyu_ulicu_ugla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shablon_zakaXQ2]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Shablon_zakaXQ2] ON [dbo].[Shablon_zakaza]
(
	[imeet_pervuyu_ulicu_ugla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sootvetstvie8YA]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Sootvetstvie8YA] ON [dbo].[Sootvetstvie_parametrov_zakaza]
(
	[otnositsya_k_sektoru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SootvetstvieV7P]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_SootvetstvieV7P] ON [dbo].[Sootvetstvie_parametrov_zakaza]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Spravochnik_AXL]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Spravochnik_AXL] ON [dbo].[Spravochnik]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Spravochnik_69M]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Spravochnik_69M] ON [dbo].[Spravochnik_grupp_vypuskov]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Stoimostj_BOIT3]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Stoimostj_BOIT3] ON [dbo].[Stoimostj]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Stoimostj_zaYDR]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Stoimostj_zaYDR] ON [dbo].[Stoimostj]
(
	[zavisit_ot_raiona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ulica_BOLD_TYPE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Ulica_BOLD_TYPE] ON [dbo].[Ulica]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vhody_poljz__QX]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Vhody_poljz__QX] ON [dbo].[Vhody_poljz]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vhody_poljz_HXS]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Vhody_poljz_HXS] ON [dbo].[Vhody_poljz]
(
	[yavl_vhodom_poljz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Voditelj_BOLS64]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Voditelj_BOLS64] ON [dbo].[Voditelj]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Voditelj_cheCBD]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Voditelj_cheCBD] ON [dbo].[Voditelj]
(
	[chem_uchityvaetsya_voditelj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Voditelj_otnI3F]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Voditelj_otnI3F] ON [dbo].[Voditelj]
(
	[otnositsya_k_gruppe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Voditelj_rabEAR]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Voditelj_rabEAR] ON [dbo].[Voditelj]
(
	[rabotaet_na] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Voditelj_rabGH0]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Voditelj_rabGH0] ON [dbo].[Voditelj]
(
	[rabotaet_na_sektore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vyruchka_ot_6AH]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Vyruchka_ot_6AH] ON [dbo].[Vyruchka_ot_voditelya]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vyruchka_ot_L0J]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Vyruchka_ot_L0J] ON [dbo].[Vyruchka_ot_voditelya]
(
	[kem_prinositsya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_adres_NME]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_adres_NME] ON [dbo].[Zakaz]
(
	[adres_sektora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_BOLD_TYPE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_BOLD_TYPE] ON [dbo].[Zakaz]
(
	[BOLD_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_konechBYE]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_konechBYE] ON [dbo].[Zakaz]
(
	[konechnyi_sektor_raboty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_ocenivM7O]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_ocenivM7O] ON [dbo].[Zakaz]
(
	[ocenivaetsya_cherez] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_otprav5HL]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_otprav5HL] ON [dbo].[Zakaz]
(
	[otpravlyaetsya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_otpuskVMG]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_otpuskVMG] ON [dbo].[Zakaz]
(
	[otpuskaetsya_dostepcherom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_sektor80M]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_sektor80M] ON [dbo].[Zakaz]
(
	[sektor_voditelya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zakaz_vypoln50T]    Script Date: 17.12.2016 12:13:39 ******/
CREATE NONCLUSTERED INDEX [IX_Zakaz_vypoln50T] ON [dbo].[Zakaz]
(
	[vypolnyaetsya_voditelem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_lat]  DEFAULT ((0)) FOR [lat]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_lon]  DEFAULT ((0)) FOR [lon]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_Table_1_order]  DEFAULT ((0)) FOR [order_num]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_tarif_id]  DEFAULT ((-1)) FOR [tarif_id]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_tplan_id]  DEFAULT ((-1)) FOR [tplan_id]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_outher_tarid]  DEFAULT ((-1)) FOR [outher_tarid]
GO
ALTER TABLE [dbo].[AREA_LINES] ADD  CONSTRAINT [DF_AREA_LINES_outher_tplid]  DEFAULT ((-1)) FOR [outher_tplid]
GO
ALTER TABLE [dbo].[EVENT_TYPES] ADD  CONSTRAINT [DF_EVENT_TYPES_NAME]  DEFAULT ('Тип события без имени') FOR [NAME]
GO
ALTER TABLE [dbo].[EVENT_TYPES] ADD  CONSTRAINT [DF_EVENT_TYPES_CODE]  DEFAULT ((0)) FOR [CODE]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Iskatj_po_klientu]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT ('') FOR [Imya_klienta]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT ('') FOR [Otchestvo_klienta]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Iskatj_po_klyuch_slovam]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT ('') FOR [Klyuch_slovo]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Iskatj_po_date_dob]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Nomer_sled_vyp]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [God_sled_vyp]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Iskatj_dvoinikov]
GO
ALTER TABLE [dbo].[Klass_poiska] ADD  DEFAULT (0) FOR [Tek_izdanie_ident]
GO
ALTER TABLE [dbo].[Mashina] ADD  DEFAULT ('') FOR [Modelj]
GO
ALTER TABLE [dbo].[Mashina] ADD  DEFAULT ((-1)) FOR [upravlyaetsya_voditelem]
GO
ALTER TABLE [dbo].[Plohie_klienty] ADD  DEFAULT ('') FOR [Telefon_klienta]
GO
ALTER TABLE [dbo].[Plohie_klienty] ADD  DEFAULT (0) FOR [Pozyvnoi]
GO
ALTER TABLE [dbo].[Plohie_klienty] ADD  DEFAULT ('') FOR [Nachalo]
GO
ALTER TABLE [dbo].[Plohie_klienty] ADD  DEFAULT ('') FOR [Adres_vyzova_vvodim]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_phone]  DEFAULT ('') FOR [phone]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_name]  DEFAULT ('Без имени') FOR [name]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_order_count]  DEFAULT ((0)) FOR [order_count]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_trust_require]  DEFAULT ((1)) FOR [trust_require]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_acc_status]  DEFAULT ((0)) FOR [acc_status]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_group_id]  DEFAULT ((-1)) FOR [group_id]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_lat]  DEFAULT ((0)) FOR [lat]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_lon]  DEFAULT ((0)) FOR [lon]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_againregs]  DEFAULT ((0)) FOR [againregscnt]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_isagainreg]  DEFAULT ((0)) FOR [isagainreg]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_authentificate]  DEFAULT ((0)) FOR [authentificate]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_active]  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[REMOTE_CLIENTS] ADD  CONSTRAINT [DF_REMOTE_CLIENTS_has_send_data]  DEFAULT ((0)) FOR [has_send_data]
GO
ALTER TABLE [dbo].[Stoimostj] ADD  DEFAULT (0) FOR [Stoimostj]
GO
ALTER TABLE [dbo].[Stoimostj] ADD  DEFAULT ((-1)) FOR [zavisit_ot_raiona]
GO
ALTER TABLE [dbo].[TD_DAY_CALENDAR] ADD  CONSTRAINT [DF_TD_DAY_CALENDAR_DAY_DATE]  DEFAULT (getdate()) FOR [DAY_DATE]
GO
ALTER TABLE [dbo].[TD_DAY_CALENDAR] ADD  CONSTRAINT [DF_TD_DAY_CALENDAR_ON_DAY_SUMM_FIXED]  DEFAULT ((0)) FOR [ON_DAY_SUMM_FIXED]
GO
ALTER TABLE [dbo].[Vyruchka_ot_voditelya] ADD  DEFAULT (0) FOR [Summa]
GO
ALTER TABLE [dbo].[Vyruchka_ot_voditelya] ADD  DEFAULT ((-1)) FOR [kem_prinositsya]
GO
ALTER TABLE [dbo].[Vyruchka_ot_voditelya] ADD  CONSTRAINT [DF_Vyruchka_ot_voditelya_Pozyvnoi]  DEFAULT ((0)) FOR [Pozyvnoi]
GO
ALTER TABLE [dbo].[Vyruchka_ot_voditelya] ADD  CONSTRAINT [DF_Vyruchka_ot_voditelya_ITS_DAYLY]  DEFAULT ((0)) FOR [ITS_DAYLY]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Yavl_poch__4D1564AE]  DEFAULT (0) FOR [Yavl_pochasovym]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Kolichest__4E0988E7]  DEFAULT (0) FOR [Kolichestvo_chasov]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Telefon_k__4EFDAD20]  DEFAULT ('') FOR [Telefon_klienta]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Zavershyo__55AAAAAF]  DEFAULT (0) FOR [Zavershyon]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Arhivnyi__569ECEE8]  DEFAULT (0) FOR [Arhivnyi]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Uslovn_st__5792F321]  DEFAULT (0) FOR [Uslovn_stoim]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Adres_vyz__5887175A]  DEFAULT ('') FOR [Adres_vyzova_vvodim]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Predvarit__597B3B93]  DEFAULT (0) FOR [Predvariteljnyi]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Zadeistv___5B638405]  DEFAULT (0) FOR [Zadeistv_predvarit]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Soobsheno__5F3414E9]  DEFAULT (0) FOR [Soobsheno_voditelyu]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__vypolnyae__60283922]  DEFAULT ((-1)) FOR [vypolnyaetsya_voditelem]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__otpuskaet__611C5D5B]  DEFAULT ((-1)) FOR [otpuskaetsya_dostepcherom]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__ocenivaet__62108194]  DEFAULT ((-1)) FOR [ocenivaetsya_cherez]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__adres_sek__6304A5CD]  DEFAULT ((-1)) FOR [adres_sektora]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__konechnyi__63F8CA06]  DEFAULT ((-1)) FOR [konechnyi_sektor_raboty]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__sektor_vo__04659998]  DEFAULT ((-1)) FOR [sektor_voditelya]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Nomer_zak__0559BDD1]  DEFAULT (0) FOR [Nomer_zakaza]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Adres_oko__12B3B8EF]  DEFAULT ('') FOR [Adres_okonchaniya_zayavki]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Pozyvnoi___186C9245]  DEFAULT (0) FOR [Pozyvnoi_ustan]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Nomer_ski__4262CC11]  DEFAULT (0) FOR [Nomer_skidki]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Ustan_pri__4356F04A]  DEFAULT (0) FOR [Ustan_pribytie]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Primechan__4A03EDD9]  DEFAULT ('') FOR [Primechanie]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__Slugebnyi__4AF81212]  DEFAULT (0) FOR [Slugebnyi]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF__Zakaz__otpravlya__4BEC364B]  DEFAULT ((-1)) FOR [otpravlyaetsya]
GO
ALTER TABLE [dbo].[Zakaz] ADD  DEFAULT (0) FOR [Opr_s_obsh_linii]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_SET]  DEFAULT ((0)) FOR [REMOTE_SET]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_IN_COURSE]  DEFAULT ((0)) FOR [REMOTE_INCOURSE]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_ACCEPTED]  DEFAULT ((0)) FOR [REMOTE_ACCEPTED]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_DRNUM]  DEFAULT ((0)) FOR [REMOTE_DRNUM]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_DRIVER_SMS_SEND_STATE]  DEFAULT ((0)) FOR [DRIVER_SMS_SEND_STATE]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_CLIENT_SMS_SEND_STATE]  DEFAULT ((0)) FOR [CLIENT_SMS_SEND_STATE]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_SMS_SEND_DRNUM]  DEFAULT ('пусто') FOR [SMS_SEND_DRNUM]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_SMS_SEND_CLPHONE]  DEFAULT ('пусто') FOR [SMS_SEND_CLPHONE]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_Priority_counter]  DEFAULT ((0)) FOR [Priority_counter]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_Individ_order]  DEFAULT ((0)) FOR [Individ_order]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_Individ_sending]  DEFAULT ((0)) FOR [Individ_sending]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_SECTOR_ID]  DEFAULT ((-1)) FOR [SECTOR_ID]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_SUMM]  DEFAULT ((0)) FOR [REMOTE_SUMM]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_REMOTE_SYNC]  DEFAULT ((0)) FOR [REMOTE_SYNC]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_LAST_STATUS_TIME]  DEFAULT (getdate()) FOR [LAST_STATUS_TIME]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_NO_TRANSMITTING]  DEFAULT ((0)) FOR [NO_TRANSMITTING]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_RESTORED]  DEFAULT ((0)) FOR [RESTORED]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_AUTO_ARHIVED]  DEFAULT ((0)) FOR [AUTO_ARHIVED]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_WAITING]  DEFAULT ((0)) FOR [WAITING]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_direct_sect_id]  DEFAULT ((-1)) FOR [direct_sect_id]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_fixed_time]  DEFAULT ((0)) FOR [fixed_time]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_fixed_summ]  DEFAULT ((0)) FOR [fixed_summ]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_on_place]  DEFAULT ((0)) FOR [on_place]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_tm_distance]  DEFAULT ((0)) FOR [tm_distance]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_tm_summ]  DEFAULT ((0)) FOR [tm_summ]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_TARIFF_ID]  DEFAULT ((-1)) FOR [TARIFF_ID]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_OPT_COMB]  DEFAULT ((0)) FOR [OPT_COMB]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_OPT_COMB_STR]  DEFAULT ('-') FOR [OPT_COMB_STR]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_PR_POLICY_ID]  DEFAULT ((-1)) FOR [PR_POLICY_ID]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_call_it]  DEFAULT ((0)) FOR [call_it]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_rclient_id]  DEFAULT ((-1)) FOR [rclient_id]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_rclient_status]  DEFAULT ((0)) FOR [rclient_status]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_clsync]  DEFAULT ((0)) FOR [clsync]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_tmsale]  DEFAULT ((0)) FOR [tmsale]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_status_accumulate]  DEFAULT ('') FOR [status_accumulate]
GO
ALTER TABLE [dbo].[Zakaz] ADD  CONSTRAINT [DF_Zakaz_alarmed]  DEFAULT ((0)) FOR [alarmed]
GO
/****** Object:  Trigger [dbo].[AFTER_EVENT_UPDATE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_EVENT_UPDATE] 
   ON  [dbo].[TD_EVENTS] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int;
	
	SET @has_dr_changes = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if(@db_version>=5)
	BEGIN
	
		DECLARE @DrIdValue int, @closedNewValue smallint,
		@closedOldValue smallint, @actEvCount int;
		
		SELECT @DrIdValue=a.DRIVER_ID,
			@closedOldValue=b.CLOSED,
			@closedNewValue=a.CLOSED
		FROM inserted a, deleted b;
		
		if ((@closedOldValue<>@closedNewValue) and 
			(ISNULL(@DrIdValue,0)>0))	
		begin
			select @actEvCount=COUNT(*) 
			FROM TD_EVENTS
			WHERE CLOSED=0 and DRIVER_ID=@DrIdValue;
			
			if (@actEvCount=0)
			begin
				UPDATE Voditelj
				SET has_active_events=0 
				WHERE BOLD_ID=@DrIdValue;
			end
		end
		
	END
END
GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_UPDATE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AFTER_DRIVER_UPDATE] 
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
		@aEvCount int, @newRemoteDr int;
		
	
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
	@newHasAEv = a.has_active_events -- Get the Old and New values
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
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP,
				Na_pereryve=0 
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
			
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
				WHERE BOLD_ID=@nOldValue;
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
/****** Object:  Trigger [dbo].[AFTER_DRIVER_WBROADCAST]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_DRIVER_WBROADCAST] 
   ON  [dbo].[Voditelj] 
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @has_dr_changes int,
		@use_sector_wbroadcast int;
	
	SET @has_dr_changes = 0;
	SET @use_sector_wbroadcast = 0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_sector_wbroadcast = ISNULL(use_sect_wbroadcast,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if ((@db_version>=5) AND (@use_sector_wbroadcast=1))
	BEGIN
	
	DECLARE @nOldValue int, @nNewValue int,
		@RSOldValue int, @itsRemoteDr int,
		@NewLaunchValue int, @NewComplValue int,
		@OldLaunchValue int, @OldComplValue int,
		@newSectId int, @oldSectId int,
		@newOnLineValue int, @oldOnLineValue int,
		@order_id int, @oldSyncStat int, @newSyncStat INT,
		@oldOrdDate DATETIME, @newOrdDate DATETIME;
		
	
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
	@itsRemoteDr = b.ITS_REMOTE_CLIENT,
	@oldSyncStat = b.SYNC_STATUS,
	@newSyncStat = a.SYNC_STATUS,
	@oldOrdDate = b.Vremya_poslednei_zayavki,
	@newOrdDate = a.Vremya_poslednei_zayavki -- Get the Old and New values
	FROM inserted a, deleted b;
		/*		
		IF (@NewLaunchValue<>@OldLaunchValue)
		BEGIN
		
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
		END;*/
		
		IF ((@newSectId<>@oldSectId) OR 
			(@newOnLineValue<>@oldOnLineValue))
		BEGIN
		
			EXEC SetWideBroadcasts 1, '';
			UPDATE Voditelj SET SEND_WBROADCAST=1
			WHERE rabotaet_na_sektore=@oldSectId;
			IF(@newSectId<>@oldSectId)
			BEGIN
				UPDATE Voditelj SET SEND_WBROADCAST=1
				WHERE rabotaet_na_sektore=@newSectId;
			END; 
			EXEC SetDriverStatSyncStatus @nOldValue, 1, 0;
			/*SET @has_dr_changes = 1;*/
		
		END;
	
	/*
	IF (@has_dr_changes>0)
	BEGIN
		UPDATE Personal SET EstjVneshnieManip=1, Prover_vodit=1;
	END;
	*/
	
	END;

END

GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_WORKSTART]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_DRIVER_WORKSTART] 
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
		@oldOrdDate DATETIME, @newOrdDate DATETIME, @bold_id int;
		
	
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
	@newOrdDate = a.Vremya_poslednei_zayavki -- Get the Old and New values
	FROM inserted a, deleted b;
		
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
/****** Object:  Trigger [dbo].[AFTER_INCOME_INSERT]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_INCOME_INSERT] 
   ON  [dbo].[Vyruchka_ot_voditelya] 
   AFTER INSERT
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_dr_balance_counter int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_dr_balance_counter=ISNULL(use_dr_balance_counter,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_dr_balance_counter>0))
	BEGIN

	DECLARE @nOldValue int, @summNewValue decimal(28,10), 
		@pNewValue INT;
		
		
	SELECT @nOldValue=a.BOLD_ID,
	@summNewValue=a.Summa,
	@pNewValue=a.Pozyvnoi
	FROM inserted a

	IF ((@pNewValue>0) AND (@summNewValue<>0))
	BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+@summNewValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_INCOME_UPDATE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_INCOME_UPDATE] 
   ON  [dbo].[Vyruchka_ot_voditelya] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_dr_balance_counter int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_dr_balance_counter=ISNULL(use_dr_balance_counter,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_dr_balance_counter>0))
	BEGIN

	DECLARE @nOldValue int, @summNewValue decimal(28,10), 
		@summOldValue decimal(28,10), @pNewValue INT,
		@pOldValue int;
		
		
	SELECT @nOldValue=b.BOLD_ID,
	@summNewValue=a.Summa,
	@summOldValue=b.Summa,
	@pNewValue=a.Pozyvnoi,
	@pOldValue=b.Pozyvnoi
	FROM inserted a, deleted b

	IF (((@pNewValue<>@pOldValue) OR (@summNewValue<>@summOldValue)) 
		AND (@pNewValue>0))
	BEGIN
		IF (@pNewValue=@pOldValue)
		BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+(@summNewValue-@summOldValue) 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
		END
		ELSE
		BEGIN
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE+@summNewValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pNewValue;
		UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE-@summOldValue 
		WHERE use_dyn_balance=1 AND Pozyvnoi=@pOldValue;
		END
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_DRASS_TPLAN]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_DRASS_TPLAN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @autotarif_by_driver smallint,
		@overtar_by_driver smallint, @autotarif_by_tplan smallint,
		@PR_POLICY_ID int, @TARIF_ID int, @OPTION_ID int, 
		@OPTION_STR varchar(255);
		
	SET @OPTION_STR='';
	SET @TARIF_ID=-1;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@autotarif_by_driver=ISNULL(autotarif_by_driver,0),
	@overtar_by_driver=ISNULL(overtar_by_driver,0),
	@autotarif_by_tplan=ISNULL(autotarif_by_tplan,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@autotarif_by_driver=1))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int,
		@newPolicyId int, @oldPolicyId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@newPolicyId=a.PR_POLICY_ID,
	@oldPolicyId=b.PR_POLICY_ID
	FROM inserted a, deleted b;
	
	IF (@newDrId>0)
	BEGIN
	
	IF(@newDrId<>@oldDrId)
	BEGIN
	
		SET @PR_POLICY_ID=ISNULL(dbo.GetDrTariffPlanId(@newDrId),0);
	
		IF (@PR_POLICY_ID>0 AND @PR_POLICY_ID<>@newPolicyId) BEGIN
			UPDATE Zakaz SET PR_POLICY_ID=@PR_POLICY_ID--,
			--TARIFF_ID=-1, OPT_COMB_STR='-' 
			WHERE ((PR_POLICY_ID<=0) OR (@overtar_by_driver=1)) 
			AND (BOLD_ID=@nOldValue);
			
		END;
	
	END;
	
	END;

	END;
	
	
	
END




GO
/****** Object:  Trigger [dbo].[AFTER_DRIVER_ASSIGN]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_DRIVER_ASSIGN] 
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

	DECLARE @nOldValue int, @newDrId int, @oldDrId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b;
	
	IF((@newDrId<>@oldDrId) and (@newDrId>0))
	BEGIN
	
		UPDATE Zakaz SET dr_assign_date=GETDATE() WHERE BOLD_ID=@nOldValue;
	
	END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ONPLACE_TOBE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ONPLACE_TOBE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@clsms_onplaceto smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@clsms_onplaceto=ISNULL(clsms_onplaceto,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@clsms_onplaceto>0))
	BEGIN

	DECLARE @nOldValue smallint, @nNewValue smallint, 
		@RSNewValue INT, @newDrId int, @newOrderId int;
		
		
	SELECT @newOrderId=b.BOLD_ID, 
	@RSNewValue=a.REMOTE_SET,
	@nOldValue=b.on_place,
	@nNewValue=a.on_place,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b
	
	IF ((@nNewValue=1) AND (@nNewValue<>@nOldValue) 
		AND (@newDrId>0) AND (@clsms_onplaceto=1))
	BEGIN
		UPDATE Zakaz SET CLIENT_SMS_SEND_STATE=1
		WHERE BOLD_ID=@newOrderId;
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_COMPLETE]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_COMPLETE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @min_debet decimal(28,10), 
	@use_dr_bcounter int, @every_order_pay decimal(28,10),
	@dr_dpay decimal(28,10), @all_dr_dpay decimal(28,10), 
	@fix_ord_dpay smallint, @dr_fix_ord_dpay smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@min_debet=ISNULL(MIN_DEBET,0),
	@use_dr_bcounter=ISNULL(use_dr_balance_counter,0),
	@every_order_pay=Kolich_vyd_benzina,
	@fix_ord_dpay=fix_order_pay_with_daily_pay,
	@all_dr_dpay=day_payment
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	DECLARE @nOldValue int, @completeNewValue int, 
		@completeOldValue INT, @NewSyncValue INT,
		@summValue decimal(28,10), @newDrId int, @dr_num int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@completeNewValue=a.Zavershyon,
	@completeOldValue=b.Zavershyon,
	@summValue=a.Uslovn_stoim,
	@newDrId=a.vypolnyaetsya_voditelem,
	@dr_num=a.Pozyvnoi_ustan
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

		UPDATE Voditelj SET DRIVER_BALANCE=
		DRIVER_BALANCE-@summValue*dbo.GetDrTakePercent(@dr_num) 
		WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		IF (@every_order_pay>0) and not (((@all_dr_dpay>0) OR (@dr_dpay>0)) and ((@fix_ord_dpay=0) or (@dr_fix_ord_dpay=0)))
		BEGIN
			UPDATE Voditelj SET DRIVER_BALANCE=DRIVER_BALANCE-@every_order_pay 
			WHERE (BOLD_ID=@newDrId) and (use_dyn_balance=1);
		END
	END;

	END;
	
	
	
END


GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_FIXTIMESET]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_ORDER_FIXTIMESET] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@recalc_on_timeset smallint,
	@ftime_tariff decimal(28,10),
	@tax_tariff decimal(28,10);
	
	SET @recalc_on_timeset=0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@recalc_on_timeset=ISNULL(recalc_on_timeset,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@recalc_on_timeset=1))
	BEGIN
	
		DECLARE @oldfixed_time int, @newfixed_time int,
			@oldtm_distance int, @newtm_distance int, 
			@newOrderId INT, @dr_id int, @ppolicy_id int,
			@otar_id int, @oopts_str varchar(255);
			
		SELECT @oldfixed_time=b.fixed_time, 
		@newfixed_time=a.fixed_time,
		@oldtm_distance=b.tm_distance,
		@newtm_distance=a.tm_distance,
		@newOrderId=a.BOLD_ID,
		@dr_id=a.vypolnyaetsya_voditelem,
		@ppolicy_id=a.PR_POLICY_ID,
		@otar_id=a.TARIFF_ID,
		@oopts_str=a.OPT_COMB_STR
		FROM inserted a, deleted b
		
		if(@otar_id>0)
		begin
			SELECT @ftime_tariff = dbo.GetTarTimeTariff(@otar_id);
			SELECT @tax_tariff = dbo.GetTarTaxTariff(@otar_id);
		end
		else
		begin
			SELECT @ftime_tariff = dbo.GetDrTimeTariff(@dr_id);
			SELECT @tax_tariff = dbo.GetDrTaxTariff(@dr_id);
		end

		IF ((@oldfixed_time<>@newfixed_time) AND (@ftime_tariff>0) AND (@newfixed_time>0))
		BEGIN
			UPDATE Zakaz SET fixed_summ=@newfixed_time*@ftime_tariff 
			WHERE BOLD_ID=@newOrderId;
		END;
		
		IF ((@oldtm_distance<>@newtm_distance) AND (@tax_tariff>0) AND (@newtm_distance>0))
		BEGIN
			UPDATE Zakaz SET tm_summ=@newtm_distance*@tax_tariff/1000
			WHERE BOLD_ID=@newOrderId;
		END;

	END;
	
	
	
END




GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_INSERT]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_INSERT] 
   ON  [dbo].[Zakaz] 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @db_version int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3) 
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
					Elektronnyi_adres='Индивидуальный клиент';
				
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
/****** Object:  Trigger [dbo].[AFTER_ORDER_INUM]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_INUM] 
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
				Elektronnyi_adres='Индивидуальный клиент';
			
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
/****** Object:  Trigger [dbo].[AFTER_ORDER_PRIORITY]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AFTER_ORDER_PRIORITY] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @use_priority int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_priority=ISNULL(use_dr_priority,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@use_priority>0))
	BEGIN

	DECLARE @nOldValue int, @nNewValue int, 
		@RSOldValue INT, @NewComplValue INT,
		@OldComplValue int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldComplValue=b.Zavershyon,
	@NewComplValue=a.Zavershyon
	FROM inserted a, deleted b

	IF ((@nNewValue>0) AND (@nNewValue<100) AND (@RSOldValue=0))
	BEGIN
		INSERT INTO dbo.ORDER_PRIORITY 
		        ( ORDER_ID, PRIORITY )
		VALUES  ( @nOldValue,
		          0  -- PRIORITY - int
		          );
		
	END;
	
	IF ((@NewComplValue>0) AND (@OldComplValue=0))
	BEGIN
		DELETE FROM ORDER_PRIORITY WHERE 
		ORDER_PRIORITY.ORDER_ID=@nOldValue;
	END;

	END;
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_SDIRECTION]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_SDIRECTION] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, 
	@odirect_to_dsect smallint;
	
	SET @odirect_to_dsect=0;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@odirect_to_dsect=ISNULL(odirect_to_dsect,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@odirect_to_dsect=1))
	BEGIN
	
		DECLARE @oldDirSectId int, @newDirSectId int, 
			@newOrdDrId INT;
			
		SELECT @oldDirSectId=b.direct_sect_id, 
		@newDirSectId=a.direct_sect_id,
		@newOrdDrId=a.vypolnyaetsya_voditelem
		FROM inserted a, deleted b

		IF ((@newDirSectId>0) AND (@oldDirSectId<>@newDirSectId) 
			AND (@newOrdDrId>0))
		BEGIN
			EXEC SetDriverSector @newOrdDrId, @newDirSectId, 
				0, 1, '';
		END;

	END;
	
	
	
END



GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_SYNC]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_SYNC] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @sync_account int, 
	@clsms_ordground smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@sync_account=ISNULL(sync_busy_accounting,0),
	@clsms_ordground=ISNULL(clsms_ordground,0) 
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

	END;
	
	
	
END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_TOPTS]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_ORDER_TOPTS] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @taropt_accounting int;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@taropt_accounting=ISNULL(taropt_accounting,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@taropt_accounting>0))
	BEGIN

	DECLARE @nOldValue int, @newTarValue int, 
		@oldTarValue int, @oldOptsValue varchar(255),
		@newOptsValue varchar(255), @newDrId int,
		@oldTarifPlanId int, @newTarifPlanId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newTarValue=a.TARIFF_ID,
	@oldTarValue=b.TARIFF_ID,
	@oldOptsValue=b.OPT_COMB_STR,
	@newOptsValue=a.OPT_COMB_STR,
	@oldTarifPlanId=b.PR_POLICY_ID,
	@newTarifPlanId=a.PR_POLICY_ID,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b

	IF (((@newTarValue<>@oldTarValue) OR (@newOptsValue<>@oldOptsValue)
			OR (@newTarifPlanId<>@oldTarifPlanId)) 
		AND (@newDrId>0))
	BEGIN
		EXEC SetDriverStatSyncStatus @newDrId, 1, 0;
	END;

	END;
	
	
	
END

GO
/****** Object:  Trigger [dbo].[AFTER_ORDER_WBROADCAST]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDER_WBROADCAST] 
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
		@OldSyncValue int, @newDrId int;
		
		
	SELECT @nOldValue=b.BOLD_ID, 
	@nNewValue=a.REMOTE_SET,
	@RSOldValue=b.REMOTE_SET,
	@OldSyncValue=b.REMOTE_SYNC,
	@NewSyncValue=a.REMOTE_SYNC,
	@newDrId=a.vypolnyaetsya_voditelem
	FROM inserted a, deleted b

	IF ( ((@nNewValue<8) AND (@RSOldValue=0) AND (@nNewValue>0) 
		AND (@newDrId<=0))
		OR ((@nNewValue=8) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId>0))
		OR ((@nNewValue=0) AND (@RSOldValue>0) AND (@RSOldValue<8) 
		AND (@newDrId<=0)) )
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END






GO
/****** Object:  Trigger [dbo].[AFTER_ORDERDEL_WBROADCAST]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AFTER_ORDERDEL_WBROADCAST] 
   ON  [dbo].[Zakaz] 
   AFTER DELETE
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
		@OldSyncValue int, @newDrId int;
		
		
	SELECT @RSOldValue=b.REMOTE_SET 
	FROM deleted b

	IF ((@RSOldValue>0) AND (@RSOldValue<8) )
	BEGIN
		EXEC SetOrdersWideBroadcasts 1, '';
	END;

	END;
	
END

GO
/****** Object:  Trigger [dbo].[AFTER_REMOTE_CLOSING]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AFTER_REMOTE_CLOSING] 
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
		@newDrNum int, @oldDrNum int, @ord_summ DECIMAL(28,10);
		
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
				UPDATE Voditelj 
				SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP,
					DR_SUMM=dbo.GetDrWorkSumm(@newDrId)
				WHERE BOLD_ID=@newDrId;
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
/****** Object:  Trigger [dbo].[AFTER_TPLAN_ASSGN]    Script Date: 17.12.2016 12:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[AFTER_TPLAN_ASSGN] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @db_version INT, @autotarif_by_driver smallint,
		@overtar_by_driver smallint, @autotarif_by_tplan smallint,
		@PR_POLICY_ID int, @TARIF_ID int, @OPTION_ID int, 
		@OPTION_STR varchar(255);
		
	SET @OPTION_STR='';
	SET @TARIF_ID=-1;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@autotarif_by_driver=ISNULL(autotarif_by_driver,0),
	@overtar_by_driver=ISNULL(overtar_by_driver,0),
	@autotarif_by_tplan=ISNULL(autotarif_by_tplan,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	IF((@db_version>=5) AND (@autotarif_by_driver=1))
	BEGIN

	DECLARE @nOldValue int, @newDrId int, @oldDrId int,
		@newPolicyId int, @oldPolicyId int;
		
	SELECT @nOldValue=b.BOLD_ID, 
	@newDrId=a.vypolnyaetsya_voditelem,
	@oldDrId=b.vypolnyaetsya_voditelem,
	@newPolicyId=a.PR_POLICY_ID,
	@oldPolicyId=b.PR_POLICY_ID
	FROM inserted a, deleted b;
	
	IF (@newDrId>0)
	BEGIN
	
	IF ((@autotarif_by_tplan=1) AND (@newPolicyId>0) AND (@newPolicyId<>@oldPolicyId) )
			BEGIN
			
			    SELECT ID FROM ORDER_TARIF 
				WHERE PR_POLICY_ID=@newPolicyId AND IF_DEF=1;
			
				IF @@ROWCOUNT>0
				BEGIN
					SELECT TOP 1 @TARIF_ID=ID FROM ORDER_TARIF 
					WHERE PR_POLICY_ID=@newPolicyId AND IF_DEF=1;
				END;
				
				--UPDATE Zakaz SET TARIFF_ID=1,
				--	OPT_COMB_STR='1' 
				--	WHERE (BOLD_ID=@nOldValue);
				
				SET @TARIF_ID = ISNULL(@TARIF_ID,0);
				
				
				DECLARE @CURSOR cursor, @opt_cnt int;
				SET @opt_cnt=0;
				
				SELECT ID FROM ORDER_OPTION WHERE IF_DEF=1 
				AND PR_POLICY_ID=@newPolicyId;
				IF @@ROWCOUNT>0
				BEGIN
					SET @CURSOR  = CURSOR SCROLL
					FOR SELECT ID FROM ORDER_OPTION WHERE IF_DEF=1 
					AND PR_POLICY_ID=@newPolicyId;
					
					/*Открываем курсор*/
					OPEN @CURSOR
					/*Выбираем первую строку*/
					FETCH NEXT FROM @CURSOR INTO @OPTION_ID;
					/*Выполняем в цикле перебор строк*/
					WHILE @@FETCH_STATUS = 0
					BEGIN
					    if(@opt_cnt>0)
					    BEGIN
							SET @OPTION_STR=@OPTION_STR+',';
					    END
					    SET @OPTION_STR=@OPTION_STR+CAST(@OPTION_ID as varchar(20));
						SET @opt_cnt=@opt_cnt+1;
						FETCH NEXT FROM @CURSOR INTO @OPTION_ID;
					END
					CLOSE @CURSOR
				END
				ELSE
				BEGIN
					SET @OPTION_STR='-';
				END;
				
				SET @OPTION_STR=ISNULL(@OPTION_STR,'-');
				IF @TARIF_ID>0 BEGIN
					UPDATE Zakaz SET TARIFF_ID=@TARIF_ID,
					OPT_COMB_STR=@OPTION_STR 
					WHERE (BOLD_ID=@nOldValue);
				END;
				
			END;
	
	END;

	END;
	
	
	
END




GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 48
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ActiveDriversState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ActiveDriversState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zakaz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArhToDelOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArhToDelOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zakaz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 131
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CallItOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CallItOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ORDER_TARIF"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 131
               Right = 357
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Voditelj"
            Begin Extent = 
               Top = 9
               Left = 378
               Bottom = 134
               Right = 810
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2715
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DRIVER_RATINGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DRIVER_RATINGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ord"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 148
               Right = 305
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DriversActivityIntervals'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DriversActivityIntervals'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[5] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tde"
            Begin Extent = 
               Top = 8
               Left = 6
               Bottom = 305
               Right = 166
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "et"
            Begin Extent = 
               Top = 5
               Left = 310
               Bottom = 117
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sr"
            Begin Extent = 
               Top = 184
               Left = 238
               Bottom = 304
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dr"
            Begin Extent = 
               Top = 129
               Left = 487
               Bottom = 249
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EVENTS_VIEW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EVENTS_VIEW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zakaz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 123
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1500
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LastWeekOrdersView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LastWeekOrdersView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[15] 2[31] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zakaz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 52
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SMSSendOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SMSSendOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zakaz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 48
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ToArhOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ToArhOrders'
GO
USE [master]
GO
ALTER DATABASE [TD5R1] SET  READ_WRITE 
GO
