USE [TD5R1]
GO

/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 03.02.2019 16:34:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[SMSSendOrders]
AS
SELECT        ord.BOLD_ID, ord.Nomer_zakaza, ord.Telefon_klienta, ord.Adres_vyzova_vvodim, ord.Pozyvnoi_ustan, ord.DRIVER_SMS_SEND_STATE, ord.CLIENT_SMS_SEND_STATE, dr.phone_number AS SMS_SEND_DRNUM, 
                         ord.SMS_SEND_CLPHONE, dbo.GetCustClientInfo(ord.BOLD_ID, ord.Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, ord.Uslovn_stoim, ord.WAITING, dbo.GetOrderAMICommand(ord.BOLD_ID) AS AMI_COMMAND, 
                         dbo.GetOrderOnPlaceAMICommand(ord.BOLD_ID) AS AMI_ONPLACE_COMMAND, ord.bonus_add, ord.bonus_use, ord.bonus_all
FROM            dbo.Zakaz AS ord LEFT OUTER JOIN
                         dbo.Voditelj AS dr ON ord.vypolnyaetsya_voditelem = dr.BOLD_ID
WHERE        (ord.DRIVER_SMS_SEND_STATE = 1) AND (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 4) OR
                         (ord.Arhivnyi = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 3) AND (ABS(DATEDIFF(minute, ord.Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(ord.Uslovn_stoim, 0) > 0) OR
                         (ord.arhive_sms_state = 1)

GO


