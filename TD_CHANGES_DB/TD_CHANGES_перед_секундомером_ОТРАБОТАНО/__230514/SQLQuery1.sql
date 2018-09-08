USE [TD5R1]
GO

/****** Object:  View [dbo].[ActiveDriversState]    Script Date: 05/23/2014 18:03:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ActiveDriversState]
AS
SELECT     DR_SUMM, BOLD_ID, Pozyvnoi, V_rabote, Na_pereryve, rabotaet_na_sektore, Nomer_posl_sektora, Zanyat_drugim_disp, Vremya_poslednei_zayavki, REMOTE_STATUS, ITS_REMOTE_CLIENT, 
                      LAST_STATUS_TIME, has_active_events, use_dyn_balance, DRIVER_BALANCE
FROM         dbo.Voditelj AS dr
WHERE     (Pozyvnoi > 0)

GO


