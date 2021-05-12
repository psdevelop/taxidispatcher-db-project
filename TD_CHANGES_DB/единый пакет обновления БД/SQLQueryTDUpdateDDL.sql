USE [TD5R1]
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- TABLES
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'TARIFF_SCALES','U') IS NULL BEGIN
    PRINT 'Table TARIFF_SCALES not exist, creating...';

    /****** Object:  Table [dbo].[TARIFF_SCALES]    Script Date: 05.02.2020 23:54:48 ******/
    SET ANSI_NULLS ON

    SET QUOTED_IDENTIFIER ON

    SET ANSI_PADDING ON

    CREATE TABLE [dbo].[TARIFF_SCALES](
        [id] [int] IDENTITY(1,1) NOT NULL,
        [name] [varchar](255) NOT NULL,
        [price] [decimal](18, 5) NOT NULL,
        [start_sector_id] [int] NOT NULL,
        [end_sector_id] [int] NOT NULL
    ) ON [PRIMARY]

    SET ANSI_PADDING OFF

    ALTER TABLE [dbo].[TARIFF_SCALES] ADD  CONSTRAINT [DF_TARIFF_SCALES_name]  DEFAULT ('') FOR [name]

    ALTER TABLE [dbo].[TARIFF_SCALES] ADD  CONSTRAINT [DF_TARIFF_SCALES_price]  DEFAULT ((0)) FOR [price]

    ALTER TABLE [dbo].[TARIFF_SCALES] ADD  CONSTRAINT [DF_TARIFF_SCALES_start_sector_id]  DEFAULT ((-1)) FOR [start_sector_id]

    ALTER TABLE [dbo].[TARIFF_SCALES] ADD  CONSTRAINT [DF_TARIFF_SCALES_end_sector_id]  DEFAULT ((-1)) FOR [end_sector_id]
END
ELSE BEGIN
    PRINT 'Table TARIFF_SCALES exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'ROUTES_POINTS','U') IS NULL BEGIN
    PRINT 'Table ROUTES_POINTS not exist, creating...';

    	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

	SET ANSI_PADDING ON

	CREATE TABLE [dbo].[ROUTES_POINTS](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[name] [varchar](255) NOT NULL,
		[parent_id] [int] NOT NULL
	) ON [PRIMARY]

	SET ANSI_PADDING OFF

	ALTER TABLE [dbo].[ROUTES_POINTS] ADD  CONSTRAINT [DF_ROUTES_POINTS_name]  DEFAULT ('') FOR [name]

	ALTER TABLE [dbo].[ROUTES_POINTS] ADD  CONSTRAINT [DF_ROUTES_POINTS_parent_id]  DEFAULT ((-1)) FOR [parent_id]

END
ELSE BEGIN
    PRINT 'Table ROUTES_POINTS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'DRIVERS_OFFERS','U') IS NULL BEGIN
    PRINT 'Table DRIVERS_OFFERS not exist, creating...';

	/****** Object:  Table [dbo].[DRIVERS_OFFERS]    Script Date: 05.02.2020 15:37:55 ******/
	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

	SET ANSI_PADDING ON

	CREATE TABLE [dbo].[DRIVERS_OFFERS](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[driver_id] [int] NOT NULL,
		[start_date] [datetime] NOT NULL,
		[name] [varchar](255) NOT NULL,
		[auto_id] [int] NOT NULL,
		[start_point_id] [int] NOT NULL,
		[end_point_id] [int] NOT NULL
	) ON [PRIMARY]

	SET ANSI_PADDING OFF

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_driver_id]  DEFAULT ((-1)) FOR [driver_id]

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_start_date]  DEFAULT (getdate()) FOR [start_date]

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_name]  DEFAULT ('') FOR [name]

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_auto_id]  DEFAULT ((-1)) FOR [auto_id]

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_start_point_id]  DEFAULT ((-1)) FOR [start_point_id]

	ALTER TABLE [dbo].[DRIVERS_OFFERS] ADD  CONSTRAINT [DF_DRIVERS_OFFERS_end_point_id]  DEFAULT ((-1)) FOR [end_point_id]

END
ELSE BEGIN
    PRINT 'Table DRIVERS_OFFERS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'AUTO_CLASS','U') IS NULL BEGIN
    PRINT 'Table AUTO_CLASS not exist, creating...';

	SET ANSI_NULLS ON
	
	SET QUOTED_IDENTIFIER ON
	
	CREATE TABLE [dbo].[AUTO_CLASS](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[name] [varchar](255) NOT NULL
	) ON [PRIMARY]
	
	ALTER TABLE [dbo].[AUTO_CLASS] ADD  CONSTRAINT [DF_AUTO_CLASS_name]  DEFAULT ('') FOR [name]

END
ELSE BEGIN
    PRINT 'Table AUTO_CLASS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'DAILY_PARAMS','U') IS NULL BEGIN
    PRINT 'Table DAILY_PARAMS not exist, creating...';

	/****** Object:  Table [dbo].[DAILY_PARAMS]    Script Date: 23.03.2019 2:36:08 ******/
	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

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


	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_start_time]  DEFAULT ('00:00') FOR [start_time]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_end_time]  DEFAULT ('00:00') FOR [end_time]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_its_tax_percent]  DEFAULT ((0)) FOR [its_tax_percent]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_tax_percent]  DEFAULT ((0)) FOR [tax_percent]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_fix_payment]  DEFAULT ((0)) FOR [fix_payment]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_no_percent_max_summ]  DEFAULT ((0)) FOR [no_percent_max_summ]

	ALTER TABLE [dbo].[DAILY_PARAMS] ADD  CONSTRAINT [DF_DAILY_PARAMS_no_percent_ms_payment]  DEFAULT ((0)) FOR [no_percent_ms_payment]

END
ELSE BEGIN
    PRINT 'Table DAILY_PARAMS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'WAIT_TIMES','U') IS NULL BEGIN
    PRINT 'Table WAIT_TIMES not exist, creating...';

	/****** Object:  Table [dbo].[WAIT_TIMES]    Script Date: 14.03.2019 2:46:37 ******/
	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

	SET ANSI_PADDING ON

	CREATE TABLE [dbo].[WAIT_TIMES](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[tval] [smallint] NOT NULL,
		[sound] [varchar](10) NOT NULL
	) ON [PRIMARY]

	SET ANSI_PADDING OFF

	ALTER TABLE [dbo].[WAIT_TIMES] ADD  CONSTRAINT [DF_WAIT_TIMES_tval]  DEFAULT ((0)) FOR [tval]

	ALTER TABLE [dbo].[WAIT_TIMES] ADD  CONSTRAINT [DF_WAIT_TIMES_sound]  DEFAULT ('0') FOR [sound]

END
ELSE BEGIN
    PRINT 'Table WAIT_TIMES exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'RATING_LEVELS','U') IS NULL BEGIN
    PRINT 'Table RATING_LEVELS not exist, creating...';

	/****** Object:  Table [dbo].[RATING_LEVELS]    Script Date: 23.02.2019 0:47:04 ******/
	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[RATING_LEVELS](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[rating_start] [decimal](18, 5) NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_start]  DEFAULT ((0)),
		[rating_end] [decimal](18, 5) NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_end]  DEFAULT ((0)),
		[rating_level] [smallint] NOT NULL CONSTRAINT [DF_RATING_LEVELS_rating_level]  DEFAULT ((1))
	) ON [PRIMARY]

END
ELSE BEGIN
    PRINT 'Table RATING_LEVELS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'DISTRICTS','U') IS NULL BEGIN
    PRINT 'Table DISTRICTS not exist, creating...';

	/****** Object:  Table [dbo].[DISTRICTS]    Script Date: 09.12.2018 3:50:53 ******/
	SET ANSI_NULLS ON

	SET QUOTED_IDENTIFIER ON

	SET ANSI_PADDING ON

	CREATE TABLE [dbo].[DISTRICTS](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[name] [varchar](500) NOT NULL CONSTRAINT [DF_DISTRICTS_name]  DEFAULT (''),
		[company_id] [int] NOT NULL CONSTRAINT [DF_DISTRICTS_company_id]  DEFAULT ((-1)),
		[address] [varchar](2000) NOT NULL CONSTRAINT [DF_DISTRICTS_address]  DEFAULT (''),
		[default_sector_id] [int] NOT NULL CONSTRAINT [DF_DISTRICTS_default_sector_id]  DEFAULT ((-1))
	) ON [PRIMARY]

	SET ANSI_PADDING OFF

END
ELSE BEGIN
    PRINT 'Table DISTRICTS exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'users','U') IS NULL BEGIN
    PRINT 'Table users not exist, creating...';

	SET ANSI_NULLS ON
	
	SET QUOTED_IDENTIFIER ON
	
	CREATE TABLE [dbo].[users](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[username] [nvarchar](80) NOT NULL,
		[email] [nvarchar](254) NOT NULL,
		[password] [nvarchar](60) NOT NULL,
		[created_at] [datetime] NULL,
		[updated_at] [datetime] NULL
	) ON [PRIMARY]
	
	ALTER TABLE [dbo].[users] ADD PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	SET ANSI_PADDING ON
	
	CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique] ON [dbo].[users]
	(
		[email] ASC
	)
	WHERE ([email] IS NOT NULL)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	SET ANSI_PADDING ON
	
	CREATE UNIQUE NONCLUSTERED INDEX [users_username_unique] ON [dbo].[users]
	(
		[username] ASC
	)
	WHERE ([username] IS NOT NULL)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

END
ELSE BEGIN
    PRINT 'Table users exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'tokens','U') IS NULL BEGIN
    PRINT 'Table tokens not exist, creating...';

	SET ANSI_NULLS ON
	
	SET QUOTED_IDENTIFIER ON
	
	CREATE TABLE [dbo].[tokens](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[user_id] [int] NULL,
		[token] [nvarchar](255) NOT NULL,
		[type] [nvarchar](80) NOT NULL,
		[is_revoked] [bit] NULL,
		[created_at] [datetime] NULL,
		[updated_at] [datetime] NULL
	) ON [PRIMARY]
	
	ALTER TABLE [dbo].[tokens] ADD PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	SET ANSI_PADDING ON
	
	CREATE NONCLUSTERED INDEX [tokens_token_index] ON [dbo].[tokens]
	(
		[token] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	SET ANSI_PADDING ON
	
	CREATE UNIQUE NONCLUSTERED INDEX [tokens_token_unique] ON [dbo].[tokens]
	(
		[token] ASC
	)
	WHERE ([token] IS NOT NULL)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	ALTER TABLE [dbo].[tokens] ADD  DEFAULT ('0') FOR [is_revoked]
	
	ALTER TABLE [dbo].[tokens]  WITH CHECK ADD  CONSTRAINT [tokens_user_id_foreign] FOREIGN KEY([user_id])
	REFERENCES [dbo].[users] ([id])
	
	ALTER TABLE [dbo].[tokens] CHECK CONSTRAINT [tokens_user_id_foreign]

END
ELSE BEGIN
    PRINT 'Table tokens exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'contacts','U') IS NULL BEGIN
    PRINT 'Table contacts not exist, creating...';

	SET ANSI_NULLS ON
	
	SET QUOTED_IDENTIFIER ON
	
	CREATE TABLE [dbo].[contacts](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[name] [nvarchar](255) NULL,
		[email] [nvarchar](255) NULL,
		[title] [nvarchar](255) NULL,
		[tel] [nvarchar](255) NULL,
		[user_id] [int] NULL,
		[created_at] [datetime] NULL,
		[updated_at] [datetime] NULL
	) ON [PRIMARY]
	
	ALTER TABLE [dbo].[contacts] ADD PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	ALTER TABLE [dbo].[contacts]  WITH CHECK ADD  CONSTRAINT [contacts_user_id_foreign] FOREIGN KEY([user_id])
	REFERENCES [dbo].[users] ([id])

	ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [contacts_user_id_foreign]

END
ELSE BEGIN
    PRINT 'Table contacts exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'adonis_schema','U') IS NULL BEGIN
    PRINT 'Table adonis_schema not exist, creating...';

	SET ANSI_NULLS ON
	
	SET QUOTED_IDENTIFIER ON
	
	CREATE TABLE [dbo].[adonis_schema](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[name] [nvarchar](255) NULL,
		[batch] [int] NULL,
		[migration_time] [datetime] NULL
	) ON [PRIMARY]
	
	ALTER TABLE [dbo].[adonis_schema] ADD PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	ALTER TABLE [dbo].[adonis_schema] ADD  DEFAULT (getdate()) FOR [migration_time]

END
ELSE BEGIN
    PRINT 'Table adonis_schema exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'TABLE_UNEXIST','U') IS NULL BEGIN
    PRINT 'Table TABLE_UNEXIST not exist, creating...';



END
ELSE BEGIN
    PRINT 'Table TABLE_UNEXIST exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF OBJECT_ID(N'TABLE_UNEXIST','U') IS NULL BEGIN
    PRINT 'Table TABLE_UNEXIST not exist, creating...';



END
ELSE BEGIN
    PRINT 'Table TABLE_UNEXIST exist.';
END;
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ��������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Voditelj','phone_number') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [phone_number] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Voditelj_phone_number]  DEFAULT ('');
END

GO

IF COL_LENGTH('Voditelj','auto_bith_year') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [auto_bith_year] [int] NOT NULL 
	CONSTRAINT [DF_Voditelj_auto_bith_year]  DEFAULT ((2000));
END

GO

IF COL_LENGTH('Voditelj','auto_material') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [auto_material] [varchar](255) NULL;
END

GO

IF COL_LENGTH('Voditelj','dr_cargo_services') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [dr_cargo_services] [varchar](1500) NULL;
END

GO

IF COL_LENGTH('Voditelj','addit_cargo_info') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [addit_cargo_info] [varchar](3000) NULL;
END

GO

IF COL_LENGTH('Voditelj','is_our') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [is_our] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_is_our]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','dont_reset_time') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [dont_reset_time] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_dont_reset_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','full_name') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [full_name] [varchar](500) NULL;
END

GO

IF COL_LENGTH('Voditelj','cc_updated') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [cc_updated] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_cc_updated]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','rating') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [rating] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Voditelj_rating]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','referral_driver_id') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [referral_driver_id] [int] NULL;
END

GO

IF COL_LENGTH('Voditelj','referral_set_date') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [referral_set_date] [datetime] NOT NULL 
	CONSTRAINT [DF_Voditelj_referral_set_date]  DEFAULT (getdate());
END

GO

IF COL_LENGTH('Voditelj','cc_monitoring_upd') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [cc_monitoring_upd] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_cc_monitoring_upd]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','daily_payment_expire') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [daily_payment_expire] [smallint] NOT NULL CONSTRAINT [DF_Voditelj_daily_payment_expire]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','rating_level') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [rating_level] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_rating_level]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','dont_auto_asgn_by_radius') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [dont_auto_asgn_by_radius] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_dont_auto_asgn_by_radius]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','allow_direct_assign') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [allow_direct_assign] [smallint] NOT NULL 
	CONSTRAINT [DF_Voditelj_allow_direct_assign]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','auto_class_id') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [auto_class_id] [int] NULL
	CONSTRAINT [DF_Voditelj_auto_class_id]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Voditelj','rate') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [rate] [decimal](18, 5) NOT NULL
	CONSTRAINT [DF_Voditelj_rate]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','rate_count') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [rate_count] [int] NOT NULL
	CONSTRAINT [DF_Voditelj_rate_count]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','min_balance') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [min_balance] [decimal](18, 5) NOT NULL 
	CONSTRAINT [Voditelj_min_balance]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Voditelj','last_status_query_time') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [last_status_query_time] [datetime] NOT NULL 
	CONSTRAINT [DF_Voditelj_last_status_query_time]  DEFAULT (getdate());
END

GO

IF COL_LENGTH('Voditelj','default_pass_count') IS NULL
BEGIN
	ALTER TABLE dbo.Voditelj 
	ADD [default_pass_count] [int] NOT NULL
	CONSTRAINT [DF_Voditelj_default_pass_count]  DEFAULT ((0));
END

GO

------------------------------------------------------
------------------------------------------------------
---- ����������� ������� ��������
------------------------------------------------------
------------------------------------------------------
SET ANSI_PADDING OFF
GO

DECLARE @CK_Voditelj_OBJECT_ID int;

SET @CK_Voditelj_OBJECT_ID = OBJECT_ID('dbo.CK_Voditelj');

IF @CK_Voditelj_OBJECT_ID IS NULL
BEGIN
	ALTER TABLE [dbo].[Voditelj]  WITH CHECK 
	ADD  CONSTRAINT [CK_Voditelj] CHECK  (([Pozyvnoi]<(100000)))
END

IF @CK_Voditelj_OBJECT_ID IS NULL
BEGIN
	ALTER TABLE [dbo].[Voditelj] CHECK CONSTRAINT [CK_Voditelj]
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ��������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_bsect_notmanual_ord') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_bsect_notmanual_ord] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsect_notmanual_ord]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_close_client_canceling') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_close_client_canceling] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_close_client_canceling]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_close_clcancel_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_close_clcancel_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_close_clcancel_time]  DEFAULT ((10));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','sip1_robot_active_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [sip1_robot_active_time] [datetime] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_sip1_robot_active_time]  DEFAULT (getdate());
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','sip2_robot_active_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [sip2_robot_active_time] [datetime] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_sip2_robot_active_time]  DEFAULT (getdate());
END

GO
	
IF COL_LENGTH('Objekt_vyborki_otchyotnosti','robot_active_time_interval') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [robot_active_time_interval] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_robot_active_time_interval]  DEFAULT ((60));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','replace_sms_with_robot') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [replace_sms_with_robot] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_replace_sms_with_robot]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_call_robot') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_call_robot] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_call_robot]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','start_first_song_code') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [start_first_song_code] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_start_first_song_code]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','onplace_first_song_code') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [onplace_first_song_code] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_onplace_first_song_code]  DEFAULT ((3));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','web_protected_code') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [web_protected_code] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_web_protected_code]  DEFAULT ('psdevelop4psw');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_arh_empty_orders') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_arh_empty_orders] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_arh_empty_orders]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','no_percent_before') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [no_percent_before] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_no_percent_before]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','no_percent_before_summ') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [no_percent_before_summ] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_no_percent_before_summ]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','no_percent_before_payment') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [no_percent_before_payment] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_no_percent_before_payment]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_prize_reserved_limit') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_prize_reserved_limit] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_prize_reserved_limit]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','prize_reserved_limit') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [prize_reserved_limit] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_prize_reserved_limit]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','prize_reward_summ') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [prize_reward_summ] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_prize_reward_summ]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','lock_reserv_on_limit') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [lock_reserv_on_limit] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_lock_reserv_on_limit]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','first_trip_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [first_trip_bonus] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_first_trip_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','trip_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [trip_bonus] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_trip_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','percent_bonus_min_summ') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [percent_bonus_min_summ] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_percent_bonus_min_summ]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','bonus_percent') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [bonus_percent] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_bonus_percent]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','lock_free_orders_info') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [lock_free_orders_info] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_lock_free_orders_info]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_drivers_rating') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_drivers_rating] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_drivers_rating]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','base_referral_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [base_referral_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_base_referral_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','base_ref_bonus_interval') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [base_ref_bonus_interval] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_referral_bonus_exp_interval]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','old_order_rating_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [old_order_rating_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_old_order_rating_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_rating_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_rating_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_rating_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_one_start') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_one_start] [time](7) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_one_start]  DEFAULT ('00:00');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_one_lenght') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_one_lenght] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_one_lenght]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_one_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_one_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_one_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_two_start') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_two_start] [time](7) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_two_start]  DEFAULT ('00:00');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_two_lenght') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_two_lenght] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_two_lenght]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_two_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_two_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_two_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_three_start') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_three_start] [time](7) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_three_start]  DEFAULT ('00:00');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_three_lenght') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_three_lenght] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_three_lenght]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_three_bonus') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_three_bonus] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_three_bonus]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','base_referral_cashback') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [base_referral_cashback] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_base_referral_cashback]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_late_rating_fine') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_late_rating_fine] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_late_fine]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_refusal_rating_fine') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_refusal_rating_fine] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_refusal_fating_fine]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_refusal_balance_fine') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_refusal_balance_fine] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_refusal_cash_fine]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','old_order_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [old_order_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_old_order_time]  DEFAULT ((180));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_late_rating_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_late_rating_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_late_rating_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_refusal_rating_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_refusal_rating_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_refusal_rating_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','order_rating_bonus_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [order_rating_bonus_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_order_rating_bonus_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','old_order_rbonus_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [old_order_rbonus_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_old_order_rbonus_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_one_bonus_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_one_bonus_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_one_bonus_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_two_bonus_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_two_bonus_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_two_bonus_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','peak_three_bonus_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [peak_three_bonus_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_peak_three_bonus_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','referral_rbonus_expire') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [referral_rbonus_expire] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_referral_rbonus_expire]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','rating_pretendent_sorting') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [rating_pretendent_sorting] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_rating_pretendent_sorting]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_detect_sector_by_addr') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_detect_sector_by_addr] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_detect_sector_by_addr]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','geocode_default_prefix') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [geocode_default_prefix] [varchar](255) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_geocode_default_prefix]  DEFAULT ('');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_detect_driver_sector') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_detect_driver_sector] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_detect_driver_sector]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_opengts_monitoring') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_opengts_monitoring] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_opengts_monitoring]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','on_gps_signaling') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [on_gps_signaling] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_on_gps_signaling]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dnts_wait_oth_company') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dnts_wait_oth_company] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dnts_wait_oth_company]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dnts_wait_wtout_company') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dnts_wait_wtout_company] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dnts_wait_wtout_company]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_show_wait_dialog') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_show_wait_dialog] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_show_wait_dialog]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','wait_dlg_with_sectors') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [wait_dlg_with_sectors] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_wait_dlg_with_sectors]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dispatcher_phone') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dispatcher_phone] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dispatcher_phone]  DEFAULT ('');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','alart_order_confirm') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [alart_order_confirm] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_alart_order_confirm]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','confirm_lineout_on_exit') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [confirm_lineout_on_exit] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_confirm_lineout_on_exit]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','hide_other_sect_wait_orders') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [hide_other_sect_wait_orders] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_hide_other_sect_wait_orders]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dont_wait_in_busy_state') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dont_wait_in_busy_state] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_wait_in_busy_state]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','show_all_sectwait_manual') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [show_all_sectwait_manual] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_show_all_sectwait_manual]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','taxm_block_wtout_onplace') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [taxm_block_wtout_onplace] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_taxm_block_wtout_onplace]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','reserved_ip') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [reserved_ip] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_reserved_ip]  DEFAULT ('');
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','start_free_distance') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [start_free_distance] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_start_free_distance]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','start_free_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [start_free_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_start_free_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_assign_driver_by_coords') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_assign_driver_by_coords] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_assign_driver_by_coords]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','aass_driver_max_radius') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [aass_driver_max_radius] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_aass_driver_max_radius]  DEFAULT ((5000));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','addr_actualization_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [addr_actualization_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_addr_actualization_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_for_all_tender') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_for_all_tender] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_for_all_tender]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_for_all_longtime') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_for_all_longtime] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_for_all_longtime]  DEFAULT ((50));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_for_all_empty_sector') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_for_all_empty_sector] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_for_all_empty_sector]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','show_region_in_addr') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [show_region_in_addr] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_show_region_in_addr]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dont_auto_wtout_adr_appr') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dont_auto_wtout_adr_appr] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_auto_wtout_adr_appr]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_assign_wait_orders') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_assign_wait_orders] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_assign_wait_orders]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','early_orders_started_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [early_orders_started_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_early_orders_started_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','autoasg_drby_coord_by_rating') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [autoasg_drby_coord_by_rating] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_autoa_drby_coord_by_rating]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','prev_orders_started_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [prev_orders_started_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_prev_orders_started_time]  DEFAULT ((30));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','show_phone_in_orders') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [show_phone_in_orders] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_show_phone_in_orders]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','set_manual_addr_change') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [set_manual_addr_change] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_set_manual_addr_change]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','set_addr_manual_enter') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [set_addr_manual_enter] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_set_addr_manual_enter]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','prise_only_online') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [prise_only_online] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_prise_only_online]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_rating_levels') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_rating_levels] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_rating_levels]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dont_reset_que_early_complete') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dont_reset_que_early_complete] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_reset_que_early_complete]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_set_bonus_value') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_set_bonus_value] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_set_bonus_value]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','use_driver_socket_server') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [use_driver_socket_server] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_use_driver_socket_server]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','reset_time_after_dr_assign') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [reset_time_after_dr_assign] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_reset_time_after_dr_assign]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','allow_direct_driver_assign') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [allow_direct_driver_assign] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_allow_direct_driver_assign]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','unasgn_ord_auto_dr_que_set_time') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [unasgn_ord_auto_dr_que_set_time] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_unasgn_ord_auto_dr_que_set_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','load_driver_data_with_wsocket') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [load_driver_data_with_wsocket] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_load_driver_data_with_wsocket]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','prev_summ_over_taxometr') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [prev_summ_over_taxometr] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_prev_summ_over_taxometr]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','taxometr_over_small_prev_summ') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [taxometr_over_small_prev_summ] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_taxometr_over_small_prev_summ]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dont_minimize_calc_price') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dont_minimize_calc_price] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dont_minimize_calc_price]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','disable_taxometr_report_edit') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [disable_taxometr_report_edit] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_disable_taxometr_report_edit]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','max_order_price') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [max_order_price] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_max_order_price]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','dr_autoex_interval') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [dr_autoex_interval] [int] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_dr_autoex_interval]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','online_sheduled_as_lock_prev') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [online_sheduled_as_lock_prev] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_online_sheduled_as_lock_prev]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','enable_show_tplans_client') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [enable_show_tplans_client] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_enable_show_tplans_client]  DEFAULT ((1));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','route_distance_tariff') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [route_distance_tariff] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_route_distance_tariff]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','route_time_tariff') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [route_time_tariff] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_route_time_tariff]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','en_prev_price_from_route') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [en_prev_price_from_route] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_en_prev_price_from_route]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_build_route') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_build_route] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_build_route]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','manual_start_time_calc') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [manual_start_time_calc] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_manual_start_time_calc]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','auto_bsector_only_prev') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [auto_bsector_only_prev] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_auto_bsector_only_prev]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Objekt_vyborki_otchyotnosti','en_prprice_from_tscales') IS NULL
BEGIN
	ALTER TABLE dbo.Objekt_vyborki_otchyotnosti 
	ADD [en_prprice_from_tscales] [smallint] NOT NULL 
	CONSTRAINT [DF_Objekt_vyborki_otchyotnosti_en_prprice_from_tscales]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� �������
--------------------------------------------------------------------
--------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Zakaz','adr_manual_set') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [adr_manual_set] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_adr_manual_set]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','prev_price') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [prev_price] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Zakaz_prev_price]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','cargo_desc') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [cargo_desc] [varchar](5000) NOT NULL 
	CONSTRAINT [DF_Zakaz_cargo_desc]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','end_adres') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [end_adres] [varchar](1000) NULL;
END

GO

IF COL_LENGTH('Zakaz','client_name') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [client_name] [varchar](500) NULL;
END

GO
	
IF COL_LENGTH('Zakaz','prev_distance') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [prev_distance] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Zakaz_prev_distance]  DEFAULT ((0));
END

GO
	
IF COL_LENGTH('Zakaz','CLIENT_CALL_STATE') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [CLIENT_CALL_STATE] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_CLIENT_CALL_STATE]  DEFAULT ((0));
END

GO	

IF COL_LENGTH('Zakaz','src') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src] [int] NOT NULL CONSTRAINT [DF_Zakaz_src]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','src_id') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src_id] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Zakaz_src_id]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','src_state') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src_state] [varchar](50) NOT NULL 
	CONSTRAINT [DF_Zakaz_src_state]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','passengers') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [passengers] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_passengers]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','luggage') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [luggage] [varchar](1000) NULL;
END

GO

IF COL_LENGTH('Zakaz','src_status_code') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src_status_code] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_src_status_code]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','src_on_place') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src_on_place] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_src_on_place]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','src_wait_sended') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [src_wait_sended] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_src_wait_sended]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','bonus_add') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [bonus_add] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Zakaz_bonus_add]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','bonus_use') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [bonus_use] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Zakaz_bonus_use]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','bonus_all') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [bonus_all] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Zakaz_bonus_all]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','driver_rating_diff') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [driver_rating_diff] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_driver_rating_diff]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','driver_rating_expire_date') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [driver_rating_expire_date] [datetime] NOT NULL 
	CONSTRAINT [DF_Zakaz_rating_bonus_expire_date]  DEFAULT (getdate());
END

GO

IF COL_LENGTH('Zakaz','driver_rating_bonus_code') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [driver_rating_bonus_code] [varchar](255) NOT NULL 
	CONSTRAINT [DF_Zakaz_driver_rating_bonus_code]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','adr_detect_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [adr_detect_lat] [varchar](50) NULL;
END

GO

IF COL_LENGTH('Zakaz','adr_detect_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [adr_detect_lon] [varchar](50) NULL;
END

GO

IF COL_LENGTH('Zakaz','failed_adr_coords_detect') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [failed_adr_coords_detect] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_failed_adr_coords_detect]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','detected_sector') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [detected_sector] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_detected_sector]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Zakaz','is_coordinates_upd') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [is_coordinates_upd] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_is_coordinates_upd]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','for_all_sectors') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [for_all_sectors] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_for_all_sectors]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','fail_app_coords_geocode') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [fail_app_coords_geocode] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_fail_app_coords_geocode]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','district_id') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [district_id] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_district_id]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Zakaz','is_early') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [is_early] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_is_early]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','is_started_early') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [is_started_early] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_is_started_early]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','early_date') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [early_date] [datetime] NOT NULL 
	CONSTRAINT [DF_Zakaz_early_date]  DEFAULT (getdate());
END

GO

IF COL_LENGTH('Zakaz','arhive_sms_state') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [arhive_sms_state] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_arhive_sms_state]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','company_id') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [company_id] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_company_id]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Zakaz','current_sum') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [current_sum] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_current_sum]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','current_dist') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [current_dist] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_current_dist]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','comment') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [comment] [varchar](255) NOT NULL 
	CONSTRAINT [DF_Zakaz_comment]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','client_dist') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [client_dist] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_client_dist]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','current_time') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [current_time] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_current_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','client_time') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [client_time] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_client_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','client_prev_sum') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [client_prev_sum] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_client_prev_sum]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','dest_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [dest_lat] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_dest_lat]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','dest_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [dest_lon] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_dest_lon]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','first_stop_adr') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [first_stop_adr] [varchar](255) NOT NULL 
	CONSTRAINT [DF_Zakaz_first_stop_adr]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','first_stop_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [first_stop_lat] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_first_stop_lat]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','first_stop_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [first_stop_lon] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_first_stop_lon]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','second_stop_adr') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [second_stop_adr] [varchar](255) NOT NULL 
	CONSTRAINT [DF_Zakaz_second_stop_adr]  DEFAULT ('');
END

GO

IF COL_LENGTH('Zakaz','second_stop_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [second_stop_lat] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_second_stop_lat]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','second_stop_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [second_stop_lon] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_second_stop_lon]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','auto_class_id') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [auto_class_id] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_auto_class_id]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Zakaz','taxometer_time') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [taxometer_time] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_taxometer_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','taxometer_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [taxometer_lat] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_taxometer_lat]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','taxometer_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [taxometer_lon] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_taxometer_lon]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','detected_end_sector') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [detected_end_sector] [int] NOT NULL 
	CONSTRAINT [DF_Zakaz_detected_end_sector]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Zakaz','failed_end_adr_coords_detect') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [failed_end_adr_coords_detect] [smallint] NOT NULL 
	CONSTRAINT [DF_Zakaz_failed_end_adr_coords_detect]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','depr_lat') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [depr_lat] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_depr_lat]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','depr_lon') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [depr_lon] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_depr_lon]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','route_distance') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [route_distance] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_route_distance]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','route_time') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [route_time] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_route_time]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','route_price') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [route_price] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_route_price]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Zakaz','start_prev_price') IS NULL
BEGIN
	ALTER TABLE dbo.Zakaz 
	ADD [start_prev_price] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_Zakaz_start_prev_price]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ��������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Sektor_raboty','ford_count') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [ford_count] [int] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_ford_count]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sektor_raboty','ford_json') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [ford_json] [varchar](5000) NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_ford_json]  DEFAULT ('');
END

GO

IF COL_LENGTH('Sektor_raboty','has_fords') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [has_fords] [smallint] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_has_fords]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sektor_raboty','to_show_fords') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [to_show_fords] [smallint] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_to_show_fords]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sektor_raboty','company_id') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [company_id] [int] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_company_id]  DEFAULT ((-1));
END

GO	

IF COL_LENGTH('Sektor_raboty','district_id') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [district_id] [int] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_district_id]  DEFAULT ((-1));
END

GO	

IF COL_LENGTH('Sektor_raboty','for_all') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [for_all] [smallint] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_for_all]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sektor_raboty','IS_DEF') IS NULL
BEGIN
	ALTER TABLE dbo.Sektor_raboty 
	ADD [IS_DEF] [smallint] NOT NULL 
	CONSTRAINT [DF_Sektor_raboty_IS_DEF]  DEFAULT ((0));
END

GO	

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� �������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('ORDER_TARIF','miss_every_nkm') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_TARIF 
	ADD [miss_every_nkm] [int] NOT NULL 
	CONSTRAINT [DF_ORDER_TARIF_miss_km_nvalue]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ��������� ���������
--------------------------------------------------------------------
--------------------------------------------------------------------
IF OBJECT_ID('dbo.DRIVER_RATING') IS NOT NULL
BEGIN
	DROP TABLE [dbo].[DRIVER_RATING];
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DRIVER_RATING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[driver_id] [int] NOT NULL,
	[expire_date] [datetime] NOT NULL CONSTRAINT [DF_DRIVER_RATING_expire]  DEFAULT (getdate()),
	[change_code] [varchar](255) NULL,
	[change_value] [decimal](18, 5) NOT NULL CONSTRAINT [DF_DRIVER_RATING_change_value]  DEFAULT ((0))
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ���������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Personal','drivers_coord_updated') IS NULL
BEGIN
	ALTER TABLE dbo.Personal 
	ADD [drivers_coord_updated] [smallint] NOT NULL 
	CONSTRAINT [DF_Personal_driver_coord_updated]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Personal','orders_coord_updated') IS NULL
BEGIN
	ALTER TABLE dbo.Personal 
	ADD [orders_coord_updated] [smallint] NOT NULL 
	CONSTRAINT [DF_Personal_orders_coord_updated]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Personal','has_web_orders_updates') IS NULL
BEGIN
	ALTER TABLE dbo.Personal 
	ADD [has_web_orders_updates] [smallint] NOT NULL 
	CONSTRAINT [DF_Personal_has_web_orders_updates]  DEFAULT ((0));
END

GO
--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ����������� �����������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Sootvetstvie_parametrov_zakaza','bonus_summ') IS NULL
BEGIN
	ALTER TABLE dbo.Sootvetstvie_parametrov_zakaza 
	ADD [bonus_summ] [decimal](28, 10) NOT NULL 
	CONSTRAINT [DF_Sootvetstvie_parametrov_zakaza_bonus_summ]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sootvetstvie_parametrov_zakaza','option_id') IS NULL
BEGIN
	ALTER TABLE dbo.Sootvetstvie_parametrov_zakaza 
	ADD [option_id] [int] NOT NULL 
	CONSTRAINT [Sootvetstvie_parametrov_zakaza_option_id]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Sootvetstvie_parametrov_zakaza','rate') IS NULL
BEGIN
	ALTER TABLE dbo.Sootvetstvie_parametrov_zakaza 
	ADD [rate] [decimal](18, 5) NOT NULL 
	CONSTRAINT [Sootvetstvie_parametrov_zakaza_rate]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sootvetstvie_parametrov_zakaza','rate_count') IS NULL
BEGIN
	ALTER TABLE dbo.Sootvetstvie_parametrov_zakaza 
	ADD [rate_count] [int] NOT NULL
	CONSTRAINT [DF_Sootvetstvie_parametrov_zakaza_rate_count]  DEFAULT ((0));
END

GO

IF COL_LENGTH('Sootvetstvie_parametrov_zakaza','coupon_code') IS NULL
BEGIN
	ALTER TABLE dbo.Sootvetstvie_parametrov_zakaza 
	ADD [coupon_code] [varchar](255) NOT NULL
	CONSTRAINT [DF_Sootvetstvie_parametrov_zakaza_coupon_code]  DEFAULT ((''));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� ����� �������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF COL_LENGTH('AREA_LINES','sector_id') IS NULL
BEGIN
	ALTER TABLE dbo.AREA_LINES 
	ADD [sector_id] [int] NOT NULL 
	CONSTRAINT [DF_AREA_LINES_sector_id]  DEFAULT ((-1));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ������� ������� �������� ������
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF COL_LENGTH('PRICE_POLICY','company_id') IS NULL
BEGIN
	ALTER TABLE dbo.PRICE_POLICY 
	ADD [company_id] [int] NOT NULL 
	CONSTRAINT [DF_PRICE_POLICY_company_id]  DEFAULT ((-1));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- ORDER_OPTION
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF COL_LENGTH('ORDER_OPTION','start_time') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [start_time] [time](7) NOT NULL
	CONSTRAINT [DF_ORDER_OPTION_start_time]  DEFAULT ('00:00');
END

GO

IF COL_LENGTH('ORDER_OPTION','end_time') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [end_time] [time](7) NOT NULL
	CONSTRAINT [DF_ORDER_OPTION_end_time]  DEFAULT ('00:00');
END

GO

IF COL_LENGTH('ORDER_OPTION','is_discount') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [is_discount] [smallint] NOT NULL 
	CONSTRAINT [DF_ORDER_OPTION_is_discount]  DEFAULT ((0));
END

GO

IF COL_LENGTH('ORDER_OPTION','is_client_app') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [is_client_app] [smallint] NOT NULL 
	CONSTRAINT [DF_ORDER_OPTION_is_client_app]  DEFAULT ((0));
END

GO

IF COL_LENGTH('ORDER_OPTION','is_option_for_prev_price') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [is_option_for_prev_price] [smallint] NOT NULL 
	CONSTRAINT [DF_ORDER_OPTION_is_option_for_prev_price]  DEFAULT ((0));
END

GO

IF COL_LENGTH('ORDER_OPTION','min_order_prev_price') IS NULL
BEGIN
	ALTER TABLE dbo.ORDER_OPTION 
	ADD [min_order_prev_price] [decimal](18, 5) NOT NULL 
	CONSTRAINT [DF_ORDER_OPTION_min_order_prev_price]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- Persona
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('Persona','option_id') IS NULL
BEGIN
	ALTER TABLE dbo.Persona 
	ADD [option_id] [int] NOT NULL 
	CONSTRAINT [Persona_option_id]  DEFAULT ((-1));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- REMOTE_CLIENTS
--------------------------------------------------------------------
--------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF COL_LENGTH('REMOTE_CLIENTS','rate') IS NULL
BEGIN
	ALTER TABLE dbo.REMOTE_CLIENTS 
	ADD [rate] [decimal](18, 5) NOT NULL 
	CONSTRAINT [REMOTE_CLIENTS_rate]  DEFAULT ((0));
END

GO

IF COL_LENGTH('REMOTE_CLIENTS','rate_count') IS NULL
BEGIN
	ALTER TABLE dbo.REMOTE_CLIENTS 
	ADD [rate_count] [int] NOT NULL
	CONSTRAINT [DF_REMOTE_CLIENTS_rate_count]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- Gruppa_voditelei
--------------------------------------------------------------------
--------------------------------------------------------------------

IF COL_LENGTH('Gruppa_voditelei','PR_POLICY_ID') IS NULL
BEGIN
	ALTER TABLE dbo.Gruppa_voditelei 
	ADD [PR_POLICY_ID] [int] NOT NULL 
	CONSTRAINT [DF_Gruppa_voditelei_PR_POLICY_ID]  DEFAULT ((-1));
END

GO

IF COL_LENGTH('Gruppa_voditelei','IS_DEF') IS NULL
BEGIN
	ALTER TABLE dbo.Gruppa_voditelei 
	ADD [IS_DEF] [smallint] NOT NULL 
	CONSTRAINT [DF_Gruppa_voditelei_IS_DEF]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- DISTRICTS
--------------------------------------------------------------------
--------------------------------------------------------------------

IF COL_LENGTH('DISTRICTS','IS_DEF') IS NULL
BEGIN
	ALTER TABLE dbo.DISTRICTS 
	ADD [IS_DEF] [smallint] NOT NULL 
	CONSTRAINT [DF_DISTRICTS_IS_DEF]  DEFAULT ((0));
END

GO

--------------------------------------------------------------------
--------------------------------------------------------------------
-- DRIVERS_OFFERS
--------------------------------------------------------------------
--------------------------------------------------------------------

IF COL_LENGTH('DRIVERS_OFFERS','pass_count') IS NULL
BEGIN
	ALTER TABLE dbo.DRIVERS_OFFERS 
	ADD [pass_count] [int] NOT NULL 
	CONSTRAINT [DF_DRIVERS_OFFERS_pass_count]  DEFAULT ((0));
END

GO

IF COL_LENGTH('DRIVERS_OFFERS','comment') IS NULL
BEGIN
	ALTER TABLE dbo.DRIVERS_OFFERS 
	ADD [comment] varchar(1000) NOT NULL 
	CONSTRAINT [DF_DRIVERS_OFFERS_comment]  DEFAULT ((''));
END

GO



