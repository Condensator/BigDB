CREATE TYPE [dbo].[AssetService] AS TABLE(
	[IsSimplAssistant] [bit] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ServiceStartDate] [date] NULL,
	[ServiceStopDate] [date] NULL,
	[GracePeriodInMonths] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[GracePeriodStopDate] [date] NULL,
	[IsFreeChangeOfTires] [bit] NOT NULL,
	[IsFreeAutobox] [bit] NOT NULL,
	[IsFreeInsuranceDamage] [bit] NOT NULL,
	[IsFreeReplacementCar] [bit] NOT NULL,
	[IsFreeAnnualTechnicalCheck] [bit] NOT NULL,
	[IsVignette] [bit] NOT NULL,
	[IsSBACard] [bit] NOT NULL,
	[NextAnnualTechnicalCheck] [date] NULL,
	[NextChangeOfTires] [date] NULL,
	[NextAutobox] [date] NULL,
	[NextVignetteRenew] [date] NULL,
	[NextSBACardRenew] [date] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
