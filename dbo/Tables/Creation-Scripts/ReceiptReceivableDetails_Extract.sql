SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptReceivableDetails_Extract](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ReceivableDetailId] [bigint] NULL,
	[ReceivableId] [bigint] NULL,
	[ReceiptApplicationReceivableDetailId] [bigint] NOT NULL,
	[AmountApplied] [decimal](16, 2) NULL,
	[BookAmountApplied] [decimal](16, 2) NOT NULL,
	[TaxApplied] [decimal](16, 2) NULL,
	[ContractId] [bigint] NULL,
	[DiscountingId] [bigint] NULL,
	[InvoiceId] [bigint] NULL,
	[DumpId] [bigint] NULL,
	[ReceivableDetailIsActive] [bit] NOT NULL,
	[IsChargeoffContract] [bit] NOT NULL,
	[IsWritedownContract] [bit] NOT NULL,
	[IsChargeoffReceivable] [bit] NOT NULL,
	[IsWritedownReceivable] [bit] NOT NULL,
	[IsSyndicatedContract] [bit] NOT NULL,
	[IsSyndicated] [bit] NOT NULL,
	[AlternateBillingCurrencyId] [bigint] NULL,
	[ExchangeRate] [decimal](16, 2) NULL,
	[ReceivableTypeId] [bigint] NOT NULL,
	[ReceivableType] [nvarchar](21) COLLATE Latin1_General_CI_AS NOT NULL,
	[PaymentScheduleId] [bigint] NULL,
	[SequenceNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DueDate] [date] NOT NULL,
	[LegalEntityId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[FunderId] [bigint] NULL,
	[AssetComponentType] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[IsNegativeReceivable] [bit] NOT NULL,
	[IsGLPosted] [bit] NOT NULL,
	[IsTaxGLPosted] [bit] NOT NULL,
	[IsTaxCashBased] [bit] NOT NULL,
	[SourceTable] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[SourceId] [bigint] NULL,
	[EntityType] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[EntityId] [bigint] NULL,
	[IncomeType] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[GLTransactionType] [nvarchar](29) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReceivableBalance] [decimal](16, 2) NULL,
	[ReceivableDetailBalance] [decimal](16, 2) NULL,
	[ReceivableTotalAmount] [decimal](16, 2) NULL,
	[ReceivableGLTemplateId] [bigint] NULL,
	[SyndicationGLTemplateId] [bigint] NULL,
	[AccountingTreatment] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[IsIntercompany] [bit] NOT NULL,
	[ReceivableTaxGLTemplateId] [bigint] NULL,
	[ClearingAPGLTemplateId] [bigint] NULL,
	[InstrumentTypeId] [bigint] NULL,
	[CostCenterId] [bigint] NULL,
	[LineofBusinessId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[DealProductTypeId] [bigint] NULL,
	[AcquisitionId] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[ContractType] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[NonAccrualDate] [date] NULL,
	[IsTiedToDiscounting] [bit] NOT NULL,
	[AssetId] [bigint] NULL,
	[IsNonAccrual] [bit] NOT NULL,
	[JobStepInstanceId] [bigint] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[IsAdjustmentReceivableDetail] [bit] NOT NULL,
	[PrevAmountAppliedForReApplication] [decimal](16, 2) NULL,
	[PrevBookAmountAppliedForReApplication] [decimal](16, 2) NULL,
	[PrevTaxAppliedForReApplication] [decimal](16, 2) NULL,
	[ReceiptApplicationId] [bigint] NULL,
	[PrevPrePaidForReApplication] [decimal](16, 2) NULL,
	[PrevPrePaidTaxForReApplication] [decimal](16, 2) NULL,
	[IsReApplication] [bit] NOT NULL,
	[IncomeGLTemplateId] [bigint] NULL,
	[PaymentScheduleStartDate] [date] NULL,
	[AccountingStandard] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[LeaseContractType] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[CurrentFinanceId] [bigint] NULL,
	[IsLeaseAsset] [bit] NOT NULL,
	[DoubtfulCollectability] [bit] NOT NULL,
	[LeaseBookingGLTemplateId] [bigint] NULL,
	[LeaseInterimInterestIncomeGLTemplateId] [bigint] NULL,
	[LeaseInterimRentIncomeGLTemplateId] [bigint] NULL,
	[LeveragedLeaseBookingGLTemplateId] [bigint] NULL,
	[LoanInterimIncomeRecognitionGLTemplateId] [bigint] NULL,
	[LoanBookingGLTemplateId] [bigint] NULL,
	[LoanIncomeRecognitionGLTemplateId] [bigint] NULL,
	[CommencementDate] [date] NULL,
	[PrepaidReceivableId] [bigint] NULL,
	[CurrentPrepaidAmount] [decimal](16, 2) NOT NULL,
	[CurrentPrepaidTaxAmount] [decimal](16, 2) NOT NULL,
	[CurrentPrepaidFinanceAmount] [decimal](16, 2) NOT NULL,
	[AdjustedWithHoldingTax] [decimal](16, 2) NULL,
	[PrevAdjustedWithHoldingTaxForReApplication] [decimal](16, 2) NULL,
	[LeaseComponentAmountApplied] [decimal](16, 2) NULL,
	[NonLeaseComponentAmountApplied] [decimal](16, 2) NULL,
	[PrevLeaseComponentAmountAppliedForReApplication] [decimal](16, 2) NULL,
	[PrevNonLeaseComponentAmountAppliedForReApplication] [decimal](16, 2) NULL,
	[ReceivedTowardsInterest] [decimal](16, 2) NOT NULL,
	[WithHoldingTaxBookAmountApplied] [decimal](16, 2) NULL,
	[PrevPrePaidLeaseComponentForReApplication] [decimal](16, 2) NULL,
	[PrevPrePaidNonLeaseComponentForReApplication] [decimal](16, 2) NULL,
	[ReceivableTaxDetailIsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
