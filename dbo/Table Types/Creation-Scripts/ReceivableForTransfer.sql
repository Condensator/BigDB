CREATE TYPE [dbo].[ReceivableForTransfer] AS TABLE(
	[Name] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Number] [bigint] NULL,
	[Alias] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ContractType] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReceivableForTransferType] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[ApprovalStatus] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[Comment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[RetainedPercentage] [decimal](18, 8) NULL,
	[IsCalculateRate] [bit] NOT NULL,
	[DiscountRate] [decimal](7, 4) NULL,
	[DayCountConvention] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[PostDate] [date] NULL,
	[AccountingDate] [date] NULL,
	[ActualProceeds_Amount] [decimal](16, 2) NULL,
	[ActualProceeds_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsPricingPerformed] [bit] NOT NULL,
	[SecurityDeposit_Amount] [decimal](16, 2) NULL,
	[SecurityDeposit_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsPricingParametersChanged] [bit] NOT NULL,
	[IsFromContract] [bit] NOT NULL,
	[IsBlendedItemParametersChanged] [bit] NOT NULL,
	[SoldNBV_Amount] [decimal](16, 2) NULL,
	[SoldNBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TotalNBV_Amount] [decimal](16, 2) NULL,
	[TotalNBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[SoldInterestAccrued_Amount] [decimal](16, 2) NOT NULL,
	[SoldInterestAccrued_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EffectiveDate] [date] NULL,
	[FundingDate] [date] NULL,
	[IsCalculatePercentage] [bit] NOT NULL,
	[FinancingTotalNBV_Amount] [decimal](16, 2) NULL,
	[FinancingTotalNBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FinancingSoldNBV_Amount] [decimal](16, 2) NULL,
	[FinancingSoldNBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[RentalProceedsWithholdingTaxRate] [decimal](5, 2) NULL,
	[LegalEntityId] [bigint] NULL,
	[RemitToId] [bigint] NULL,
	[ContractId] [bigint] NOT NULL,
	[LeasePaymentId] [bigint] NULL,
	[LoanPaymentId] [bigint] NULL,
	[ProceedsReceivableCodeId] [bigint] NULL,
	[RentalProceedsPayableCodeId] [bigint] NULL,
	[ScrapeReceivableCodeId] [bigint] NULL,
	[SyndicationGLTemplateId] [bigint] NULL,
	[UpfrontSyndicationFeeCodeId] [bigint] NULL,
	[ReceiptGLTemplateId] [bigint] NULL,
	[LeaseFinanceId] [bigint] NULL,
	[LoanFinanceId] [bigint] NULL,
	[SyndicationGLJournalId] [bigint] NULL,
	[OldProceedsReceivableCodeId] [bigint] NULL,
	[TaxDepDisposalTemplateId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO