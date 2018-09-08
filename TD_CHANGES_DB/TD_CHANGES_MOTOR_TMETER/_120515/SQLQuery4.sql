USE [TD5R1]
GO

/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 05/13/2015 01:48:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[SMSSendOrders]
AS
SELECT     BOLD_ID, Nomer_zakaza, Telefon_klienta, Adres_vyzova_vvodim, Pozyvnoi_ustan, DRIVER_SMS_SEND_STATE, CLIENT_SMS_SEND_STATE, SMS_SEND_DRNUM, SMS_SEND_CLPHONE, 
                      dbo.GetCustClientInfo(BOLD_ID, Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, Uslovn_stoim, WAITING, dbo.GetOrderAMICommand(BOLD_ID) AS AMI_COMMAND
FROM         dbo.Zakaz
WHERE     (DRIVER_SMS_SEND_STATE = 1) AND (Arhivnyi = 0) AND (Zavershyon = 0) OR
                      (Arhivnyi = 0) AND (Zavershyon = 0) AND (CLIENT_SMS_SEND_STATE = 1) OR
                      (Arhivnyi = 0) AND (CLIENT_SMS_SEND_STATE = 3) AND (ABS(DATEDIFF(minute, Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(Uslovn_stoim, 0) > 0)

GO


