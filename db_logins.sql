USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [disp_server]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [disp_server] WITH PASSWORD='disp_server', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [disp_server]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [disp_server] FOR LOGIN [disp_server] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER disp_server
GO
ALTER ROLE db_datawriter ADD MEMBER disp_server
GO
ALTER ROLE db_owner ADD MEMBER disp_server
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [disp_server2]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [disp_server2] WITH PASSWORD='disp_server2', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [disp_server2]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [disp_server2] FOR LOGIN [disp_server2] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER disp_server2
GO
ALTER ROLE db_datawriter ADD MEMBER disp_server2
GO
ALTER ROLE db_owner ADD MEMBER disp_server2
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [disp_server3]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [disp_server3] WITH PASSWORD='disp_server3', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [disp_server3]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [disp_server3] FOR LOGIN [disp_server3] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER disp_server3
GO
ALTER ROLE db_datawriter ADD MEMBER disp_server3
GO
ALTER ROLE db_owner ADD MEMBER disp_server3
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [disp_server4]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [disp_server4] WITH PASSWORD='disp_server4', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [disp_server4]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [disp_server4] FOR LOGIN [disp_server4] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER disp_server4
GO
ALTER ROLE db_datawriter ADD MEMBER disp_server4
GO
ALTER ROLE db_owner ADD MEMBER disp_server4
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [app_server]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [app_server] WITH PASSWORD='app_server', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [app_server]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [app_server] FOR LOGIN [app_server] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER app_server
GO
ALTER ROLE db_datawriter ADD MEMBER app_server
GO
ALTER ROLE db_owner ADD MEMBER app_server
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [manager]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [manager] WITH PASSWORD='manager', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [manager]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [manager] FOR LOGIN [manager] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER manager
GO
ALTER ROLE db_datawriter ADD MEMBER manager
GO
ALTER ROLE db_owner ADD MEMBER manager
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [driver_server]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [driver_server] WITH PASSWORD='driver_server', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [driver_server]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [driver_server] FOR LOGIN [driver_server] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER driver_server
GO
ALTER ROLE db_datawriter ADD MEMBER driver_server
GO
ALTER ROLE db_owner ADD MEMBER driver_server
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [дис1]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [дис1] WITH PASSWORD='дис1', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [дис1]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [дис1] FOR LOGIN [дис1] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER [дис1]
GO
ALTER ROLE db_datawriter ADD MEMBER [дис1]
GO
ALTER ROLE db_owner ADD MEMBER [дис1]
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [дис2]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [дис2] WITH PASSWORD='дис2', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [дис2]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [дис2] FOR LOGIN [дис2] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER [дис2]
GO
ALTER ROLE db_datawriter ADD MEMBER [дис2]
GO
ALTER ROLE db_owner ADD MEMBER [дис2]
GO
--------------------------------
--------------------------------
--------------------------------
USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [дис3]    Script Date: 12.05.2019 16:35:30 ******/
CREATE LOGIN [дис3] WITH PASSWORD='дис3', 
DEFAULT_DATABASE=[TD5R1], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TD5R1]
GO

/****** Object:  User [дис3]    Script Date: 12.05.2019 16:38:10 ******/
CREATE USER [дис3] FOR LOGIN [дис3] WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE db_datareader ADD MEMBER [дис3]
GO
ALTER ROLE db_datawriter ADD MEMBER [дис3]
GO
ALTER ROLE db_owner ADD MEMBER [дис3]
GO
--------------------------------
--------------------------------
--------------------------------
