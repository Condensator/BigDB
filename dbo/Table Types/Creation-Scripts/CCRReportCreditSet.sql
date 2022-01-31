CREATE TYPE [dbo].[CCRReportCreditSet] AS TABLE(
	[DateofLastReport] [date] NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Role] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PeriodofDelinquency] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[NumberofLoans] [decimal](16, 2) NULL,
	[ContractualAmount_Amount] [decimal](16, 2) NULL,
	[ContractualAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[BalanceSheetExp_Amount] [decimal](16, 2) NULL,
	[BalanceSheetExp_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TotalOffBalanceExp_Amount] [decimal](16, 2) NULL,
	[TotalOffBalanceExp_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FinancialInstitution] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[DNAParametersForCreditDecisionId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
