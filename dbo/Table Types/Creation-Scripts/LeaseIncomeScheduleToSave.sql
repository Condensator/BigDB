CREATE TYPE [dbo].[LeaseIncomeScheduleToSave] AS TABLE(
	[IncomeDate] [date] NOT NULL,
	[IncomeType] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[IsGLPosted] [bit] NOT NULL,
	[AccountingTreatment] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsAccounting] [bit] NOT NULL,
	[IsSchedule] [bit] NOT NULL,
	[LeaseModificationType] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseModificationID] [bigint] NOT NULL,
	[IsLessorOwned] [bit] NOT NULL,
	[IsNonAccrual] [bit] NOT NULL,
	[BeginNetBookValue] [decimal](16, 2) NOT NULL,
	[EndNetBookValue] [decimal](16, 2) NOT NULL,
	[OperatingBeginNetBookValue] [decimal](16, 2) NOT NULL,
	[OperatingEndNetBookValue] [decimal](16, 2) NOT NULL,
	[Depreciation] [decimal](16, 2) NOT NULL,
	[Income] [decimal](16, 2) NOT NULL,
	[IncomeAccrued] [decimal](16, 2) NOT NULL,
	[IncomeBalance] [decimal](16, 2) NOT NULL,
	[RentalIncome] [decimal](16, 2) NOT NULL,
	[DeferredRentalIncome] [decimal](16, 2) NOT NULL,
	[ResidualIncome] [decimal](16, 2) NOT NULL,
	[ResidualIncomeBalance] [decimal](16, 2) NOT NULL,
	[Payment] [decimal](16, 2) NOT NULL,
	[LeaseFinanceId] [bigint] NOT NULL
)
GO
