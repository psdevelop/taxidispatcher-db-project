USE [TD5R1]
GO

------------------------------------------------------
------------------------------------------------------
---- ПРОЦЕДУРЫ
------------------------------------------------------
------------------------------------------------------
/****** Object:  StoredProcedure [dbo].[SetWideBroadcasts]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetWideBroadcasts') IS NOT NULL 
DROP PROCEDURE [dbo].[SetWideBroadcasts]
GO
/****** Object:  StoredProcedure [dbo].[SetOrdersWideBroadcasts]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrdersWideBroadcasts') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrdersWideBroadcasts]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderRemoteStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderRemoteStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderRemoteStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderParam]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderParam') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderParam]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus2]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderOccupAttemptStatus2') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderOccupAttemptStatus2]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderOccupAttemptStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderOccupAttemptStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderGoStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderGoStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderGoStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAttStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderDriverCancelAttStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderDriverCancelAttStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAllowStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderDriverCancelAllowStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderDriverCancelAllowStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAttStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderDispCancelAttStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderDispCancelAttStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAllowStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderDispCancelAllowStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderDispCancelAllowStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus3]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderCompleteAttemptStatus3') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderCompleteAttemptStatus3]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus2]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderCompleteAttemptStatus2') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderCompleteAttemptStatus2]
GO
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOrderCompleteAttemptStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOrderCompleteAttemptStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetOnHandOrderGoStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetOnHandOrderGoStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetOnHandOrderGoStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetIndOrderSendStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetIndOrderSendStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetIndOrderSendStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverStatSyncStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverStatSyncStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverStatSyncStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverSectWBrodcastStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverSectWBrodcastStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverSectWBrodcastStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverSector]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverSector') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverSector]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverRemoteStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverRemoteStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverRemoteStatus]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverOutLine]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverOutLine') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverOutLine]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverOnLine]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverOnLine') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverOnLine]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverFromPretendents]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverFromPretendents') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverFromPretendents]
GO
/****** Object:  StoredProcedure [dbo].[SetDriverDailyPaymStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.SetDriverDailyPaymStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[SetDriverDailyPaymStatus]
GO
/****** Object:  StoredProcedure [dbo].[RestoreRemoteDriversFlags]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RestoreRemoteDriversFlags') IS NOT NULL 
DROP PROCEDURE [dbo].[RestoreRemoteDriversFlags]
GO
/****** Object:  StoredProcedure [dbo].[ResetRemoteDriversFlags]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ResetRemoteDriversFlags') IS NOT NULL 
DROP PROCEDURE [dbo].[ResetRemoteDriversFlags]
GO
/****** Object:  StoredProcedure [dbo].[ReserveOrderPresent]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ReserveOrderPresent') IS NOT NULL 
DROP PROCEDURE [dbo].[ReserveOrderPresent]
GO
/****** Object:  StoredProcedure [dbo].[RefreshDrOrdPriorityBroadcasts]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RefreshDrOrdPriorityBroadcasts') IS NOT NULL 
DROP PROCEDURE [dbo].[RefreshDrOrdPriorityBroadcasts]
GO
/****** Object:  StoredProcedure [dbo].[RecoveryOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RecoveryOrder') IS NOT NULL 
DROP PROCEDURE [dbo].[RecoveryOrder]
GO
/****** Object:  StoredProcedure [dbo].[RecalcCurrentOrderRatingBonuses]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RecalcCurrentOrderRatingBonuses') IS NOT NULL 
DROP PROCEDURE [dbo].[RecalcCurrentOrderRatingBonuses]
GO
/****** Object:  StoredProcedure [dbo].[RealizeTDEvent]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RealizeTDEvent') IS NOT NULL 
DROP PROCEDURE [dbo].[RealizeTDEvent]
GO
/****** Object:  StoredProcedure [dbo].[RealizeReservePresent]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.RealizeReservePresent') IS NOT NULL 
DROP PROCEDURE [dbo].[RealizeReservePresent]
GO
/****** Object:  StoredProcedure [dbo].[ProceedOperationRequest]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ProceedOperationRequest') IS NOT NULL 
DROP PROCEDURE [dbo].[ProceedOperationRequest]
GO
/****** Object:  StoredProcedure [dbo].[OneMinuteTask]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.OneMinuteTask') IS NOT NULL 
DROP PROCEDURE [dbo].[OneMinuteTask]
GO
/****** Object:  StoredProcedure [dbo].[One3SecTask]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.One3SecTask') IS NOT NULL 
DROP PROCEDURE [dbo].[One3SecTask]
GO
/****** Object:  StoredProcedure [dbo].[One10SecTask]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.One10SecTask') IS NOT NULL 
DROP PROCEDURE [dbo].[One10SecTask]
GO
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived2V]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.MoveOrdPortionToArhived2V') IS NOT NULL 
DROP PROCEDURE [dbo].[MoveOrdPortionToArhived2V]
GO
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.MoveOrdPortionToArhived') IS NOT NULL 
DROP PROCEDURE [dbo].[MoveOrdPortionToArhived]
GO
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived2V]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.MoveOrderToArhived2V') IS NOT NULL 
DROP PROCEDURE [dbo].[MoveOrderToArhived2V]
GO
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.MoveOrderToArhived') IS NOT NULL 
DROP PROCEDURE [dbo].[MoveOrderToArhived]
GO
/****** Object:  StoredProcedure [dbo].[ManualSetOrderRemoteStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ManualSetOrderRemoteStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[ManualSetOrderRemoteStatus]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithStatus]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRDispatcher]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsRDispatcher') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParamsRDispatcher]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientFBot]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsRClientFBot') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParamsRClientFBot]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientEx]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsRClientEx') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParamsRClientEx]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClient]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsRClient') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParamsRClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsAlt]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsAlt') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParamsAlt]
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParams]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParams') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOrderWithParams]
GO
/****** Object:  StoredProcedure [dbo].[InsertOnHandAttemptOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOnHandAttemptOrder') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertOnHandAttemptOrder]
GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrderRetNum]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewOrderRetNum') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertNewOrderRetNum]
GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrderDictItem]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewOrderDictItem') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertNewOrderDictItem]
GO
/****** Object:  StoredProcedure [dbo].[InsertNewOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewOrder') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertNewOrder]
GO
/****** Object:  StoredProcedure [dbo].[InsertNewDriverIncome]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewDriverIncome') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertNewDriverIncome]
GO
/****** Object:  StoredProcedure [dbo].[InsertFictiveDrOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertFictiveDrOrder') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertFictiveDrOrder]
GO
/****** Object:  StoredProcedure [dbo].[InsertEvent3]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertEvent3') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertEvent3]
GO
/****** Object:  StoredProcedure [dbo].[InsertEvent2]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertEvent2') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertEvent2]
GO
/****** Object:  StoredProcedure [dbo].[InsertEvent]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertEvent') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertEvent]
GO
/****** Object:  StoredProcedure [dbo].[InsertDriverRating]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertDriverRating') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertDriverRating]
GO
/****** Object:  StoredProcedure [dbo].[InsertCompletedOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertCompletedOrder') IS NOT NULL 
DROP PROCEDURE [dbo].[InsertCompletedOrder]
GO
/****** Object:  StoredProcedure [dbo].[IncrementOrdersPriority]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.IncrementOrdersPriority') IS NOT NULL 
DROP PROCEDURE [dbo].[IncrementOrdersPriority]
GO
/****** Object:  StoredProcedure [dbo].[IncOrdersPriorityById]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.IncOrdersPriorityById') IS NOT NULL 
DROP PROCEDURE [dbo].[IncOrdersPriorityById]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderRatingBonus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetOrderRatingBonus') IS NOT NULL 
DROP PROCEDURE [dbo].[GetOrderRatingBonus]
GO
/****** Object:  StoredProcedure [dbo].[GetJSONRClientStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetJSONRClientStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[GetJSONRClientStatus]
GO
/****** Object:  StoredProcedure [dbo].[GetJSONDriverStatus]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetJSONDriverStatus') IS NOT NULL 
DROP PROCEDURE [dbo].[GetJSONDriverStatus]
GO
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebtDyn]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetDrLockOnCalcDebtDyn') IS NOT NULL 
DROP PROCEDURE [dbo].[GetDrLockOnCalcDebtDyn]
GO
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebt]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetDrLockOnCalcDebt') IS NOT NULL 
DROP PROCEDURE [dbo].[GetDrLockOnCalcDebt]
GO
/****** Object:  StoredProcedure [dbo].[GetDriverQueuePosition]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetDriverQueuePosition') IS NOT NULL 
DROP PROCEDURE [dbo].[GetDriverQueuePosition]
GO
/****** Object:  StoredProcedure [dbo].[GetDrDateCalcBalance]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetDrDateCalcBalance') IS NOT NULL 
DROP PROCEDURE [dbo].[GetDrDateCalcBalance]
GO
/****** Object:  StoredProcedure [dbo].[FixOrderAccepting]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.FixOrderAccepting') IS NOT NULL 
DROP PROCEDURE [dbo].[FixOrderAccepting]
GO
/****** Object:  StoredProcedure [dbo].[DecrementDrOrdPriorities]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.DecrementDrOrdPriorities') IS NOT NULL 
DROP PROCEDURE [dbo].[DecrementDrOrdPriorities]
GO
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrNum]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ClearOrderAcceptByDrNum') IS NOT NULL 
DROP PROCEDURE [dbo].[ClearOrderAcceptByDrNum]
GO
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrId]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ClearOrderAcceptByDrId') IS NOT NULL 
DROP PROCEDURE [dbo].[ClearOrderAcceptByDrId]
GO
/****** Object:  StoredProcedure [dbo].[CheckDriversRatingExpires]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CheckDriversRatingExpires') IS NOT NULL 
DROP PROCEDURE [dbo].[CheckDriversRatingExpires]
GO
/****** Object:  StoredProcedure [dbo].[CheckDriverBusy]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CheckDriverBusy') IS NOT NULL 
DROP PROCEDURE [dbo].[CheckDriverBusy]
GO
/****** Object:  StoredProcedure [dbo].[CheckClientRegistration]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CheckClientRegistration') IS NOT NULL 
DROP PROCEDURE [dbo].[CheckClientRegistration]
GO
/****** Object:  StoredProcedure [dbo].[CancelOrdersRClientFBot]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CancelOrdersRClientFBot') IS NOT NULL 
DROP PROCEDURE [dbo].[CancelOrdersRClientFBot]
GO
/****** Object:  StoredProcedure [dbo].[CancelOrdersRClient]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CancelOrdersRClient') IS NOT NULL 
DROP PROCEDURE [dbo].[CancelOrdersRClient]
GO
/****** Object:  StoredProcedure [dbo].[CalcBonusSumm]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.CalcBonusSumm') IS NOT NULL 
DROP PROCEDURE [dbo].[CalcBonusSumm]
GO
/****** Object:  StoredProcedure [dbo].[AutoSetOrderFinished]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AutoSetOrderFinished') IS NOT NULL 
DROP PROCEDURE [dbo].[AutoSetOrderFinished]
GO
/****** Object:  StoredProcedure [dbo].[AutoSetFromPretendents]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AutoSetFromPretendents') IS NOT NULL 
DROP PROCEDURE [dbo].[AutoSetFromPretendents]
GO
/****** Object:  StoredProcedure [dbo].[AutoAssignDriverByCoords]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AutoAssignDriverByCoords') IS NOT NULL 
DROP PROCEDURE [dbo].[AutoAssignDriverByCoords]
GO
/****** Object:  StoredProcedure [dbo].[AssignDriverOnOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AssignDriverOnOrder') IS NOT NULL
DROP PROCEDURE [dbo].[AssignDriverOnOrder]
GO
/****** Object:  StoredProcedure [dbo].[AssignDriverByNumOnOrder]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AssignDriverByNumOnOrder') IS NOT NULL
DROP PROCEDURE [dbo].[AssignDriverByNumOnOrder]
GO
/****** Object:  StoredProcedure [dbo].[ApplyRClientCoords]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.ApplyRClientCoords') IS NOT NULL
DROP PROCEDURE [dbo].[ApplyRClientCoords]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrderNum]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.AddNewOrderNum') IS NOT NULL
DROP PROCEDURE [dbo].[AddNewOrderNum]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrderNum]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithParamsRClientWCoords') IS NOT NULL
DROP PROCEDURE [dbo].[InsertOrderWithParamsRClientWCoords]
GO

/****** Object:  StoredProcedure [dbo].[GetDailyTaxParams]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.GetDailyTaxParams') IS NOT NULL
DROP PROCEDURE [dbo].[GetDailyTaxParams]
GO

/****** Object:  StoredProcedure [dbo].[InsertOrderWithSectorAndTariffParams]    Script Date: 08.12.2018 6:54:15 ******/
IF OBJECT_ID('dbo.InsertOrderWithSectorAndTariffParams') IS NOT NULL
DROP PROCEDURE [dbo].[InsertOrderWithSectorAndTariffParams]
GO

/****** Object:  StoredProcedure [dbo].[InsertNewDriverRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewDriverRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertNewDriverRetID]
GO

/****** Object:  StoredProcedure [dbo].[InsertNewSectorRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewSectorRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertNewSectorRetID]
GO

/****** Object:  StoredProcedure [dbo].[InsertNewDriverCompanyRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewDriverCompanyRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertNewDriverCompanyRetID]
GO

/****** Object:  StoredProcedure [dbo].[InsertPersonaRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertPersonaRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertPersonaRetID]
GO

/****** Object:  StoredProcedure [dbo].[InsertNewPhoneAddrRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewPhoneAddrRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertNewPhoneAddrRetID]
GO

/****** Object:  StoredProcedure [dbo].[InsertNewAbonentRetID]    Script Date: 09.10.2019 6:54:15 ******/
IF OBJECT_ID('dbo.InsertNewAbonentRetID') IS NOT NULL
DROP PROCEDURE [dbo].[InsertNewAbonentRetID]
GO

/****** Object:  StoredProcedure [dbo].[RateDriver]    Script Date: 19.11.2019 6:54:15 ******/
IF OBJECT_ID('dbo.RateDriver') IS NOT NULL
DROP PROCEDURE [dbo].[RateDriver]
GO

/****** Object:  StoredProcedure [dbo].[UpdateClientInfo]    Script Date: 20.11.2019 6:54:15 ******/
IF OBJECT_ID('dbo.UpdateClientInfo') IS NOT NULL
DROP PROCEDURE [dbo].[UpdateClientInfo]
GO

/****** Object:  StoredProcedure [dbo].[GetSectorMediumCoords]    Script Date: 03.12.2019 15:50:15 ******/
IF OBJECT_ID('dbo.GetSectorMediumCoords') IS NOT NULL
DROP PROCEDURE [dbo].[GetSectorMediumCoords]
GO

/****** Object:  StoredProcedure [dbo].[AddNewOrderNum]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[ApplyRClientCoords]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[AssignDriverByNumOnOrder]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[AssignDriverByNumOnOrder] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_num int, @user_id int, @count int OUT)
AS
BEGIN 
	DECLARE @driver_id int;
	
	SET @count = 0;

	SELECT TOP 1 @driver_id = BOLD_ID
	FROM Voditelj
	WHERE Pozyvnoi = @driver_num;

	IF @@ROWCOUNT > 0 BEGIN
		EXEC dbo.AssignDriverOnOrder @order_id, @driver_id, 
			@user_id, @count = @count OUT;
	END;
	
END











GO
/****** Object:  StoredProcedure [dbo].[AssignDriverOnOrder]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[AssignDriverOnOrder] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @user_id int, @count int OUT)
AS
BEGIN 
	DECLARE @prev_dr_id int, 
	@on_launch int, @driverNum int,
	@min_debet decimal(28, 10);
	
	SET @count = 0;

	SELECT TOP 1 @min_debet=ISNULL(MIN_DEBET,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SELECT @prev_dr_id=Zakaz.vypolnyaetsya_voditelem 
	FROM Zakaz
	WHERE Zakaz.BOLD_ID=@order_id;
	
	SELECT TOP 1 @driverNum=Pozyvnoi 
	FROM Voditelj 
	WHERE BOLD_ID=@driver_id AND ITS_REMOTE_CLIENT = 1 AND 
	Na_pereryve = 0 AND (DRIVER_BALANCE > @min_debet OR use_dyn_balance <> 1) AND 
	V_rabote = 1;
	
	if (@@ROWCOUNT>0)
	begin
	
	UPDATE Zakaz 
	SET REMOTE_SET=8,
	vypolnyaetsya_voditelem=@driver_id,
	Pozyvnoi_ustan=@driverNum,
	REMOTE_INCOURSE=0, REMOTE_ACCEPTED=0,
	Priority_counter=0, REMOTE_DRNUM=@driverNum,
	REMOTE_SYNC=1, Individ_order=1, 
	otpravlyaetsya = @user_id, adr_manual_set = 1
	WHERE BOLD_ID=@order_id AND Adres_vyzova_vvodim <> ''
	AND Telefon_klienta <> '';

	--adr_manual_set=1
	SET @count = @@ROWCOUNT;
	
	IF @count > 0 BEGIN
		UPDATE Voditelj
		SET Na_pereryve=0,
		Zanyat_drugim_disp=1
		WHERE BOLD_ID=@driver_id;

		IF @prev_dr_id > 0 BEGIN
			EXEC CheckDriverBusy @prev_dr_id;
		END;
	END;
	
	end
	
	
	
END











GO
/****** Object:  StoredProcedure [dbo].[AutoAssignDriverByCoords]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AutoAssignDriverByCoords] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @latStr varchar(50), @lonStr varchar(50), @count int OUT)
AS
BEGIN 
	DECLARE @prev_dr_id int, 
	@on_launch int, @driverNum int,
	@lat decimal(28,10), @lon decimal(28,10),
	@latDr decimal(28,10), @lonDr decimal(28,10),
	@aass_driver_max_radius int, @driver_id int,
	@autoasg_drby_coord_by_rating smallint,
	@use_rating_levels smallint;

	SELECT @aass_driver_max_radius = aass_driver_max_radius,
	@autoasg_drby_coord_by_rating = autoasg_drby_coord_by_rating,
	@use_rating_levels = use_rating_levels
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SET @autoasg_drby_coord_by_rating = ISNULL(@autoasg_drby_coord_by_rating, 0);

	IF @latStr <> '' AND @lonStr <> '' BEGIN

		SET @lat = CAST(@latStr as decimal(28, 10));
		SET @lon = CAST(@lonStr as decimal(28, 10));

		IF @lat > -250 AND @lat < 250 AND @lon > -250 AND @lon < 250 BEGIN

			IF @autoasg_drby_coord_by_rating = 1 BEGIN
				IF @use_rating_levels = 1 BEGIN
					SELECT TOP 1 @latDr = CAST(last_lat as decimal(28, 10)), 
					@lonDr = CAST(last_lon as decimal(28, 10)), @driver_id = BOLD_ID FROM Voditelj
					WHERE last_lat <> '' AND last_lon <> '' AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10) 
					AND Zanyat_drugim_disp = 0 AND V_rabote = 1 AND Na_pereryve = 0 AND dont_auto_asgn_by_radius <> 1 AND 
					dbo.DistanceBetweenTwoCoords(@lat, @lon, CAST(last_lat as decimal(28, 10)), 
					CAST(last_lon as decimal(28, 10))) < (@aass_driver_max_radius/1000)
					ORDER BY dbo.GetDriverRatingLevel(BOLD_ID) DESC, Vremya_poslednei_zayavki ASC;
				END
				ELSE BEGIN
					SELECT TOP 1 @latDr = CAST(last_lat as decimal(28, 10)), 
					@lonDr = CAST(last_lon as decimal(28, 10)), @driver_id = BOLD_ID FROM Voditelj
					WHERE last_lat <> '' AND last_lon <> '' AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10) 
					AND Zanyat_drugim_disp = 0 AND V_rabote = 1 AND Na_pereryve = 0 AND dont_auto_asgn_by_radius <> 1 AND 
					dbo.DistanceBetweenTwoCoords(@lat, @lon, CAST(last_lat as decimal(28, 10)), 
					CAST(last_lon as decimal(28, 10))) < (@aass_driver_max_radius/1000)
					ORDER BY dbo.GetDriverRating(BOLD_ID) DESC;
				END;
			END
			ELSE BEGIN
				SELECT TOP 1 @latDr = CAST(last_lat as decimal(28, 10)), 
				@lonDr = CAST(last_lon as decimal(28, 10)), @driver_id = BOLD_ID FROM Voditelj
				WHERE last_lat <> '' AND last_lon <> '' AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 10) 
				AND Zanyat_drugim_disp = 0 AND V_rabote = 1 AND Na_pereryve = 0 AND dont_auto_asgn_by_radius <> 1
				ORDER BY dbo.DistanceBetweenTwoCoords(@lat, @lon, CAST(last_lat as decimal(28, 10)), 
				CAST(last_lon as decimal(28, 10))) ASC;
			END;

			IF @@ROWCOUNT > 0 AND @latDr > -250 AND @latDr < 250 AND 
				@lonDr > -250 AND @lonDr < 250
			BEGIN
				IF @autoasg_drby_coord_by_rating = 1 BEGIN
					EXEC AssignDriverOnOrder @order_id, @driver_id, 
						-1, @count = @count OUTPUT;
				END
				ELSE IF (dbo.DistanceBetweenTwoCoords(@lat, @lon, @latDr, @lonDr) * 1000) < 
				(@aass_driver_max_radius/1000) BEGIN
					EXEC AssignDriverOnOrder @order_id, @driver_id, 
						-1, @count = @count OUTPUT;
				END;
			END;

		END;

	END;

END











GO
/****** Object:  StoredProcedure [dbo].[AutoSetFromPretendents]    Script Date: 10.05.2019 0:05:05 ******/
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
	@dr_count int, @rating_pretendent_sorting smallint,
	@use_rating_levels smallint;

	SELECT TOP 1 
	@rating_pretendent_sorting = rating_pretendent_sorting,
	@use_rating_levels = use_rating_levels 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
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
	SET @accept_count = 0;

	IF @rating_pretendent_sorting = 1 BEGIN

		IF @use_rating_levels = 1 BEGIN
			SELECT TOP 1 @driver_id=oa.DRIVER_ID 
			FROM ORDER_ACCEPTING oa INNER JOIN Voditelj dr ON oa.DRIVER_ID = dr.BOLD_ID
			WHERE oa.ORDER_ID=@order_id
			ORDER BY dbo.GetDriverRatingLevel(oa.DRIVER_ID) DESC, 
			dr.Vremya_poslednei_zayavki ASC;

			SET @accept_count = @@ROWCOUNT;
		END
		ELSE BEGIN
			SELECT TOP 1 @driver_id=oa.DRIVER_ID 
			FROM ORDER_ACCEPTING oa 
			WHERE oa.ORDER_ID=@order_id
			ORDER BY dbo.GetDriverRating(oa.DRIVER_ID) DESC, oa.ACCEPT_DATE ASC;

			SET @accept_count = @@ROWCOUNT;
		END;
	END
	ELSE BEGIN
		if (@sort_with_accept>0) BEGIN
			SELECT @accept_count=COUNT(*) FROM
			ORDER_ACCEPTING WHERE ORDER_ID=@order_id
			AND DRIVER_NUM=@order_dr_num;
	
			SELECT TOP 1 @driver_id=oa.DRIVER_ID 
			FROM ORDER_ACCEPTING oa 
			WHERE oa.ORDER_ID=@order_id AND 
			oa.DRIVER_NUM=@order_dr_num
			ORDER BY oa.ACCEPT_DATE DESC;
		END;
	END;
	
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

			SET @dr_count=@@ROWCOUNT;
			
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
/****** Object:  StoredProcedure [dbo].[AutoSetOrderFinished]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[CalcBonusSumm]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CalcBonusSumm] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @decPhoneBalance smallint, @bonusUse decimal(28,10) OUTPUT)
AS
BEGIN   
	DECLARE @summValue decimal(28,10), @newDrId int, 
		@bonusSumm decimal(28,10),
		@bonusAll decimal(28,10),
		@orderPhone varchar(255),
		@first_trip_bonus decimal(28,10),
		@trip_bonus decimal(28,10),
		@percent_bonus_min_summ decimal(28,10),
		@bonus_percent decimal(28,10),
		@phoneOrderCount int, @db_version int;

	SET @decPhoneBalance = ISNULL(@decPhoneBalance, 0);

	SELECT TOP 1 
	@first_trip_bonus = first_trip_bonus,
	@trip_bonus = trip_bonus,
	@percent_bonus_min_summ = percent_bonus_min_summ,
	@bonus_percent = bonus_percent
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SELECT 
	@summValue=Uslovn_stoim,
	@newDrId=vypolnyaetsya_voditelem,
	@orderPhone = Telefon_klienta,
	@bonusUse = bonus_use
	FROM Zakaz
	WHERE BOLD_ID = @order_id

	SET @bonusUse = ISNULL(@bonusUse,0);

	IF (@bonusUse < 0) BEGIN 
		SET @bonusUse = 0;
	END;

	SET @bonusSumm = 0;

	IF ( (@summValue>0) AND @orderPhone<>'' AND @newDrId > 0 AND 
		((@bonus_percent > 0 AND @percent_bonus_min_summ > 0) OR @first_trip_bonus > 0 OR @trip_bonus > 0) AND 
		(@summValue > 0) )
	BEGIN
		SELECT BOLD_ID
		FROM Sootvetstvie_parametrov_zakaza sp
		WHERE sp.Telefon_klienta = @orderPhone;

		IF @@ROWCOUNT = 1 BEGIN

			SELECT @phoneOrderCount = sp.Summarn_chislo_vyzovov, 
			@bonusAll = sp.bonus_summ
			FROM Sootvetstvie_parametrov_zakaza sp
			WHERE sp.Telefon_klienta = @orderPhone;

			IF @bonusUse > @bonusAll BEGIN
				SET @bonusUse = @bonusAll;
				UPDATE Zakaz SET bonus_use = @bonusUse
				WHERE BOLD_ID = @order_id;
			END;

			IF @bonus_percent > 0 AND @percent_bonus_min_summ <= @summValue AND 
				@percent_bonus_min_summ > 0 AND @bonus_percent < 1 AND @phoneOrderCount > 1 BEGIN
				SET @bonusSumm = @summValue * @bonus_percent;
			END
			ELSE BEGIN
				IF @phoneOrderCount = 1 BEGIN
					SET @bonusSumm = @first_trip_bonus;
				END
				ELSE BEGIN
					SET @bonusSumm = @trip_bonus;
				END;
			END;

			UPDATE Zakaz SET bonus_add = @bonusSumm, 
			bonus_all = @bonusAll + @bonusSumm - @bonusUse
			WHERE BOLD_ID = @order_id;

			IF @decPhoneBalance = 1 BEGIN
				UPDATE Sootvetstvie_parametrov_zakaza
				SET bonus_summ = bonus_summ + @bonusSumm - @bonusUse
				WHERE Telefon_klienta = @orderPhone;
			END;
		END;
     
    END;
    return
END


GO
/****** Object:  StoredProcedure [dbo].[CancelOrdersRClient]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[CancelOrdersRClientFBot]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CancelOrdersRClientFBot] 
	-- Add the parameters for the stored procedure here
	(@order_id varchar(50), @is_bot smallint, @res int OUT)
AS
BEGIN 
	
	SET @is_bot = ISNULL(@is_bot, 0)
	SET @res = 0;
	if (@order_id <> '')
	BEGIN
		IF @is_bot = 0 BEGIN
			UPDATE Zakaz SET src_status_code = 100, 
			REMOTE_SET = 100, Zavershyon = 1, Arhivnyi = 1, 
			Adres_vyzova_vvodim='(ОТМЕНА ВОДИТЕЛЕМ)' + REPLACE(Adres_vyzova_vvodim,'(ONLINE)','') 
			WHERE src = 1 AND src_status_code = 8 AND 
			(REMOTE_SET NOT IN (8, 26, 100) OR Arhivnyi = 1) AND src_ID = @order_id
		END
		ELSE BEGIN
			UPDATE Zakaz SET src_status_code = 100,
			rclient_status = -1, REMOTE_SET = 100, 
			Zavershyon = 1, Arhivnyi = 1, 
			Adres_vyzova_vvodim='(ОТМЕНА КЛИЕНТОМ)'+REPLACE(Adres_vyzova_vvodim,'(ONLINE)','') 
			WHERE src = 1 AND src_status_code <> 100 AND src_ID = @order_id
		END
		SET @res = @@ROWCOUNT;
	END;
	
END






GO
/****** Object:  StoredProcedure [dbo].[CheckClientRegistration]    Script Date: 10.05.2019 0:05:05 ******/
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
					if LEN(@phone) >= 5 begin
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
				if LEN(@phone) >= 5 begin
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
/****** Object:  StoredProcedure [dbo].[CheckDriverBusy]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[CheckDriversRatingExpires]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CheckDriversRatingExpires] 
	-- Add the parameters for the stored procedure here
AS
BEGIN 
	DECLARE @use_drivers_rating smallint;

	SELECT TOP 1 @use_drivers_rating = use_drivers_rating
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SET @use_drivers_rating = ISNULL(@use_drivers_rating,0);

	IF @use_drivers_rating = 1 BEGIN
		DELETE FROM DRIVER_RATING WHERE expire_date <= GETDATE();
	END;
END



GO
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrId]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[ClearOrderAcceptByDrNum]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[DecrementDrOrdPriorities]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DecrementDrOrdPriorities] 
	-- Add the parameters for the stored procedure here
	(@reset_has_broad smallint)
AS
BEGIN 
	DECLARE @CURSOR cursor, @ORDID int, @upd_priorities_cnt int;
				
			SELECT driver_id FROM DR_ORD_PRIORITY;
			IF @@ROWCOUNT>0
			BEGIN

				SET @CURSOR  = CURSOR SCROLL
				FOR SELECT id FROM DR_ORD_PRIORITY dop 
				INNER JOIN Zakaz ord ON ord.BOLD_ID=dop.order_id
				WHERE ord.Zavershyon=1;
					
				/*Открываем курсор*/
				OPEN @CURSOR
				/*Выбираем первую строку*/
				FETCH NEXT FROM @CURSOR INTO @ORDID;
				/*Выполняем в цикле перебор строк*/
				WHILE @@FETCH_STATUS = 0
				BEGIN
					DELETE FROM DR_ORD_PRIORITY WHERE id = @ORDID;
					FETCH NEXT FROM @CURSOR INTO @ORDID;
				END
				CLOSE @CURSOR

				UPDATE DR_ORD_PRIORITY SET [priority] = [priority] - 1 WHERE [priority]>0

				SET @upd_priorities_cnt = @@ROWCOUNT

				IF @upd_priorities_cnt = 0 AND @reset_has_broad = 1
				BEGIN
					UPDATE Objekt_vyborki_otchyotnosti
					SET has_ford_wbroadcast=0;
				END

				IF @upd_priorities_cnt > 0 
				BEGIN
					EXEC RefreshDrOrdPriorityBroadcasts;
				END

			END
END



GO
/****** Object:  StoredProcedure [dbo].[FixOrderAccepting]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDailyTaxParams]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDailyTaxParams] 
	-- Add the parameters for the stored procedure here
	(@tax_percent decimal(18, 5) OUTPUT, @fix_payment decimal(18, 5) OUTPUT, 
	@no_percent_max_summ decimal(18, 5) OUTPUT, @no_percent_ms_payment decimal(18, 5) OUTPUT)
AS
BEGIN   
	DECLARE @startOfToday datetime, @now datetime;

	SET @startOfToday = DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0);
	SET @now = GETDATE();
	SET @tax_percent = ISNULL(@tax_percent, 0);
	SET @fix_payment = ISNULL(@fix_payment, 0);
	SET @no_percent_max_summ = ISNULL(@no_percent_max_summ, 0);
	SET @no_percent_ms_payment = ISNULL(@no_percent_ms_payment, 0);

	SELECT TOP 1 @tax_percent = tax_percent, @fix_payment = fix_payment,
	@no_percent_max_summ = no_percent_max_summ, @no_percent_ms_payment = no_percent_ms_payment
	FROM DAILY_PARAMS
	WHERE its_tax_percent = 1 AND start_time < end_time AND 
	@now > (@startOfToday + start_time) AND @now < (@startOfToday + end_time);

    return
END


GO
/****** Object:  StoredProcedure [dbo].[GetDrDateCalcBalance]    Script Date: 10.05.2019 0:05:05 ******/
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

			select @DrSumm=(SUM(Uslovn_stoim)*dbo.GetDrTakePercent(@dr_num, 0)) 
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
/****** Object:  StoredProcedure [dbo].[GetDriverQueuePosition]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebt]    Script Date: 10.05.2019 0:05:05 ******/
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

			select @DrSumm=(SUM(Uslovn_stoim)*dbo.GetDrTakePercent(@dr_num, 0)) 
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
/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebtDyn]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GetDrLockOnCalcDebtDyn]  ( @dr_num int, @res int OUT)
AS
BEGIN
   declare @dr_count int, @use_dr_lock smallint, @driver_id int, 
   @dr_debt decimal(28,10), @min_debt decimal(28,10);
   
   SET @res=-1
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE Pozyvnoi=@dr_num;
   
   if (@dr_count=1) and (@dr_num>0) begin
		SELECT @use_dr_lock=rlock_on_calc_debt, @driver_id=BOLD_ID, 
        @dr_debt=DRIVER_BALANCE, @min_debt=min_balance FROM Voditelj 
		WHERE Pozyvnoi=@dr_num;
		if @use_dr_lock<>1 begin
			SET @res=-1
		end
		else begin
		
			DECLARE @db_version INT, @drcalc_start_date date,
			@ftime_tariff decimal(28,10);
	
            IF @min_debt = 0 BEGIN
                SELECT TOP 1 @db_version=ISNULL(db_version,3),
                @drcalc_start_date=ISNULL(drcalc_start_date,GETDATE()),
                @min_debt=ISNULL(MIN_DEBET,0)
                FROM Objekt_vyborki_otchyotnosti
                WHERE Tip_objekta='for_drivers';
            END;
			
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
/****** Object:  StoredProcedure [dbo].[GetJSONDriverStatus]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetJSONDriverStatus] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @show_phone int, @res varchar(8000) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @on_launch int, @busy int,
		@dr_status varchar(255), @rsync int, 
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int, 
		@prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime,
		@on_place smallint, @bonus_use decimal(28,10),
		@show_region_in_addr smallint, @is_early smallint,
		@cl_comment varchar(255), @client_dist [decimal](18, 5),
		@current_time [int], @client_time [int], @client_prev_sum [decimal](18, 5),
		@cl_name varchar(255), @client_rate [decimal](18, 5), @client_rate_count [int],
        @dest_lat [decimal](18, 5), @dest_lon [decimal](18, 5),
        @rclient_lat varchar(50), @rclient_lon varchar(50);
	DECLARE @last_order_time datetime;
	DECLARE @position int;
	
	SET @last_order_time=GETDATE();
   
	SET @res='{"command":"driver_status","did":"';
	SET @dr_count = 0;
	SET @counter = 0;
	
	DECLARE @send_wait_info smallint;
	
	SELECT TOP 1 @send_wait_info=ISNULL(send_wait_info,0),
	@order_sort_dr_assign=ISNULL(order_sort_dr_assign,0),
	@show_region_in_addr = show_region_in_addr
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
		AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
		AND ord.REMOTE_SET NOT IN(0,16,26,100)
		AND (ord.is_early = 0 OR ord.is_started_early = 1 OR ord.REMOTE_SYNC = 1);
	
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
			SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + ord.Telefon_klienta+
			':'+ ord.Adres_vyzova_vvodim + (CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, ord.PR_POLICY_ID,
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya, ord.on_place, ord.bonus_use, ord.is_early, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum,
			ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
            ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon   
			FROM Zakaz ord LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
			LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
			AND ord.REMOTE_SET NOT IN(0,16,26,100) 
			AND (ord.is_early = 0 OR ord.is_started_early = 1 OR ord.REMOTE_SYNC = 1)
			ORDER BY ISNULL(ord.dr_assign_date,GETDATE()) ASC;
		END
		ELSE
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + ord.Adres_vyzova_vvodim + 
			(CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, ord.PR_POLICY_ID,
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya, ord.on_place, ord.bonus_use, ord.is_early, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum,
			ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
            ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon     
			FROM Zakaz ord LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
			LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
			AND ord.REMOTE_SET NOT IN(0,16,26,100)
			AND (ord.is_early = 0 OR ord.is_started_early = 1 OR ord.REMOTE_SYNC = 1)
			ORDER BY ISNULL(ord.dr_assign_date,GETDATE()) ASC;
		END;
		END
		ELSE
		BEGIN
		IF (@show_phone>0)
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + ord.Telefon_klienta+
			':' + ord.Adres_vyzova_vvodim + (CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, ord.PR_POLICY_ID,
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya, ord.on_place, ord.bonus_use, ord.is_early, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum,
			ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
            ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon      
			FROM Zakaz ord LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
			LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
			AND ord.REMOTE_SET NOT IN(0,16,26,100)
			AND (ord.is_early = 0 OR ord.is_started_early = 1 OR ord.REMOTE_SYNC = 1) 
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END
		ELSE
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + ord.Adres_vyzova_vvodim + 
			(CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, ord.PR_POLICY_ID,
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya, ord.on_place, ord.bonus_use, ord.is_early, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum,
			ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
            ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon      
			FROM Zakaz ord LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
			LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id WHERE 
			ord.vypolnyaetsya_voditelem=@driver_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
			AND ord.REMOTE_SET NOT IN(0,16,26,100)
			AND (ord.is_early = 0 OR ord.is_started_early = 1 OR ord.REMOTE_SYNC = 1)
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END;
		END;
		/*Открываем курсор*/
		OPEN @CURSOR
		/*Выбираем первую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
			@opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, 
			@prev_distance, @prev_date, @on_place, @bonus_use, @is_early, @cl_comment, 
			@client_dist, @current_time, @client_time, @client_prev_sum,
			@cl_name, @client_rate, @client_rate_count,
            @rclient_lat, @rclient_lon, @dest_lat, @dest_lon;
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

			IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			SET @res=@res+',"cldst'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_dist))+'"';

			SET @res=@res+',"clpsm'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_prev_sum))+'"';

			SET @res=@res+',"clcmm'+
			CAST(@counter as varchar(20))+'":"'+
			@cl_comment+'"';

			SET @res=@res+',"crrtm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@current_time as varchar(20))+'"';

			SET @res=@res+',"cltm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_time as varchar(20))+'"';

			SET @res=@res+',"rclnm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cl_name,'"',' '),'''',' ')+'"';

			SET @res=@res+',"clrat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_rate))+'"';

			SET @res=@res+',"crcnt'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_rate_count as varchar(20))+'"';

            SET @res=@res+',"stlat'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lat+'"';

            SET @res=@res+',"stlon'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lon+'"';

            SET @res=@res+',"dlat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lat))+'"';

            SET @res=@res+',"dlon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lon))+'"';

			IF (@bonus_use>0)
			BEGIN
			SET @res=@res+',"obus'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@bonus_use))+'"';
			END;

			IF (@is_early = 1)
			BEGIN
				SET @res=@res + ',"ie' +
				CAST(@counter as varchar(20)) + '":"1"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cargo_desc,'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

			SET @res = @res + ',"dopl' +
				CAST(@counter as varchar(20)) + '":"' +
				CAST(@on_place as varchar(20)) + '"';
			
			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
				@opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, 
				@prev_distance, @prev_date, @on_place, @bonus_use, @is_early, @cl_comment, 
				@client_dist, @current_time, @client_time, @client_prev_sum,
				@cl_name, @client_rate, @client_rate_count,
                @rclient_lat, @rclient_lon, @dest_lat, @dest_lon;
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

/****** Object:  StoredProcedure [dbo].[GetJSONRClientStatus]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetJSONRClientStatus] 
	-- Add the parameters for the stored procedure here
	(@client_id int, @phone varchar(255), @full_data smallint, @res varchar(max) OUT)
AS
BEGIN 

	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @dr_count int,
		@sector_name varchar(255), @counter int,
		@order_id int, @order_data varchar(255),
		@order_count int, @acc_status int,
		@group_id int, @rsync int, @clsync smallint, @rcorder_status int,
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int, 
		@prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime, 
		@company_id int, @company_name varchar(255),
        @current_sum decimal(18,5), @current_dist decimal(18,5),
        @is_upcoming int, @driver_id int, @driver_name varchar(500),
		@cl_comment varchar(255), @client_dist [decimal](18, 5),
		@current_time [int], @client_time [int], @client_prev_sum [decimal](18, 5);
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
	
		IF (@order_sort_dr_assign=1 AND 1=0)
		BEGIN
			SET @CURSOR  = CURSOR SCROLL
			FOR
			SELECT BOLD_ID, (Telefon_klienta+
			':'+Adres_vyzova_vvodim) as order_data,
			REMOTE_SYNC, WAITING, TARIFF_ID, OPT_COMB_STR, PR_POLICY_ID, 
			REMOTE_SET, on_place, Uslovn_stoim, ISNULL(tmhistory,''), 
			ISNULL(status_accumulate,''), dbo.GetDrJSONCoordsByNum(Pozyvnoi_ustan), 
			CONVERT(varchar, DATEPART(hh, Nachalo_zakaza_data))+':'+CONVERT(varchar, DATEPART(mi, Nachalo_zakaza_data))+' '+CONVERT(varchar, DATEPART(dd, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(mm, Nachalo_zakaza_data)) + '.' + CONVERT(varchar, DATEPART(yyyy, Nachalo_zakaza_data)), 
			rclient_status, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum
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
			SELECT ord.BOLD_ID, ord.Adres_vyzova_vvodim as order_data,
			ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, 
			ord.PR_POLICY_ID, ord.REMOTE_SET, ord.on_place, ord.Uslovn_stoim, 
			ISNULL(ord.tmhistory,''), ISNULL(ord.status_accumulate,''), 
			dbo.GetDrJSONCoordsByNum(ord.Pozyvnoi_ustan), 
			CONVERT(varchar, DATEPART(hh, ord.Nachalo_zakaza_data))+':'+
			CONVERT(varchar, DATEPART(mi, ord.Nachalo_zakaza_data))+' '+
			CONVERT(varchar, DATEPART(dd, ord.Nachalo_zakaza_data)) + '.' +
			 CONVERT(varchar, DATEPART(mm, ord.Nachalo_zakaza_data)) + '.' + 
			 CONVERT(varchar, DATEPART(yyyy, ord.Nachalo_zakaza_data)), 
			 ord.rclient_status, ISNULL(dr.Gos_nomernoi_znak,''), ISNULL(dr.Marka_avtomobilya,''),
			 ISNULL(dr.phone_number, ''),
			ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
			ord.Data_predvariteljnaya, ord.company_id, sp.Naimenovanie, ord.current_sum, ord.current_dist,
            ord.Predvariteljnyi, dr.full_name as driver_name, dr.BOLD_ID as driver_id, 
			ord.comment, ord.client_dist,
			ord.[current_time], ord.client_time, ord.client_prev_sum
			FROM Zakaz ord 
			LEFT JOIN Voditelj dr ON ord.vypolnyaetsya_voditelem=dr.BOLD_ID  
			LEFT JOIN Gruppa_voditelei gv ON ord.company_id = gv.BOLD_ID
			LEFT JOIN Spravochnik sp ON gv.BOLD_ID = sp.BOLD_ID
			WHERE ord.rclient_id=@client_id AND
			ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
			AND Zavershyon=0 AND NO_TRANSMITTING=0 
			AND REMOTE_SET NOT IN(16,100)
			ORDER BY ord.Nachalo_zakaza_data ASC;
		END;
		
		DECLARE @ors int, @opl int, @osumm decimal(28,2), @tmh varchar(1000), @stac varchar(1000),
		@dr_gn varchar(255), @dr_mark varchar(255), @dr_phone varchar(50);
		/*Открываем курсор*/
		OPEN @CURSOR
		/*Выбираем первую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
			@opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, @order_start_date, 
			@rc_status, @dr_gn, @dr_mark, @dr_phone, @prev_price, @cargo_desc, @end_adres, 
			@client_name, @prev_distance, @prev_date, @company_id, @company_name, @current_sum, 
			@current_dist, @is_upcoming, @driver_id, @driver_name, @cl_comment, @client_dist, 
			@current_time, @client_time, @client_prev_sum;
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
				CAST(@stac as varchar(20))+'"'+',"dgn'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_gn+'"'+',"dmrk'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_mark +'"'+',"dphn'+
				CAST(@counter as varchar(20))+'":"'+
				@dr_phone +'"'+',"osdt'+
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
			
			IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cargo_desc,'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@company_id,'')<>'')
			BEGIN
			SET @res=@res+',"ocid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@company_id as varchar(20))+'"';
			END;

			IF (ISNULL(@company_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocpn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@company_name,''),'"',' '),'''',' ')+'"';
			END;

            SET @res=@res+',"isup'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@is_upcoming as varchar(20))+'"';

			SET @driver_id = ISNULL(@driver_id, 0);
			SET @driver_name = ISNULL(@driver_name, '');

			SET @res=@res+',"cldst'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_dist))+'"';

			SET @res=@res+',"clpsm'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_prev_sum))+'"';

			SET @res=@res+',"clcmm'+
			CAST(@counter as varchar(20))+'":"'+
			@cl_comment+'"';

			SET @res=@res+',"crrtm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@current_time as varchar(20))+'"';

			SET @res=@res+',"cltm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_time as varchar(20))+'"';

			SET @res=@res+',"drid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@driver_id as varchar(20))+'"';

			SET @res=@res+',"drnm'+
			CAST(@counter as varchar(20))+'":"'+
			@driver_name+'"';

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

            SET @res=@res+',"crds'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@current_dist))+'"';

            SET @res=@res+',"crsm'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@current_sum))+'"';

			SET @counter=@counter+1;
			/*Выбираем следующую строку*/
			FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
				@opt_comb, @tplan_id, @ors, @opl, @osumm, @tmh, @stac, @dr_coords, 
				@order_start_date, @rc_status, @dr_gn, @dr_mark, @dr_phone, @prev_price, 
				@cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @company_id, 
				@company_name, @current_sum, @current_dist, @is_upcoming, @driver_id, 
				@driver_name, @cl_comment, @client_dist, @current_time, @client_time, 
				@client_prev_sum;
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
/****** Object:  StoredProcedure [dbo].[GetOrderRatingBonus]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetOrderRatingBonus] 
	-- Add the parameters for the stored procedure here
	(@order_id int, @driver_id int, @add_bonus_in_table smallint, 
		@allow_bonus_duplicate smallint, @rating_bonus decimal(18, 5) OUT)
AS
BEGIN
	SET @rating_bonus = 0;
	SET @add_bonus_in_table = ISNULL(@add_bonus_in_table, 0);
	SET @allow_bonus_duplicate = ISNULL(@allow_bonus_duplicate, 0);
 
    DECLARE @order_rating_bonus decimal(18, 5), 
		@old_order_rating_bonus decimal(18, 5),
		@peak_one_start time(7),
		@peak_one_lenght smallint,
		@peak_one_bonus decimal(18, 5),
		@peak_two_start time(7),
		@peak_two_lenght smallint,
		@peak_two_bonus decimal(18, 5),
		@peak_three_start time(7),
		@peak_three_lenght smallint,
		@peak_three_bonus decimal(18, 5),
		@old_order_time int,
		@order_rating_bonus_time int,
		@old_order_rbonus_time int,
		@peak_one_bonus_time int,
		@peak_two_bonus_time int,
		@peak_three_bonus_time int,
		@start_order_date datetime,
		@expire_date datetime,
		@startOfToday datetime, 
		@ratingBonusCode varchar(255);

	SELECT TOP 1 @order_rating_bonus = order_rating_bonus,
		@old_order_rating_bonus = old_order_rating_bonus,
		@peak_one_start = peak_one_start,
		@peak_one_lenght = peak_one_lenght,
		@peak_one_bonus = peak_one_bonus,
		@peak_two_start = peak_two_start,
		@peak_two_lenght = peak_two_lenght,
		@peak_two_bonus = peak_two_bonus,
		@peak_three_start = peak_three_start,
		@peak_three_lenght = peak_three_lenght,
		@peak_three_bonus = peak_three_bonus,
		@old_order_time = old_order_time,
		@order_rating_bonus_time = order_rating_bonus_time,
		@old_order_rbonus_time = old_order_rbonus_time,
		@peak_one_bonus_time = peak_one_bonus_time,
		@peak_two_bonus_time = peak_two_bonus_time,
		@peak_three_bonus_time = peak_three_bonus_time
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	select @start_order_date = Nachalo_zakaza_data
		from Zakaz where BOLD_ID = @order_id;

	SET @expire_date = GETDATE();
	SET @ratingBonusCode = '';

	IF NOT @driver_id > 0 BEGIN
		SET @add_bonus_in_table = 0;
	END;

	SET @startOfToday = DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0);

	IF @peak_one_lenght > 0 AND @peak_one_bonus > 0 AND @peak_one_bonus_time > 0 AND
		@start_order_date >= (@startOfToday + @peak_one_start) AND 
		@start_order_date < DATEADD(MINUTE, @peak_one_lenght, @startOfToday + @peak_one_start)
	BEGIN
		SET @rating_bonus = @peak_one_bonus;
		SET @expire_date = DATEADD(MINUTE, @peak_one_bonus_time, GETDATE());
		SET @ratingBonusCode = 'peak_one';
	END
	ELSE IF @peak_two_lenght > 0 AND @peak_two_bonus > 0 AND @peak_two_bonus_time > 0 AND
		@start_order_date >= (@startOfToday + @peak_two_start) AND
		@start_order_date <= DATEADD(MINUTE, @peak_two_lenght, @startOfToday + @peak_two_start)
	BEGIN
		SET @rating_bonus = @peak_two_bonus;
		SET @expire_date = DATEADD(MINUTE, @peak_two_bonus_time, GETDATE());
		SET @ratingBonusCode = 'peak_two';
	END
	ELSE IF @peak_three_lenght > 0 AND @peak_three_bonus > 0 AND @peak_three_bonus_time > 0 AND
		@start_order_date >= (@startOfToday + @peak_three_start) AND
		@start_order_date <= DATEADD(MINUTE, @peak_three_lenght, @startOfToday + @peak_three_start)
	BEGIN
		SET @rating_bonus = @peak_three_bonus;
		SET @expire_date = DATEADD(MINUTE, @peak_three_bonus_time, GETDATE());
		SET @ratingBonusCode = 'peak_three';
	END
	ELSE IF @old_order_rating_bonus > 0 AND @old_order_time > 0 AND 
		@start_order_date < GETDATE() AND @old_order_rbonus_time > 0 AND 
		ABS(DATEDIFF(SECOND, @start_order_date, GETDATE())) >= @old_order_time
	BEGIN
		SET @rating_bonus = @old_order_rating_bonus;
		SET @expire_date = DATEADD(MINUTE, @old_order_rbonus_time, GETDATE());
		SET @ratingBonusCode = 'old_order';
	END
	ELSE IF @order_rating_bonus > 0 AND @order_rating_bonus_time > 0
	BEGIN
		SET @rating_bonus = @order_rating_bonus;
		SET @expire_date = DATEADD(MINUTE, @order_rating_bonus_time, GETDATE());
		SET @ratingBonusCode = 'simple_order';
	END;

	IF @add_bonus_in_table = 1 AND @rating_bonus > 0 BEGIN
		EXEC InsertDriverRating @driver_id, @expire_date, 
			@ratingBonusCode, @rating_bonus, @allow_bonus_duplicate;
	END

	UPDATE Zakaz 
	SET driver_rating_diff = @rating_bonus,
	driver_rating_expire_date = @expire_date,
	driver_rating_bonus_code = @ratingBonusCode
	WHERE BOLD_ID = @order_id;
END



GO
/****** Object:  StoredProcedure [dbo].[IncOrdersPriorityById]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[IncrementOrdersPriority]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertCompletedOrder]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertDriverRating]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertDriverRating] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @expire_date datetime, @change_code varchar(255), 
	@change_value decimal(18,5), @allow_bonus_duplicate smallint)
AS
BEGIN 
	DECLARE @duplicate_count int;
	SET @duplicate_count = 0;

	IF NOT (@allow_bonus_duplicate = 1) BEGIN
		SELECT @duplicate_count = COUNT(id) FROM DRIVER_RATING
		WHERE driver_id = @driver_id AND change_code = @change_code AND
			expire_date < GETDATE()
	END;

	IF @duplicate_count = 0 BEGIN
		INSERT INTO DRIVER_RATING 
			(driver_id, expire_date, change_code, change_value)
			VALUES (@driver_id, @expire_date, @change_code, @change_value);
	END;
END









GO
/****** Object:  StoredProcedure [dbo].[InsertEvent]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertEvent2]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertEvent3]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertFictiveDrOrder]    Script Date: 10.05.2019 0:05:05 ******/
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

	DECLARE @dr_num int, @dont_restime smallint;
	
	SET @dr_num = 0;
	SET @order_id = -1;
	
	SELECT @dr_num=Pozyvnoi, 
	@dont_restime = ISNULL(dont_reset_time, 0) 
	FROM Voditelj
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
		
		if(@set_last_ord_time>0) AND (@dont_restime <> 1) 
		BEGIN
			UPDATE Voditelj 
			SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP
			WHERE BOLD_ID=@driver_id;
		END;
		
	END
	END
END

GO
/****** Object:  StoredProcedure [dbo].[InsertNewDriverIncome]    Script Date: 10.05.2019 0:05:05 ******/
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
    DECLARE @last_ts int, @bold_ts int, @daily_count int, @daily_expire smallint;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	SET @its_dayly = ISNULL(@its_dayly,0);
	SET @summ = ISNULL(@summ,0);
	SET @idt = ISNULL(@idt, GETDATE());
	SET @dr_num = ISNULL(@dr_num, 0);
	SET @count=0;
	
	SELECT @daily_expire = daily_payment_expire FROM Voditelj 
	WHERE Pozyvnoi = @dr_num
	
	SET @daily_count=0; 
	SELECT @daily_count=COUNT(*) FROM Vyruchka_ot_voditelya vv
	WHERE vv.Pozyvnoi=@dr_num and CAST(vv.Data_postupleniya as date)=CAST(@idt as DATE)
	and vv.ITS_DAYLY=1;
	
	IF(NOT ((@its_dayly=1) AND (@daily_count>0)) OR (@its_dayly=1 AND @daily_expire > 0 AND @daily_expire < 24))
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
/****** Object:  StoredProcedure [dbo].[InsertNewOrder]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertNewOrderDictItem]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertNewOrderRetNum]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertOnHandAttemptOrder]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParams]    Script Date: 10.05.2019 0:05:05 ******/
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
		AND Telefon_klienta=@phone AND Yavl_pochasovym=0;
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsAlt]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClient]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientEx]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertOrderWithParamsRClientEx] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
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
		end_adres = @enadres,
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
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientFBot]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertOrderWithParamsRClientFBot] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, 
	@src_id varchar(50), @ord_num  int OUT, 
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
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status,
		rclient_id=@client_id,
		rclient_status=1,
		alarmed=1,
		src = 1,
		src_id = @src_id
		WHERE BOLD_ID=@order_id;
	END
	END;
END






GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRClientWCoords]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertOrderWithParamsRClientWCoords] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, 
	@lat varchar(50), @lon varchar(50), @ord_num  int OUT, 
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
	SET @lat=ISNULL(@lat,'');
	SET @lon=ISNULL(@lon,'');
	
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
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status,
		rclient_id=@client_id,
		rclient_status=1,
		alarmed=1,
		rclient_lat=@lat,
		rclient_lon=@lon
		WHERE BOLD_ID=@order_id;
	END
	END;
END





GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithParamsRDispatcher]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertOrderWithParamsRDispatcher] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
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
		Adres_vyzova_vvodim=@adres,
		Telefon_klienta=@phone, 
		Opr_s_obsh_linii=@color_check,
		Yavl_pochasovym=@op_order,
		Ustan_pribytie=@colored_new,
		Adres_okonchaniya_zayavki=@ab_num,
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status
		--rclient_id=@client_id,
		--rclient_status=1,
		--alarmed=1
		WHERE BOLD_ID=@order_id;
	END
	END;
END






GO
/****** Object:  StoredProcedure [dbo].[InsertOrderWithStatus]    Script Date: 10.05.2019 0:05:05 ******/
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

	SELECT * FROM Zakaz ord  
	WHERE ord.Zavershyon=0 
	AND (ord.REMOTE_DRNUM=@dr_num OR ord.Pozyvnoi_ustan=@dr_num);
	
		IF(@@ROWCOUNT=0 OR @status<>25)
		BEGIN
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
END


GO
/****** Object:  StoredProcedure [dbo].[ManualSetOrderRemoteStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[MoveOrderToArhived2V]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[MoveOrdPortionToArhived2V]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[One10SecTask]    Script Date: 10.05.2019 0:05:05 ******/
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
			@auto_neardriver_onlineorders smallint, @auto_neardriver_onlinetime int,
			@auto_bsect_notmanual_ord smallint, @auto_close_client_canceling smallint,
			@auto_close_clcancel_time int, @auto_arh_empty_orders smallint,
			@use_fordbroadcast_priority smallint,
			@auto_for_all_tender smallint,
			@auto_for_all_longtime int,
			@auto_for_all_empty_sector smallint,
			@dont_auto_wtout_adr_appr smallint,
			@early_orders_started_time smallint,
            @unasgn_ord_auto_dr_que_set_time int;
	
	SELECT TOP 1 @auto_bsector_longorders=ISNULL(auto_bsector_longorders,0),
	@auto_bsectorid_longorders=ISNULL(auto_bsectorid_longorders,-1),
	@auto_bsector_longtime=ISNULL(auto_bsector_longtime,0),
	@auto_bsector_onlineorders=ISNULL(auto_bsector_onlineorders,0),
	@auto_bsectorid_onlineorders=ISNULL(auto_bsectorid_onlineorders,-1),
	@auto_bsector_onlinetime=ISNULL(auto_bsector_onlinetime,0),
	@auto_neardriver_onlineorders=ISNULL(auto_neardriver_onlineorders,0), 
	@auto_neardriver_onlinetime=ISNULL(auto_neardriver_onlinetime,0),
	@auto_bsect_notmanual_ord=ISNULL(auto_bsect_notmanual_ord,0),
	@auto_close_client_canceling=ISNULL(auto_close_client_canceling,0),
	@auto_close_clcancel_time=ISNULL(auto_close_clcancel_time,7),
	@auto_arh_empty_orders=ISNULL(auto_arh_empty_orders,0),
	@use_fordbroadcast_priority = use_fordbroadcast_priority,
	@auto_for_all_tender = auto_for_all_tender,
	@auto_for_all_longtime = auto_for_all_longtime,
	@auto_for_all_empty_sector = auto_for_all_empty_sector,
	@dont_auto_wtout_adr_appr = dont_auto_wtout_adr_appr,
	@early_orders_started_time = early_orders_started_time,
    @unasgn_ord_auto_dr_que_set_time = unasgn_ord_auto_dr_que_set_time
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @success=0;
	SET @dont_auto_wtout_adr_appr = ISNULL(@dont_auto_wtout_adr_appr, 0);

	if @auto_bsectorid_longorders<=-1 begin
		SELECT TOP 1 @auto_bsectorid_longorders=BOLD_ID FROM Sektor_raboty;
	end

	if @auto_bsectorid_onlineorders<=-1 begin
		SELECT TOP 1 @auto_bsectorid_onlineorders=BOLD_ID FROM Sektor_raboty;
	end

	BEGIN TRY

        IF @unasgn_ord_auto_dr_que_set_time > 0 BEGIN
            UPDATE dbo.Zakaz 
			SET 
			REMOTE_SET = 8, REMOTE_SYNC = 1, vypolnyaetsya_voditelem = 
            [dbo].[GetFirstQueueNearSectDriverId](SECTOR_ID), 
            REMOTE_DRNUM = [dbo].[GetDrNumByDrId]([dbo].[GetFirstQueueNearSectDriverId](SECTOR_ID)),
			Pozyvnoi_ustan = [dbo].[GetDrNumByDrId]([dbo].[GetFirstQueueNearSectDriverId](SECTOR_ID))
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 2 OR REMOTE_SET = 3) AND (SECTOR_ID > 0) 
			and (Predvariteljnyi=0 OR Zadeistv_predvarit = 1) 
            AND vypolnyaetsya_voditelem <= 0
			AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @unasgn_ord_auto_dr_que_set_time)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0))
        END;

		UPDATE dbo.Zakaz 
			SET is_started_early = 1
			WHERE is_early = 1 AND is_started_early = 0 AND 
			Arhivnyi = 0 AND Zavershyon = 0  
			AND ((ABS(DATEDIFF(MINUTE, early_date, GETDATE())) < @early_orders_started_time)
			OR early_date < GETDATE()) AND Telefon_klienta<>'' AND Adres_vyzova_vvodim<>''; 

		if @auto_for_all_tender = 1 AND @auto_for_all_longtime > 0 BEGIN
			UPDATE dbo.Zakaz 
			SET 
			--konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), 
			--SECTOR_ID = (CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END),
			REMOTE_SET=2, Priority_counter=0, for_all_sectors = 1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 2)  
			and (Predvariteljnyi=0) and (rclient_status=0) AND for_all_sectors <> 1
			AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_for_all_longtime)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0))
			
			IF @@ROWCOUNT > 0 BEGIN

			IF (@use_fordbroadcast_priority = 1) 
			BEGIN
				DELETE FROM DR_ORD_PRIORITY WHERE order_id IN 
				(SELECT BOLD_ID FROM Zakaz 
					WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 2 OR REMOTE_SET = 3)  
					and (Predvariteljnyi=0) and (rclient_status=0) AND for_all_sectors <> 1
					AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_for_all_longtime)
					AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0)));
			END;

			EXEC SetOrdersWideBroadcasts 1, '';

			END;

			SET @success=1;
		END;

		if @auto_bsector_longorders>0 and @auto_bsector_longtime>0 and @auto_bsectorid_longorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), 
			SECTOR_ID = (CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_longorders END), REMOTE_SET=2, Priority_counter=0, 
			for_all_sectors = (CASE WHEN (detected_sector > 0 AND failed_adr_coords_detect <= 0 AND (dbo.GetSectorDrCount(detected_sector) > 0 OR @auto_for_all_empty_sector <> 1)) THEN 0 ELSE 1 END),
			Adres_vyzova_vvodim = CAST(CASE WHEN (adr_manual_set=0 AND @auto_bsect_notmanual_ord=1) THEN 'позвони клиенту' ELSE Adres_vyzova_vvodim END AS varchar(255))
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) and (rclient_status=0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_longtime)
			AND Telefon_klienta<>'' AND ((Adres_vyzova_vvodim<>'' AND adr_manual_set=1) OR (@auto_bsect_notmanual_ord=1 AND adr_manual_set=0)) AND
			((adr_manual_set = 1) OR (@dont_auto_wtout_adr_appr=0))
			SET @success=1;
		end
		if @auto_bsector_onlineorders>0 and @auto_bsector_onlinetime>0 and @auto_bsectorid_onlineorders>-1 begin
			UPDATE dbo.Zakaz SET konechnyi_sektor_raboty=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_onlineorders END), 
			SECTOR_ID=(CASE WHEN (detected_sector > 0) THEN detected_sector ELSE @auto_bsectorid_onlineorders END), REMOTE_SET=2, Priority_counter=0,
			for_all_sectors = (CASE WHEN (detected_sector > 0 AND failed_adr_coords_detect <= 0 AND (dbo.GetSectorDrCount(detected_sector) > 0 OR @auto_for_all_empty_sector <> 1)) THEN 0 ELSE 1 END)
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET = 0) and (Predvariteljnyi=0) AND rclient_id>-1 and (rclient_status>0)
			AND (ABS(DATEDIFF(SECOND, Nachalo_zakaza_data, GETDATE())) > @auto_bsector_onlinetime)
			AND Telefon_klienta<>'' AND Adres_vyzova_vvodim<>''
			SET @success=1;
		end
		if @auto_close_client_canceling>0 and @auto_close_clcancel_time>0 begin
			UPDATE dbo.Zakaz SET REMOTE_SET=100, Zavershyon=1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET <= 8) and (Predvariteljnyi=0) AND (rclient_id > -1 OR src > 0) and (rclient_status=-1)
			AND (ABS(DATEDIFF(SECOND, LAST_STATUS_TIME, GETDATE())) > @auto_close_clcancel_time)
			SET @success=1;
		end
		if @auto_arh_empty_orders = 1 begin
			UPDATE dbo.Zakaz SET REMOTE_SET = 100, Zavershyon = 1, Arhivnyi = 1, arhive_sms_state = 1
			WHERE (Arhivnyi = 0) AND (Zavershyon = 0) AND (REMOTE_SET < 8) AND (Predvariteljnyi = 0) 
			AND Pozyvnoi_ustan = 0 AND (ABS(DATEDIFF(HOUR, LAST_STATUS_TIME, GETDATE())) > 5)
			SET @success = 1;
		end
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END

GO
/****** Object:  StoredProcedure [dbo].[One3SecTask]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[OneMinuteTask]    Script Date: 10.05.2019 0:05:05 ******/
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
		--UPDATE Voditelj 
		--SET DR_SUMM=dbo.GetDrWorkSumm(BOLD_ID);

		EXEC CheckDriversRatingExpires;
	END TRY
	BEGIN CATCH
		SET @success=0;
	END CATCH;

END


GO
/****** Object:  StoredProcedure [dbo].[ProceedOperationRequest]    Script Date: 10.05.2019 0:05:05 ******/
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
		@edate datetime, @prev_dsumm decimal(28,10), @new_dsumm decimal(28,10), 
		@driver_id int, @expire_date datetime, @use_drivers_rating smallint, 
		@order_late_rating_fine decimal(18, 5), @order_late_rating_time int,
		@order_refusal_rating_fine decimal(18, 5), @order_refusal_balance_fine decimal(18, 5),
		@order_refusal_rating_time int, @dr_rating decimal(18,5);

	SET @op_answer = '{"command":"opa","scs":"yes","opnm":"'+
		@opnm+'",';
	SET @res = -1;
	SET @DebtSumm = 0;
	SET @DrTakeSumm = 0;
	SET @DrSumm = 0;
	SET @DrFixedSumm = 0;

	SELECT TOP 1 
		@use_drivers_rating = use_drivers_rating,
		@order_late_rating_fine = order_late_rating_fine,
		@order_late_rating_time = order_late_rating_time, 
		@order_refusal_rating_fine = order_refusal_rating_fine,
		@order_refusal_balance_fine = order_refusal_balance_fine,
		@order_refusal_rating_time = order_refusal_rating_time
		FROM Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';

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

		UPDATE Voditelj SET cc_updated = 1 
		WHERE (last_lat <> @prm4 OR last_lon <> @prm5) AND BOLD_ID = ISNULL(@prm1,-1);

		UPDATE Voditelj SET last_lat=@prm4, last_lon=@prm5, last_cctime=GETDATE() WHERE BOLD_ID=ISNULL(@prm1,-1);
		SET @op_answer = @op_answer + '"lcc":"ok",';
	end
		
	if (@opnm='dr_bal')
	begin
	
		SET @dr_balance =0;
		SET @last12h_summ=0;
		SET @dr_rating = 0;

		IF ISNULL(@prm1,-1) > 0 AND @use_drivers_rating = 1 BEGIN
			SET @dr_rating = dbo.GetDriverRating(ISNULL(@prm1,-1));
		END;
	
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
			CAST(CAST(@dr_balance as INT) as VARCHAR(255)) + '",' + '"lst12hs":"'+
			CAST(CAST(@last12h_summ as INT) as VARCHAR(255)) + '",';

		IF @use_drivers_rating = 1 BEGIN
			SET @op_answer = @op_answer + '"dr_rating":"'+
			CAST(ISNULL(@dr_rating, 0) as VARCHAR(255)) + '",';
		END;
	end

	if (@opnm='dr_refuse')
	begin
		SET @driver_id = ISNULL(@prm1,-1);

		IF @driver_id > 0 BEGIN 
			IF @order_refusal_rating_time > 0 AND 
				@order_refusal_rating_fine > 0 AND @use_drivers_rating = 1
			BEGIN
				SET @order_refusal_rating_fine = -@order_refusal_rating_fine;
				SET @expire_date = DATEADD(MINUTE, @order_refusal_rating_time, GETDATE());
				EXEC InsertDriverRating @driver_id, @expire_date, 
					'dr_refuse', @order_refusal_rating_fine, 0;
			END;

			IF @order_refusal_balance_fine > 0 BEGIN
				UPDATE Voditelj 
				SET DRIVER_BALANCE = DRIVER_BALANCE - @order_refusal_balance_fine
				WHERE BOLD_ID = @driver_id;
			END;
		END;

		SET @op_answer = @op_answer + '"dr_refuse":"ok",';
	end

	if (@opnm='dr_order_late')
	begin
		SET @driver_id = ISNULL(@prm1,-1);

		IF @driver_id > 0 AND @order_late_rating_fine > 0 AND 
			@order_late_rating_time > 0 AND @use_drivers_rating = 1
		BEGIN
			SET @order_late_rating_fine = -@order_late_rating_fine;
			SET @expire_date = DATEADD(MINUTE, @order_late_rating_time, GETDATE());
			EXEC InsertDriverRating @driver_id, @expire_date, 
				'dr_order_late', @order_late_rating_fine, 0;
		END;

		SET @op_answer = @op_answer + '"dr_order_late":"ok",';
	end

	if (@opnm='wtl')
	begin
		SET @op_answer = @op_answer + '"wtl":"ok",' + dbo.GetJSONWaitTimesList();
	end
	
	SET @op_answer = @op_answer + '"msg_end":"ok"}';
	
END




GO
/****** Object:  StoredProcedure [dbo].[RealizeReservePresent]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[RealizeTDEvent]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[RecalcCurrentOrderRatingBonuses]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RecalcCurrentOrderRatingBonuses] 
	-- Add the parameters for the stored procedure here
AS
BEGIN 
	DECLARE @CURSOR cursor, @order_id int, 
		@rating_bonus decimal(18, 5);

	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT BOLD_ID  
	FROM Zakaz 
	WHERE Zavershyon = 0 AND Arhivnyi = 0 AND vypolnyaetsya_voditelem <= 0;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC GetOrderRatingBonus @order_id, 0, 0, 0, 
			@rating_bonus = @rating_bonus OUTPUT;

		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id
	END
	CLOSE @CURSOR
END













GO
/****** Object:  StoredProcedure [dbo].[RecoveryOrder]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[RefreshDrOrdPriorityBroadcasts]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[RefreshDrOrdPriorityBroadcasts] 
	-- Add the parameters for the stored procedure here
AS
BEGIN 
	DECLARE @CURSOR cursor, @DRID int, @driver_bcast varchar(max);
				
			SELECT BOLD_ID FROM Voditelj WHERE V_rabote=1;
			IF @@ROWCOUNT>0
			BEGIN

				SET @CURSOR  = CURSOR SCROLL
				FOR SELECT BOLD_ID FROM Voditelj WHERE V_rabote=1;
					
				/*Открываем курсор*/
				OPEN @CURSOR
				/*Выбираем первую строку*/
				FETCH NEXT FROM @CURSOR INTO @DRID;
				/*Выполняем в цикле перебор строк*/
				WHILE @@FETCH_STATUS = 0
				BEGIN
					SET @driver_bcast = dbo.GetJSONDriverOrdersBCasts(@DRID);
					SET @driver_bcast = ISNULL(@driver_bcast,'');

					IF @driver_bcast = '' BEGIN
						SET @driver_bcast = '{"command":"ford","ocnt":"0","msg_end":"ok"}';
					END

					UPDATE Voditelj SET forders_wbroadcast = @driver_bcast
					WHERE BOLD_ID = @DRID;
					
					SET @driver_bcast = CAST(@DRID as varchar(50)) + ' : [' +@driver_bcast+']';

					--INSERT INTO DEBUG_LOG VALUES(@driver_bcast);
					
					FETCH NEXT FROM @CURSOR INTO @DRID;
				END
				CLOSE @CURSOR

				UPDATE Objekt_vyborki_otchyotnosti 
			    SET has_ford_wbroadcast=1;
			END
END



GO
/****** Object:  StoredProcedure [dbo].[ReserveOrderPresent]    Script Date: 10.05.2019 0:05:05 ******/
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
		@ab_count int, @person_id int,
		@prize_reserved_limit int;
	SET @count = 0;
	SET @ab_count = 0;
	SET @person_id = -1;

	SELECT TOP 1 
	@prize_reserved_limit = prize_reserved_limit
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

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
	
	UPDATE Persona SET RESERVED_PRESENTS=RESERVED_PRESENTS+1 
	WHERE BOLD_ID=@person_id AND 
			(RESERVED_PRESENTS < @prize_reserved_limit OR 
			@prize_reserved_limit <= 0);
	
	SET @count=@@ROWCOUNT;

	IF @count > 0 BEGIN
		UPDATE Zakaz 
		SET Nomer_skidki=0 
		WHERE BOLD_ID=@order_id;
	END
	
	END
	
END




GO
/****** Object:  StoredProcedure [dbo].[ResetRemoteDriversFlags]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[RestoreRemoteDriversFlags]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverDailyPaymStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverFromPretendents]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverOnLine]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverOutLine]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverRemoteStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverSector]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverSectWBrodcastStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetDriverStatSyncStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetIndOrderSendStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOnHandOrderGoStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint,
		@bonusUse decimal(28, 10);
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN

	EXEC CalcBonusSumm @order_id, 0, @bonusUse = @bonusUse OUTPUT;
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);

	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
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
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus2]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus2] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint,
		@bonusUse decimal(28, 10);
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN

	EXEC CalcBonusSumm @order_id, 0, @bonusUse = @bonusUse OUTPUT;
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3,
	Zakaz.fixed_time=@order_time 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);

	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
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
/****** Object:  StoredProcedure [dbo].[SetOrderCompleteAttemptStatus3]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetOrderCompleteAttemptStatus3] 
	-- Add the parameters for the stored procedure here
	(@order_id int,  @driver_id int, @summ float, @count int OUT, @status int, @order_time int, @tm_distance int)
AS
BEGIN 
	DECLARE @dont_reset_time smallint,
		@bonusUse decimal(28, 10);
	SET @count = 0;

	SELECT @count=COUNT(*) FROM Zakaz
	WHERE ((Zakaz.REMOTE_SET=8) OR 
	(Zakaz.REMOTE_SET=10)) AND 
	(Zakaz.BOLD_ID=@order_id) AND
	(Zakaz.vypolnyaetsya_voditelem=@driver_id);
	
	IF(@count>0)
	BEGIN

	EXEC CalcBonusSumm @order_id, 0, @bonusUse = @bonusUse OUTPUT;
	
	UPDATE Zakaz 
	SET Zakaz.REMOTE_SET=@status,
	Zakaz.REMOTE_SUMM=@summ,
	Zakaz.Uslovn_stoim=@summ,
	Zakaz.CLIENT_SMS_SEND_STATE=3,
	Zakaz.fixed_time=@order_time,
	Zakaz.tm_distance=@tm_distance 
	WHERE  
	(Zakaz.BOLD_ID=@order_id);
	
	SET @dont_reset_time = ISNULL(@dont_reset_time, 0)

	IF @driver_id > 0 BEGIN
		SELECT @dont_reset_time = dont_reset_time 
		FROM Voditelj 
		WHERE BOLD_ID = @driver_id;
	END
	
	IF @dont_reset_time <> 1 BEGIN
		UPDATE Voditelj 
		SET Vremya_poslednei_zayavki=CURRENT_TIMESTAMP 
		WHERE BOLD_ID=@driver_id;
	END
	
	SET @count=@@ROWCOUNT;
	
	EXEC CheckDriverBusy @driver_id;
	
	END
	
END



GO
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAllowStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderDispCancelAttStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAllowStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderDriverCancelAttStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderGoStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderOccupAttemptStatus2]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderParam]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrderRemoteStatus]    Script Date: 10.05.2019 0:05:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SetOrdersWideBroadcasts]    Script Date: 10.05.2019 0:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOrdersWideBroadcasts] 
	-- Add the parameters for the stored procedure here
	(@set_owbcast int, @forders_bcasts varchar(5000) OUT)
AS
BEGIN 

	DECLARE @db_version INT, @use_fordbroadcast_priority int, 
		@use_drivers_rating smallint;
	
	SELECT TOP 1 @db_version=ISNULL(db_version,3),
	@use_fordbroadcast_priority = ISNULL(use_fordbroadcast_priority,0),
	@use_drivers_rating = use_drivers_rating 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	IF @use_drivers_rating = 1 BEGIN
		EXEC RecalcCurrentOrderRatingBonuses;
	END;

	SET @forders_bcasts='';
	IF (ISNULL(@set_owbcast,0)=1)
	BEGIN
		IF @use_fordbroadcast_priority <> 1
		BEGIN
			SELECT @forders_bcasts=ISNULL(dbo.GetJSONOrdersBCasts(),'');
			UPDATE Objekt_vyborki_otchyotnosti 
			SET forders_wbroadcast=@forders_bcasts,
			has_ford_wbroadcast=1;
		END
		ELSE
		BEGIN
			EXEC RefreshDrOrdPriorityBroadcasts;
		END
	END
	ELSE
	BEGIN
		UPDATE Objekt_vyborki_otchyotnosti
		SET has_ford_wbroadcast=0;
	END;
END

GO
/****** Object:  StoredProcedure [dbo].[SetWideBroadcasts]    Script Date: 10.05.2019 0:05:05 ******/
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertOrderWithSectorAndTariffParams] 
	-- Add the parameters for the stored procedure here
	(@adres varchar(255), @enadres varchar(255), @phone varchar(255),
	@disp_id int, @status int, @color_check int, 
	@op_order int, @gsm_detect_code int, 
	@deny_duplicate int, @colored_new int, 
	@ab_num varchar(255), @client_id int, 
	@lat varchar(50), @lon varchar(50), @sector_id int, 
    @district_id int, @company_id int, @tplan_id int, @for_all smallint,
    @driver_id int, @shedule_date DATETIME,
    @cl_comment varchar(255), @client_time int, 
    @client_distance [decimal](18, 5), @client_prev_summ [decimal](18, 5),
    @dest_lat [decimal](18, 5), @dest_lon [decimal](18, 5),
    @first_stop_adr [varchar](255), @first_stop_lat [decimal](18, 5),
    @first_stop_lon [decimal](18, 5), @second_stop_adr [varchar](255),
    @second_stop_lat [decimal](18, 5), @second_stop_lon [decimal](18, 5),
    @ord_num  int OUT, @order_id int OUT)
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
	SET @lat=ISNULL(@lat,'');
	SET @lon=ISNULL(@lon,'');
	
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
		end_adres = @enadres,
		Primechanie=@comment,
		REMOTE_SET=@status,
		rclient_id=@client_id,
		rclient_status=1,
		alarmed=1,
        vypolnyaetsya_voditelem = (CASE WHEN (@driver_id > 0) THEN @driver_id ELSE -1 END),
        Predvariteljnyi = (CASE WHEN (@shedule_date IS NULL) THEN 0 ELSE 1 END),
        Data_predvariteljnaya = (CASE WHEN (@shedule_date IS NULL) THEN GETDATE() ELSE @shedule_date END),
        detected_sector = (CASE WHEN (@sector_id > 0) THEN @sector_id ELSE detected_sector END),
        district_id = (CASE WHEN (@district_id > 0) THEN @district_id ELSE district_id END),
		company_id = (CASE WHEN (@company_id > 0) THEN @company_id ELSE company_id END),
        rclient_lat = (CASE WHEN (@lat <> '' AND @lat <> '0') THEN @lat ELSE rclient_lat END),
        rclient_lon = (CASE WHEN (@lon <> '' AND @lon <> '0') THEN @lon ELSE rclient_lon END),
        comment = @cl_comment, 
        client_time = @client_time, 
        client_dist = @client_distance, 
        client_prev_sum = @client_prev_summ,
        dest_lat = @dest_lat,
        dest_lon = @dest_lon,
        first_stop_adr = @first_stop_adr,
        first_stop_lat = @first_stop_lat,
        first_stop_lon = @first_stop_lon,
        second_stop_adr = @second_stop_adr,
        second_stop_lat = @second_stop_lat,
        second_stop_lon = @second_stop_lon
        WHERE BOLD_ID=@order_id;

	END
	END;
END







GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewDriverRetID] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
    EXEC [dbo].[InsertPersonaRetID] @bold_type = 19, @bold_id = @bold_id OUTPUT;
    
    INSERT INTO Voditelj (BOLD_ID, BOLD_TYPE, Pozyvnoi, Data_po_umolchaniyu) 
	VALUES (@bold_id, 19, 0, GETDATE());
      
    COMMIT TRAN
END






GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewSectorRetID] 
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
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 15, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 15, 0);
    
    INSERT INTO Sektor_raboty (BOLD_ID, BOLD_TYPE) 
	VALUES (@bold_id, 15);

    INSERT INTO Spravochnik (BOLD_ID, BOLD_TYPE, Naimenovanie, Kommentarii, Identifikator) 
	VALUES (@bold_id, 15, 'НОВЫЙ СЕКТОР', '', 0);
	
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
END






GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewDriverCompanyRetID] 
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
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 26, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 26, 0);
    
    INSERT INTO Gruppa_voditelei (BOLD_ID, BOLD_TYPE) 
	VALUES (@bold_id, 26);

    INSERT INTO Spravochnik (BOLD_ID, BOLD_TYPE, Naimenovanie, Kommentarii, Identifikator) 
	VALUES (@bold_id, 26, 'НОВАЯ КОМПАНИЯ', '', 0);
	
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
END






GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertPersonaRetID] 
	-- Add the parameters for the stored procedure here
	(@bold_type int, @bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
	SELECT TOP 1 @bold_id=BOLD_ID FROM BOLD_ID;
    
    UPDATE [BOLD_ID] set [BOLD_ID] = [BOLD_ID]+1;
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, @bold_type, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, @bold_type, 0);
    
    INSERT INTO Persona (BOLD_ID, BOLD_TYPE) 
	VALUES (@bold_id, @bold_type);
	
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
END






GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewPhoneAddrRetID] 
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
    
    INSERT INTO BOLD_XFILES 
    (BOLD_ID, BOLD_TYPE, BOLD_TIME_STAMP, 
    EXTERNAL_ID) 
	VALUES (@bold_id, 7, 0, '{'+CONVERT(varchar(36),NEWID())+'}') 
    
    INSERT INTO BOLD_OBJECT(BOLD_ID, BOLD_TYPE,
    [READ_ONLY]) VALUES(@bold_id, 7, 0);
    
    INSERT INTO Sootvetstvie_parametrov_zakaza (BOLD_ID, BOLD_TYPE) 
	VALUES (@bold_id, 7);
	
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
END







GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[InsertNewAbonentRetID] 
	-- Add the parameters for the stored procedure here
	(@bold_id int OUT)
AS
BEGIN 
    DECLARE @new_ord_num int, @last_ct datetime, @curr_dt datetime;
    DECLARE @last_ts int, @bold_ts int;   

	--SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	
	SET @bold_id = -1;
	
	BEGIN TRAN
	
    EXEC [dbo].[InsertPersonaRetID] @bold_type = 5, @bold_id = @bold_id OUTPUT;
    
    UPDATE Persona SET Elektronnyi_adres = 'Индивидуальный клиент'
    WHERE BOLD_ID = @bold_id;
      
    COMMIT TRAN
END







GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[RateDriver] 
	-- Add the parameters for the stored procedure here
	(@rate [decimal](18, 5),
	@driver_id int)
AS
BEGIN 

    DECLARE @current_rate [decimal](18, 5);
	
	if (@driver_id>0)
	BEGIN

        SELECT @current_rate = rate FROM Voditelj
        WHERE BOLD_ID = @driver_id;

        SET @current_rate = (@current_rate + @rate) / 2

		UPDATE Voditelj SET 
		rate = @current_rate, rate_count = (rate_count + 1)
		WHERE BOLD_ID = @driver_id;
	END;
END






GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateClientInfo] 
	-- Add the parameters for the stored procedure here
	(@name VARCHAR(255), @client_id int)
AS
BEGIN 
	UPDATE REMOTE_CLIENTS 
	SET name = @name 
	WHERE id = @client_id;
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetSectorMediumCoords] 
	-- Add the parameters for the stored procedure here
	(@sector_id int, @lat decimal(28, 10) OUT, @lon decimal(28, 10) OUT)
AS
BEGIN

    SET @lat = 0;
    SET @lon = 0;

    SELECT id
    FROM AREA_LINES
    WHERE sector_id = @sector_id;

    IF @@ROWCOUNT > 0 BEGIN
        SELECT @lat = AVG(lat), @lon = AVG(lon)
        FROM AREA_LINES
        WHERE sector_id = @sector_id;
    END;

    SET @lat = ISNULL(@lat, 0);
    SET @lon = ISNULL(@lon, 0);
END



GO


