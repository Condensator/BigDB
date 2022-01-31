CREATE TYPE [dbo].[AcceleratedBalanceDetailForJudgement] AS TABLE(
	[DayCountConvention] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PrincipalJudgmentAmount_Amount] [decimal](16, 2) NULL,
	[PrincipalJudgmentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PreJudgmentInterest_Amount] [decimal](16, 2) NULL,
	[PreJudgmentInterest_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[InterestRate] [decimal](6, 3) NULL,
	[JudgmentInterestGrantedFrom] [date] NULL,
	[PrincipalBalance_Amount] [decimal](16, 2) NULL,
	[PrincipalBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[AccruedInterest_Amount] [decimal](16, 2) NULL,
	[AccruedInterest_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ExpensesAndFees_Amount] [decimal](16, 2) NULL,
	[ExpensesAndFees_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ExpenseAndFees_Waivers_Amount] [decimal](16, 2) NULL,
	[ExpenseAndFees_Waivers_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Credits_Amount] [decimal](16, 2) NULL,
	[Credits_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TotalAcceleratedBalance_Amount] [decimal](16, 2) NULL,
	[TotalAcceleratedBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO