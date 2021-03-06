CREATE TYPE [dbo].[JobSchedule] AS TABLE(
	[Frequency] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RepeatDaily] [int] NULL,
	[IsMonday] [bit] NOT NULL,
	[IsTuesday] [bit] NOT NULL,
	[IsWednesday] [bit] NOT NULL,
	[IsThursday] [bit] NOT NULL,
	[IsFriday] [bit] NOT NULL,
	[IsSaturday] [bit] NOT NULL,
	[IsSunday] [bit] NOT NULL,
	[MonthlyType] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[RepeatMonthly] [int] NULL,
	[DayOfMonth] [int] NULL,
	[DayOfWeekType] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DayOfWeek] [nvarchar](9) COLLATE Latin1_General_CI_AS NULL,
	[FrequencyType] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[Time] [datetimeoffset](7) NULL,
	[RepeatHours] [int] NULL,
	[RepeatMinutes] [int] NULL,
	[RunBetweenOption] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[FromTime] [datetimeoffset](7) NULL,
	[ToTime] [datetimeoffset](7) NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
