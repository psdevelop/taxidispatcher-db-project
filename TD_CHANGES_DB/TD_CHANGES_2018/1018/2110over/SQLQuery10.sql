USE [TD5R1]
GO

ALTER TABLE [dbo].[Voditelj]  WITH CHECK ADD  CONSTRAINT [CK_Voditelj] CHECK  (([Pozyvnoi]<(100000)))
GO

ALTER TABLE [dbo].[Voditelj] CHECK CONSTRAINT [CK_Voditelj]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Не может быть больше 99999' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Voditelj', @level2type=N'CONSTRAINT',@level2name=N'CK_Voditelj'
GO


