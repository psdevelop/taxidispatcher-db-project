USE [TD5R1]
GO

/****** Object:  View [dbo].[ActiveOrders]    Script Date: 06.04.2019 23:29:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ActiveOrders]
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


