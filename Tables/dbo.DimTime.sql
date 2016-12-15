CREATE TABLE [dbo].[DimTime]
(
[TimeKey] [int] NOT NULL IDENTITY(1, 1),
[FullDateAlternateKey] [datetime] NULL,
[DayNumberOfWeek] [tinyint] NULL,
[EnglishDayNameOfWeek] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[SpanishDayNameOfWeek] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[FrenchDayNameOfWeek] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[DayNumberOfMonth] [tinyint] NULL,
[DayNumberOfYear] [smallint] NULL,
[WeekNumberOfYear] [tinyint] NULL,
[EnglishMonthName] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[SpanishMonthName] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[FrenchMonthName] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[MonthNumberOfYear] [tinyint] NULL,
[CalendarQuarter] [tinyint] NULL,
[CalendarYear] [char] (4) COLLATE Latin1_General_CI_AS NULL,
[CalendarSemester] [tinyint] NULL,
[FiscalQuarter] [tinyint] NULL,
[FiscalYear] [char] (4) COLLATE Latin1_General_CI_AS NULL,
[FiscalSemester] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimTime] ADD CONSTRAINT [PK_DimTime_TimeKey] PRIMARY KEY CLUSTERED  ([TimeKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimTime] ADD CONSTRAINT [AK_DimTime_FullDateAlternateKey] UNIQUE NONCLUSTERED  ([FullDateAlternateKey]) ON [PRIMARY]
GO
