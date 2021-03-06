CREATE TYPE [dbo].[IncomeScheduleDataTable] AS TABLE(
	[LeaseContractType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PaymentType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IsRenewal] [bit] NULL,
	[IncomeDate] [date] NULL,
	[PaymentAmount] [decimal](16, 2) NULL,
	[BeginNBV] [decimal](16, 2) NULL,
	[AccountingAmount] [decimal](16, 2) NULL,
	[IncomeType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[IsNonAccrual] [bit] NULL,
	[IsGLPosted] [bit] NULL,
	[EndNBV] [decimal](16, 2) NULL,
	[Income] [decimal](16, 2) NULL,
	[IncomeBalance] [decimal](16, 2) NULL,
	[RentalIncome] [decimal](16, 2) NULL,
	[DeferredRentalIncome] [decimal](16, 2) NULL,
	[ResidualIncome] [decimal](16, 2) NULL,
	[ResidualIncomeBalance] [decimal](16, 2) NULL,
	[OperatingBeginNBV] [decimal](16, 2) NULL,
	[OperatingEndNBV] [decimal](16, 2) NULL,
	[Depreciation] [decimal](16, 2) NULL,
	[AdvanceOrArrear] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[AdjustmentEntry] [bit] NULL,
	[LeaseModificationType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[LeaseFinanceId] [bigint] NULL,
	[IsAccounting] [bit] NULL,
	[IsSchedule] [bit] NULL,
	[IsLessorOwned] [bit] NULL
)
GO
