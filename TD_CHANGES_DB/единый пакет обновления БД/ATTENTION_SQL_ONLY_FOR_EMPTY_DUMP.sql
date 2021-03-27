USE [TD5R1]
GO

ALTER TABLE Objekt_vyborki_otchyotnosti ALTER COLUMN addit_rem_params VARCHAR (8000) NOT NULL;
GO

ALTER TABLE Objekt_vyborki_otchyotnosti DROP CONSTRAINT DF_Objekt_vyborki_otchyotnosti_forders_wbroadcast;
GO

ALTER TABLE Objekt_vyborki_otchyotnosti ALTER COLUMN forders_wbroadcast VARCHAR (max) NOT NULL;
GO

ALTER TABLE [dbo].[Objekt_vyborki_otchyotnosti] ADD  CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_forders_wbroadcast]  DEFAULT (('')) FOR [forders_wbroadcast];
GO


ALTER TABLE REMOTE_CLIENTS ALTER COLUMN name varchar(255) NOT NULL;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- DATA UPDATES
--------------------------------------------------------------------
--------------------------------------------------------------------

UPDATE Objekt_vyborki_otchyotnosti
SET addit_rem_params = '"csw":"1","MSREF":"no","sopc":"yes","rstnok":"1","ovsdssum":"0","RESTTXM":"yes","CSLDN":"yes","TICAB":"yes","NETL":"no","UBLK":"no","CHKTAR":"yes","regbdst":"6","regbctm":"0","dstd":"0","rsbt":"1","tmminsp":"3","tmmaxsp":"220","tmminds":"2","tmmaxds":"800","UTDBL":"yes","UGPT":"yes","geocpref":"","SKINST":"yes",',
start_free_time = 0, start_free_distance = 0, auto_set_bonus_value = 0, robot_active_time_interval = 5,
trip_bonus = 0;

GO

UPDATE Voditelj SET V_rabote = 0;

GO

DELETE FROM AREA_LINES;

GO

