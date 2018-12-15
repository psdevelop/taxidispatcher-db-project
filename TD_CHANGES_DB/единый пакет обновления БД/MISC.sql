USE [TD5R1081218SB]
GO

ALTER TABLE Objekt_vyborki_otchyotnosti ALTER COLUMN addit_rem_params VARCHAR (8000) NOT NULL;
GO

/****** Object:  Table [dbo].[DISTRICTS]    Script Date: 09.12.2018 3:50:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DISTRICTS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL CONSTRAINT [DF_DISTRICTS_name]  DEFAULT (''),
	[company_id] [int] NOT NULL CONSTRAINT [DF_DISTRICTS_company_id]  DEFAULT ((-1)),
	[address] [varchar](2000) NOT NULL CONSTRAINT [DF_DISTRICTS_address]  DEFAULT (''),
	[default_sector_id] [int] NOT NULL CONSTRAINT [DF_DISTRICTS_default_sector_id]  DEFAULT ((-1))
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO