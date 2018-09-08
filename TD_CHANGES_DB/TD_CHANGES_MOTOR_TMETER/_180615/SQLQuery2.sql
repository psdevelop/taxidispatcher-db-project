USE [TD5R1]
GO

/****** Object:  View [dbo].[SMSSendOrders]    Script Date: 06/18/2015 16:29:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[CallItOrders]
AS
SELECT     BOLD_ID, Nomer_zakaza, Telefon_klienta, Adres_vyzova_vvodim, Pozyvnoi_ustan
FROM         dbo.Zakaz
WHERE		(Arhivnyi = 0) AND (Zavershyon = 0) AND 
			(call_it = 1) AND (ABS(DATEDIFF(minute, Konec_zakaza_data, GETDATE())) < 10) AND 
			(Telefon_klienta<>'')

GO
