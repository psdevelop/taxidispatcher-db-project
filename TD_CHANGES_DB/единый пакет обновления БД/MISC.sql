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

/****** Object:  Table [dbo].[RATING_LEVELS]    Script Date: 23.02.2019 0:47:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RATING_LEVELS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rating_start] [decimal](18, 5) NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_start]  DEFAULT ((0)),
	[rating_end] [decimal](18, 5) NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_end]  DEFAULT ((0)),
	[rating_level] [smallint] NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_level]  DEFAULT ((1))
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[WAIT_TIMES]    Script Date: 14.03.2019 2:46:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WAIT_TIMES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tval] [smallint] NOT NULL,
	[sound] [varchar](10) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[WAIT_TIMES] ADD  CONSTRAINT [DF_WAIT_TIMES_tval]  DEFAULT ((0)) FOR [tval]
GO

ALTER TABLE [dbo].[WAIT_TIMES] ADD  CONSTRAINT [DF_WAIT_TIMES_sound]  DEFAULT ('0') FOR [sound]
GO

/****** Object:  Table [dbo].[DAILY_PARAMS]    Script Date: 23.03.2019 2:36:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DAILY_PARAMS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_time] [time](7) NOT NULL,
	[end_time] [time](7) NOT NULL,
	[its_tax_percent] [smallint] NOT NULL,
	[tax_percent] [decimal](18, 5) NOT NULL,
	[fix_payment] [decimal](18, 5) NOT NULL,
	[no_percent_max_summ] [decimal](18, 5) NOT NULL,
	[no_percent_ms_payment] [decimal](18, 5) NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_start_time]  DEFAULT ('00:00') FOR [start_time]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_end_time]  DEFAULT ('00:00') FOR [end_time]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_its_tax_percent]  DEFAULT ((0)) FOR [its_tax_percent]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_tax_percent]  DEFAULT ((0)) FOR [tax_percent]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_fix_payment]  DEFAULT ((0)) FOR [fix_payment]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_no_percent_max_summ]  DEFAULT ((0)) FOR [no_percent_max_summ]
GO

ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_no_percent_ms_payment]  DEFAULT ((0)) FOR [no_percent_ms_payment]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTO_CLASS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUTO_CLASS] ADD  CONSTRAINT [DF_AUTO_CLASS_name]  DEFAULT ('') FOR [name]
GO

ALTER TABLE REMOTE_CLIENTS ALTER COLUMN name varchar(255) NOT NULL;
GO

