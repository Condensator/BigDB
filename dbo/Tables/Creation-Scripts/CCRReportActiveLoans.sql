SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCRReportActiveLoans](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[TypeofCredit] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[ContractualAmount_Amount] [decimal](16, 2) NULL,
	[ContractualAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[UtilizedAmount_Amount] [decimal](16, 2) NULL,
	[UtilizedAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PrincipalOutstanding_Amount] [decimal](16, 2) NULL,
	[PrincipalOutstanding_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[OverduePrincipalOutstanding_Amount] [decimal](16, 2) NULL,
	[OverduePrincipalOutstanding_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PeriodofDelinquency] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BalanceSheetExp_Amount] [decimal](16, 2) NULL,
	[BalanceSheetExp_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[OffBalanceExp_Amount] [decimal](16, 2) NULL,
	[OffBalanceExp_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ContractualTerm] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[MonthlyInstalment_Amount] [decimal](16, 2) NULL,
	[MonthlyInstalment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[RemainingPeriodMaturity] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[NonPerformingReceivables_Amount] [decimal](16, 2) NULL,
	[NonPerformingReceivables_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ContingentLiabilities_Amount] [decimal](16, 2) NULL,
	[ContingentLiabilities_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FinancialInstitution] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[DNAParametersForCreditDecisionId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[CCRReportActiveLoans]  WITH CHECK ADD  CONSTRAINT [EDNAParametersForCreditDecision_CCRReportActiveLoans] FOREIGN KEY([DNAParametersForCreditDecisionId])
REFERENCES [dbo].[DNAParametersForCreditDecisions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CCRReportActiveLoans] CHECK CONSTRAINT [EDNAParametersForCreditDecision_CCRReportActiveLoans]
GO