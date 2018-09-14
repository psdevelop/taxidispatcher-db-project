USE [TD5R1]
GO

/****** Object:  Table [dbo].[DRIVER_RATING]    Script Date: 24.08.2018 0:17:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DRIVER_RATING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[driver_id] [int] NOT NULL,
	[expire_date] [datetime] NOT NULL,
	[change_code] [varchar](255) NULL,
	[change_value] [decimal](18, 5) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DRIVER_RATING] ADD  CONSTRAINT [DF_DRIVER_RATING_expire]  DEFAULT (getdate()) FOR [expire_date]
GO

ALTER TABLE [dbo].[DRIVER_RATING] ADD  CONSTRAINT [DF_DRIVER_RATING_change_value]  DEFAULT ((0)) FOR [change_value]
GO


