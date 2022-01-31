CREATE TYPE [dbo].[LoanIncomeSummaryForReport] AS TABLE(
	[PaymentNumber] [int] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PaymentType] [nvarchar](18) COLLATE Latin1_General_CI_AS NULL,
	[IncomeDate] [date] NOT NULL,
	[PaymentAmount_Amount] [decimal](16, 2) NOT NULL,
	[PaymentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[InterestRate] [decimal](10, 6) NULL,
	[InterestAccrued_Amount] [decimal](16, 2) NOT NULL,
	[InterestAccrued_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[InterestPayment_Amount] [decimal](16, 2) NOT NULL,
	[InterestPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PrincipalPayment_Amount] [decimal](16, 2) NOT NULL,
	[PrincipalPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PrincipalAdded_Amount] [decimal](16, 2) NOT NULL,
	[PrincipalAdded_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EndBalance_Amount] [decimal](16, 2) NOT NULL,
	[EndBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Suspended] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IsGLPosted] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BlendedItemName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BlendedIncome_Amount] [decimal](16, 2) NOT NULL,
	[BlendedIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BlendedIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[BlendedIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsBlendedIncomeRecord] [bit] NOT NULL,
	[IsYieldExtreme] [bit] NOT NULL,
	[IsActualBlendedIncomeRecord] [bit] NOT NULL,
	[ContractId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO