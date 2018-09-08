USE [TD5R1]
GO

/****** Object:  View [dbo].[EVENTS_VIEW]    Script Date: 11/25/2014 17:37:45 ******/
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

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[5] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tde"
            Begin Extent = 
               Top = 8
               Left = 6
               Bottom = 305
               Right = 166
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "et"
            Begin Extent = 
               Top = 5
               Left = 310
               Bottom = 117
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sr"
            Begin Extent = 
               Top = 184
               Left = 238
               Bottom = 304
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dr"
            Begin Extent = 
               Top = 129
               Left = 487
               Bottom = 249
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EVENTS_VIEW'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EVENTS_VIEW'
GO


