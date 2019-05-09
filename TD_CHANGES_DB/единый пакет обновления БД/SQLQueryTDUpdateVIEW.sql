USE [TD5R1]
GO

------------------------------------------------------
------------------------------------------------------
---- ВИДЫ
------------------------------------------------------
------------------------------------------------------

/****** Object:  View [dbo].[ToArhOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.ToArhOrders') IS NOT NULL 
DROP VIEW [dbo].[ToArhOrders]
GO
/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.SMSSendOrders') IS NOT NULL 
DROP VIEW [dbo].[SMSSendOrders]
GO
/****** Object:  View [dbo].[RemoteOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.RemoteOrders') IS NOT NULL 
DROP VIEW [dbo].[RemoteOrders]
GO
/****** Object:  View [dbo].[OrdersCoords]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.OrdersCoords') IS NOT NULL 
DROP VIEW [dbo].[OrdersCoords]
GO
/****** Object:  View [dbo].[LastWeekOrdersView]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.LastWeekOrdersView') IS NOT NULL 
DROP VIEW [dbo].[LastWeekOrdersView]
GO
/****** Object:  View [dbo].[EVENTS_VIEW]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.EVENTS_VIEW') IS NOT NULL 
DROP VIEW [dbo].[EVENTS_VIEW]
GO
/****** Object:  View [dbo].[DriversActivityIntervals]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.DriversActivityIntervals') IS NOT NULL 
DROP VIEW [dbo].[DriversActivityIntervals]
GO
/****** Object:  View [dbo].[DRIVER_RATINGS]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.DRIVER_RATINGS') IS NOT NULL 
DROP VIEW [dbo].[DRIVER_RATINGS]
GO
/****** Object:  View [dbo].[CallRobotOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.CallRobotOrders') IS NOT NULL 
DROP VIEW [dbo].[CallRobotOrders]
GO
/****** Object:  View [dbo].[CallItOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.CallItOrders') IS NOT NULL 
DROP VIEW [dbo].[CallItOrders]
GO
/****** Object:  View [dbo].[ArhToDelOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.ArhToDelOrders') IS NOT NULL 
DROP VIEW [dbo].[ArhToDelOrders]
GO
/****** Object:  View [dbo].[ActiveOrders]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.ActiveOrders') IS NOT NULL 
DROP VIEW [dbo].[ActiveOrders]
GO
/****** Object:  View [dbo].[ActiveDriversState]    Script Date: 08.12.2018 6:48:45 ******/
IF OBJECT_ID('dbo.ActiveDriversState') IS NOT NULL 
DROP VIEW [dbo].[ActiveDriversState]
GO

/****** Object:  View [dbo].[ActiveDriversState]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[ActiveOrders]    Script Date: 10.05.2019 0:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ActiveOrders]
AS
SELECT        dbo.Zakaz.BOLD_ID, dbo.Zakaz.Yavl_pochasovym, dbo.Zakaz.Kolichestvo_chasov, dbo.Zakaz.Nachalo_zakaza_data, dbo.Zakaz.Konec_zakaza_data, dbo.Zakaz.Telefon_klienta, dbo.Zakaz.Data_podachi, 
                         dbo.Zakaz.Zavershyon, dbo.Zakaz.Arhivnyi, dbo.Zakaz.Uslovn_stoim, dbo.Zakaz.Adres_vyzova_vvodim, dbo.Zakaz.Predvariteljnyi, dbo.Zakaz.Data_predvariteljnaya, dbo.Zakaz.Zadeistv_predvarit, 
                         dbo.Zakaz.Data_po_umolchaniyu, dbo.Zakaz.Soobsheno_voditelyu, dbo.Zakaz.vypolnyaetsya_voditelem, dbo.Zakaz.otpuskaetsya_dostepcherom, dbo.Zakaz.ocenivaetsya_cherez, dbo.Zakaz.adres_sektora, 
                         dbo.Zakaz.konechnyi_sektor_raboty, dbo.Zakaz.sektor_voditelya, dbo.Zakaz.Nomer_zakaza, dbo.Zakaz.Adres_okonchaniya_zayavki, dbo.Zakaz.Pozyvnoi_ustan, dbo.Zakaz.Data_pribytie, dbo.Zakaz.Nomer_skidki, 
                         dbo.Zakaz.Ustan_pribytie, dbo.Zakaz.Primechanie, dbo.Zakaz.Slugebnyi, dbo.Zakaz.otpravlyaetsya, dbo.Zakaz.Opr_s_obsh_linii, dbo.Zakaz.Data_na_tochke, dbo.Zakaz.REMOTE_SET, dbo.Zakaz.REMOTE_INCOURSE, 
                         dbo.Zakaz.REMOTE_ACCEPTED, dbo.Zakaz.REMOTE_DRNUM, dbo.Zakaz.DRIVER_SMS_SEND_STATE, dbo.Zakaz.CLIENT_SMS_SEND_STATE, dbo.Zakaz.SMS_SEND_DRNUM, dbo.Zakaz.SMS_SEND_CLPHONE, 
                         dbo.Zakaz.Priority_counter, dbo.Zakaz.Individ_order, dbo.Zakaz.Individ_sending, dbo.Zakaz.SECTOR_ID, dbo.Zakaz.REMOTE_SUMM, dbo.Zakaz.REMOTE_SYNC, dbo.Zakaz.LAST_STATUS_TIME, 
                         dbo.Zakaz.NO_TRANSMITTING, dbo.Zakaz.RESTORED, dbo.Zakaz.AUTO_ARHIVED, dbo.Zakaz.WAITING, dbo.Zakaz.direct_sect_id, dbo.Zakaz.fixed_time, dbo.Zakaz.fixed_summ, dbo.Zakaz.on_place, 
                         dbo.Zakaz.dr_assign_date, dbo.Zakaz.tm_distance, dbo.Zakaz.tm_summ, dbo.Zakaz.TARIFF_ID, dbo.Zakaz.OPT_COMB, dbo.Zakaz.OPT_COMB_STR, dbo.Zakaz.PR_POLICY_ID, dbo.Zakaz.call_it, dbo.Zakaz.rclient_id, 
                         dbo.Zakaz.rclient_status, dbo.Zakaz.clsync, dbo.Zakaz.tmsale, dbo.Zakaz.tmhistory, dbo.Zakaz.status_accumulate, dbo.Zakaz.rclient_lat, dbo.Zakaz.rclient_lon, dbo.Zakaz.alarmed, dbo.Zakaz.adr_manual_set, 
                         dbo.Zakaz.prev_price, dbo.Zakaz.cargo_desc, dbo.Zakaz.end_adres, dbo.Zakaz.client_name, dbo.Zakaz.prev_distance, dbo.Zakaz.CLIENT_CALL_STATE, CAST(DATEPART(hh, dbo.Zakaz.Nachalo_zakaza_data) AS CHAR(2)) 
                         + ':' + CAST(DATEPART(mi, dbo.Zakaz.Nachalo_zakaza_data) AS CHAR(2)) AS start_dt, CAST(DATEPART(hh, dbo.Zakaz.Konec_zakaza_data) AS CHAR(2)) + ':' + CAST(DATEPART(mi, dbo.Zakaz.Konec_zakaza_data) AS CHAR(2)) 
                         AS end_dt, dbo.GetCustComment(dbo.Zakaz.Nomer_zakaza, dbo.Zakaz.Nachalo_zakaza_data, dbo.Zakaz.Telefon_klienta + dbo.Zakaz.Adres_vyzova_vvodim, dbo.Zakaz.otpuskaetsya_dostepcherom, 
                         dbo.Zakaz.otpravlyaetsya, dbo.Zakaz.Pozyvnoi_ustan) AS MainCComment, dbo.GetOrderINumComment(dbo.Zakaz.Adres_okonchaniya_zayavki) AS INumInfo, dbo.GetEndSectorNameByID(dbo.Zakaz.konechnyi_sektor_raboty) 
                         AS esect, dbo.GetEndSectorNameByID(dbo.Zakaz.SECTOR_ID) AS order_sect, dbo.GetEndSectorNameByID(dbo.Zakaz.direct_sect_id) AS dir_sect, dbo.GetRemoteCustComment(dbo.Zakaz.REMOTE_SET, 
                         dbo.Zakaz.REMOTE_INCOURSE, dbo.Zakaz.REMOTE_ACCEPTED, dbo.Zakaz.REMOTE_DRNUM) AS RemCustComment, dbo.GetSendSMSCustComment(dbo.Zakaz.DRIVER_SMS_SEND_STATE, 
                         dbo.Zakaz.CLIENT_SMS_SEND_STATE, dbo.Zakaz.SMS_SEND_DRNUM, dbo.Zakaz.SMS_SEND_CLPHONE) AS SendSMSCustComment, dbo.GetOrdTarifNameByTId(dbo.Zakaz.TARIFF_ID) AS tarif_name, 
                         dbo.GetRemoteOrderStatusInfo(dbo.Zakaz.REMOTE_SET, dbo.Zakaz.WAITING, dbo.Zakaz.on_place) AS remoteOrderStatusInfo, dbo.Zakaz.src, dbo.Zakaz.src_status_code, dbo.Zakaz.src_id, dbo.Voditelj.Marka_avtomobilya, 
                         dbo.Voditelj.Gos_nomernoi_znak, dbo.Voditelj.phone_number, ISNULL(dbo.Voditelj.full_name, '') AS driver_name, dbo.Zakaz.src_on_place, dbo.Zakaz.src_wait_sended, dbo.GetEndSectorNameByID(dbo.Zakaz.detected_sector) 
                         AS det_sect_name, ISNULL(dbo.DISTRICTS.name, '') AS order_district, dbo.Zakaz.bonus_use, dbo.Zakaz.bonus_all, dbo.Zakaz.bonus_add, dbo.Zakaz.driver_rating_diff, dbo.Zakaz.driver_rating_expire_date, 
                         dbo.Zakaz.driver_rating_bonus_code, dbo.Zakaz.adr_detect_lat, dbo.Zakaz.adr_detect_lon, dbo.Zakaz.for_all_sectors, dbo.Zakaz.district_id, dbo.Zakaz.is_coordinates_upd, dbo.Zakaz.detected_sector, 
                         dbo.Zakaz.fail_app_coords_geocode, dbo.Zakaz.is_early, dbo.Zakaz.failed_adr_coords_detect, dbo.Zakaz.luggage, dbo.Zakaz.passengers, dbo.Zakaz.src_state, dbo.GetSetManualAddrChange() AS set_manual_addr_change, 
                         dbo.Zakaz.early_date, dbo.Zakaz.is_started_early
FROM            dbo.Zakaz LEFT OUTER JOIN
                         dbo.Voditelj ON dbo.Zakaz.vypolnyaetsya_voditelem = dbo.Voditelj.BOLD_ID LEFT OUTER JOIN
                         dbo.DISTRICTS ON dbo.Zakaz.district_id = dbo.DISTRICTS.id


GO
/****** Object:  View [dbo].[ArhToDelOrders]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[CallItOrders]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[CallRobotOrders]    Script Date: 10.05.2019 0:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[CallRobotOrders]
AS
SELECT        ord.BOLD_ID, ord.Nomer_zakaza, ord.Telefon_klienta, ord.Adres_vyzova_vvodim, ord.Pozyvnoi_ustan, ord.DRIVER_SMS_SEND_STATE, ord.CLIENT_SMS_SEND_STATE, dr.phone_number AS SMS_SEND_DRNUM, 
                         ord.SMS_SEND_CLPHONE, dbo.GetCustClientInfo(ord.BOLD_ID, ord.Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, ord.Uslovn_stoim, ord.WAITING, dbo.GetOrderAMICommand(ord.BOLD_ID) AS AMI_COMMAND,
						 ord.CLIENT_CALL_STATE, dbo.GetOrderOnPlaceAMICommand(ord.BOLD_ID) AS AMI_ONPLACE_COMMAND
FROM            dbo.Zakaz AS ord LEFT OUTER JOIN
                         dbo.Voditelj AS dr ON ord.vypolnyaetsya_voditelem = dr.BOLD_ID
WHERE           (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_CALL_STATE = 1) AND (dbo.isCallTimeExpired() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (ord.CLIENT_CALL_STATE = 4) AND (dbo.isCallTimeExpired() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.CLIENT_CALL_STATE = 3) AND (ABS(DATEDIFF(minute, ord.Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(ord.Uslovn_stoim, 0) > 0) AND (dbo.isCallTimeExpired() = 1)





GO
/****** Object:  View [dbo].[DRIVER_RATINGS]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[DriversActivityIntervals]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[EVENTS_VIEW]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[LastWeekOrdersView]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[OrdersCoords]    Script Date: 10.05.2019 0:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OrdersCoords]
AS
SELECT        dbo.Voditelj.Pozyvnoi, dbo.Zakaz.src_id, dbo.Zakaz.src, dbo.Zakaz.Zavershyon, dbo.Voditelj.cc_updated, dbo.Voditelj.last_cctime, dbo.Voditelj.last_lon, dbo.Voditelj.last_lat, dbo.Zakaz.REMOTE_SET, 
                         dbo.Zakaz.REMOTE_SYNC, dbo.Zakaz.src_status_code
FROM            dbo.Zakaz INNER JOIN
                         dbo.Voditelj ON dbo.Zakaz.vypolnyaetsya_voditelem = dbo.Voditelj.BOLD_ID
WHERE        (dbo.Zakaz.Zavershyon = 0) AND (dbo.Voditelj.cc_updated = 1) AND (ABS(DATEDIFF(minute, dbo.Voditelj.last_cctime, GETDATE())) < 10) AND (dbo.Zakaz.REMOTE_SET = 8) AND (dbo.Zakaz.REMOTE_SYNC = 0) AND 
                         (dbo.Zakaz.src_status_code = 8)

GO
/****** Object:  View [dbo].[RemoteOrders]    Script Date: 10.05.2019 0:00:37 ******/
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
/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 10.05.2019 0:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SMSSendOrders]
AS
SELECT        ord.BOLD_ID, ord.Nomer_zakaza, ord.Telefon_klienta, ord.Adres_vyzova_vvodim, ord.Pozyvnoi_ustan, ord.DRIVER_SMS_SEND_STATE, ord.CLIENT_SMS_SEND_STATE, dr.phone_number AS SMS_SEND_DRNUM, 
                         ord.SMS_SEND_CLPHONE, dbo.GetCustClientInfo(ord.BOLD_ID, ord.Pozyvnoi_ustan) AS CLIENT_ORDER_INFO, ord.Uslovn_stoim, ord.WAITING, dbo.GetOrderAMICommand(ord.BOLD_ID) AS AMI_COMMAND, 
                         dbo.GetOrderOnPlaceAMICommand(ord.BOLD_ID) AS AMI_ONPLACE_COMMAND, ord.bonus_add, ord.bonus_use, ord.bonus_all, ord.arhive_sms_state
FROM            dbo.Zakaz AS ord LEFT OUTER JOIN
                         dbo.Voditelj AS dr ON ord.vypolnyaetsya_voditelem = dr.BOLD_ID
WHERE        (ord.DRIVER_SMS_SEND_STATE = 1) AND (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 1) OR
                         (ord.Arhivnyi = 0) AND (ord.Zavershyon = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 4) OR
                         (ord.Arhivnyi = 0) AND (dbo.isSMSWithCallRaplace() = 1) AND (ord.CLIENT_SMS_SEND_STATE = 3) AND (ABS(DATEDIFF(minute, ord.Konec_zakaza_data, GETDATE())) < 10) AND (ISNULL(ord.Uslovn_stoim, 0) > 0) OR
                         (ord.arhive_sms_state = 1)

GO
/****** Object:  View [dbo].[ToArhOrders]    Script Date: 10.05.2019 0:00:37 ******/
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