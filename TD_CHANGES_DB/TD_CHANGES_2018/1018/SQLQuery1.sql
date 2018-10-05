USE [TD5R1]
GO

/****** Object:  Table [dbo].[DISTRICTS]    Script Date: 06.10.2018 0:13:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DISTRICTS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL,
	[company_id] [int] NOT NULL,
	[address] [varchar](2000) NOT NULL,
	[default_sector_id] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DISTRICTS] ADD  CONSTRAINT [DF_DISTRICTS_name]  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[DISTRICTS] ADD  CONSTRAINT [DF_DISTRICTS_company_id]  DEFAULT ((-1)) FOR [company_id]
GO

ALTER TABLE [dbo].[DISTRICTS] ADD  CONSTRAINT [DF_DISTRICTS_address]  DEFAULT ('') FOR [address]
GO

ALTER TABLE [dbo].[DISTRICTS] ADD  CONSTRAINT [DF_DISTRICTS_default_sector_id]  DEFAULT ((-1)) FOR [default_sector_id]
GO


