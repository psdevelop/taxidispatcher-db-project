SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[AFTER_WEB_DISP_DATA_CHANGE] 
   ON  [dbo].[Zakaz] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @nOldValue smallint, @nNewValue smallint, @nOldPredvariteljnyiValue int, 
        @nNewPredvariteljnyiValue int, @nOldData_predvariteljnayaValue datetime, 
        @nNewData_predvariteljnayaValue datetime,
        @nOldZadeistv_predvaritValue int, @nNewZadeistv_predvaritValue int,
        @nOldAdres_vyzova_vvodimValue varchar(255), @nNewAdres_vyzova_vvodimValue varchar(255),
        @nOldTelefon_klientaValue varchar(255), @nNewTelefon_klientaValue varchar(255),
        @nOldZavershyonValue int, @nNewZavershyonValue int,
        @nOldArhivnyiValue int, @nNewArhivnyiValue int,
        @nOldUslovn_stoimValue decimal(28, 10), @nNewUslovn_stoimValue decimal(28, 10),
        @nOldPozyvnoi_ustanValue int, @nNewPozyvnoi_ustanValue int,
        @nOldSECTOR_IDValue int, @nNewSECTOR_IDValue int,
        @nOldREMOTE_SUMMValue decimal(28, 10), @nNewREMOTE_SUMMValue decimal(28, 10),
        @nOldREMOTE_SYNCValue int, @nNewREMOTE_SYNCValue int,
        @nOldREMOTE_DRNUMValue int, @nNewREMOTE_DRNUMValue int,
        @nOldREMOTE_INCOURSEValue int, @nNewREMOTE_INCOURSEValue int,
        @nOldREMOTE_ACCEPTEDValue int, @nNewREMOTE_ACCEPTEDValue int,
        @nOldWAITINGValue int, @nNewWAITINGValue int,
        @nOldadr_manual_setValue smallint, @nNewadr_manual_setValue smallint,
        @nOldprev_priceValue smallint, @nNewprev_priceValue smallint,
        @nOlddetected_sectorValue int, @nNewdetected_sectorValue int,
		@RSNewValue INT, @newDrId int, @newOrderId int, @RSOldValue int,
        @oldDrId int;

	SELECT @newOrderId=a.BOLD_ID, 
	@RSNewValue=a.REMOTE_SET,
    @RSOldValue=b.REMOTE_SET,
	@nOldValue=b.on_place,
	@nNewValue=a.on_place,
    @nOldPredvariteljnyiValue=b.Predvariteljnyi,
	@nNewPredvariteljnyiValue=a.Predvariteljnyi,
    @nOldData_predvariteljnayaValue=b.Data_predvariteljnaya,
	@nNewData_predvariteljnayaValue=a.Data_predvariteljnaya,
    @nOldZadeistv_predvaritValue=b.Zadeistv_predvarit,
	@nNewZadeistv_predvaritValue=a.Zadeistv_predvarit,
    @nOldAdres_vyzova_vvodimValue=b.Adres_vyzova_vvodim,
	@nNewAdres_vyzova_vvodimValue=a.Adres_vyzova_vvodim,
    @nOldTelefon_klientaValue=b.Telefon_klienta,
	@nNewTelefon_klientaValue=a.Telefon_klienta,
    @nOldZavershyonValue=b.Zavershyon,
	@nNewZavershyonValue=a.Zavershyon,
    @nOldArhivnyiValue=b.Arhivnyi,
	@nNewArhivnyiValue=a.Arhivnyi,
    @nOldUslovn_stoimValue=b.Uslovn_stoim,
	@nNewUslovn_stoimValue=a.Uslovn_stoim,
    @nOldPozyvnoi_ustanValue=b.Pozyvnoi_ustan,
	@nNewPozyvnoi_ustanValue=a.Pozyvnoi_ustan,
    @nOldSECTOR_IDValue=b.SECTOR_ID,
	@nNewSECTOR_IDValue=a.SECTOR_ID,
    @nOldREMOTE_SUMMValue=b.REMOTE_SUMM,
	@nNewREMOTE_SUMMValue=a.REMOTE_SUMM,
    @nOldREMOTE_SYNCValue=b.REMOTE_SYNC,
	@nNewREMOTE_SYNCValue=a.REMOTE_SYNC,
    @nOldREMOTE_DRNUMValue=b.REMOTE_DRNUM,
	@nNewREMOTE_DRNUMValue=a.REMOTE_DRNUM,
    @nOldREMOTE_INCOURSEValue=b.REMOTE_INCOURSE,
	@nNewREMOTE_INCOURSEValue=a.REMOTE_INCOURSE,
    @nOldREMOTE_ACCEPTEDValue=b.REMOTE_ACCEPTED,
	@nNewREMOTE_ACCEPTEDValue=a.REMOTE_ACCEPTED,
    @nOldWAITINGValue=b.WAITING,
	@nNewWAITINGValue=a.WAITING,
    @nOldadr_manual_setValue=b.on_place,
	@nNewadr_manual_setValue=a.on_place,
    @nOldprev_priceValue=b.prev_price,
	@nNewprev_priceValue=a.prev_price,
    @nOlddetected_sectorValue=b.detected_sector,
	@nNewdetected_sectorValue=a.detected_sector,
	@newDrId=a.vypolnyaetsya_voditelem,
    @oldDrId=b.vypolnyaetsya_voditelem
	FROM inserted a, deleted b
	
	IF (@nNewValue<>@nOldValue) OR (@RSNewValue<>@RSOldValue) OR 
        (@newDrId<>@oldDrId) OR 
    @nOldPredvariteljnyiValue <>
	@nNewPredvariteljnyiValue OR
    @nOldData_predvariteljnayaValue <>
	@nNewData_predvariteljnayaValue OR
    @nOldZadeistv_predvaritValue <>
	@nNewZadeistv_predvaritValue OR
    @nOldAdres_vyzova_vvodimValue <>
	@nNewAdres_vyzova_vvodimValue OR
    @nOldTelefon_klientaValue <> 
	@nNewTelefon_klientaValue OR 
    @nOldZavershyonValue <>
	@nNewZavershyonValue OR
    @nOldArhivnyiValue <> 
	@nNewArhivnyiValue OR
    @nOldUslovn_stoimValue <>
	@nNewUslovn_stoimValue OR 
    @nOldPozyvnoi_ustanValue <>
	@nNewPozyvnoi_ustanValue OR
    @nOldSECTOR_IDValue <>
	@nNewSECTOR_IDValue OR
    @nOldREMOTE_SUMMValue <>
	@nNewREMOTE_SUMMValue OR
    @nOldREMOTE_SYNCValue <>
	@nNewREMOTE_SYNCValue OR
    @nOldREMOTE_DRNUMValue <> 
	@nNewREMOTE_DRNUMValue OR
    @nOldREMOTE_INCOURSEValue <>
	@nNewREMOTE_INCOURSEValue OR
    @nOldREMOTE_ACCEPTEDValue <>
	@nNewREMOTE_ACCEPTEDValue OR
    @nOldWAITINGValue <>
	@nNewWAITINGValue OR
    @nOldadr_manual_setValue <>
	@nNewadr_manual_setValue OR
    @nOldprev_priceValue <>
	@nNewprev_priceValue OR
    @nOlddetected_sectorValue <>
	@nNewdetected_sectorValue
	BEGIN
		UPDATE Personal SET has_web_orders_updates=1;
	END;
	
END


GO
ALTER TABLE [dbo].[Zakaz] ENABLE TRIGGER [AFTER_WEB_DISP_DATA_CHANGE]
GO