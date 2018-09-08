CREATE VIEW [dbo].[EVENTS_VIEW]
AS
SELECT     tde.EVENT_ID, tde.CDATE, tde.ETYPE_ID, tde.DRIVER_ID, tde.ORDER_ID, tde.SECTOR_ID, tde.CLOSED, tde.EDATE, tde.DESCRIPTION, tde.ADRES, tde.PHONE, tde.DR_NUM, et.CODE, et.NAME, 
                      dr.Pozyvnoi
FROM         dbo.TD_EVENTS AS tde LEFT OUTER JOIN
                      dbo.EVENT_TYPES AS et ON tde.ETYPE_ID = et.ETYPE_ID LEFT OUTER JOIN
                      dbo.Sektor_raboty AS sr ON tde.SECTOR_ID = sr.BOLD_ID LEFT OUTER JOIN
                      dbo.Voditelj AS dr ON tde.DRIVER_ID = dr.BOLD_ID

GO

