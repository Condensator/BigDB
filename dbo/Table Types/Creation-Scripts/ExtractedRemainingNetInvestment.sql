CREATE TYPE [dbo].[ExtractedRemainingNetInvestment] AS TABLE(
	[IncomeDate] [date] NOT NULL,
	[ContractType] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[SubType] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsOTP] [bit] NOT NULL,
	[IsInNonAccrual] [bit] NOT NULL,
	[NonAccrualDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[HoldingStatus] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[RetainedPercentage] [decimal](10, 6) NULL,
	[IsPaymentStreamSold] [bit] NOT NULL,
	[RNIAmount_Amount] [decimal](16, 2) NOT NULL,
	[RNIAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ServicedRNIAmount] [decimal](16, 2) NOT NULL,
	[PrincipalBalance] [decimal](16, 2) NOT NULL,
	[DelayedFundingPayables] [decimal](16, 2) NOT NULL,
	[LoanPrincipleOSAR] [decimal](16, 2) NOT NULL,
	[LoanInterestOSAR] [decimal](16, 2) NOT NULL,
	[InterimInterestOSAR] [decimal](16, 2) NOT NULL,
	[IncomeAccrualBalance] [decimal](16, 2) NOT NULL,
	[SuspendedIncomeAccrualBalance] [decimal](16, 2) NOT NULL,
	[ProgressFundings] [decimal](16, 2) NOT NULL,
	[ProgressPaymentCredits] [decimal](16, 2) NOT NULL,
	[TotalFinancedAmount] [decimal](16, 2) NOT NULL,
	[TotalFinancedAmountLOC] [decimal](16, 2) NOT NULL,
	[UnappliedCash] [decimal](16, 2) NOT NULL,
	[GrossWritedowns] [decimal](16, 2) NOT NULL,
	[NetWritedowns] [decimal](16, 2) NOT NULL,
	[IDCBalance] [decimal](16, 2) NOT NULL,
	[SuspendedIDCBalance] [decimal](16, 2) NOT NULL,
	[SuspendedFAS91ExpenseBalance] [decimal](16, 2) NOT NULL,
	[SuspendedFAS91IncomeBalance] [decimal](16, 2) NOT NULL,
	[FAS91ExpenseBalance] [decimal](16, 2) NOT NULL,
	[FAS91IncomeBalance] [decimal](16, 2) NOT NULL,
	[OperatingLeaseAssetGrossCost] [decimal](16, 2) NOT NULL,
	[AccumulatedDepreciation] [decimal](16, 2) NOT NULL,
	[OperatingLeaseRentOSAR] [decimal](16, 2) NOT NULL,
	[InterimRentOSAR] [decimal](16, 2) NOT NULL,
	[DeferredOperatingIncome] [decimal](16, 2) NOT NULL,
	[DeferredExtensionIncome] [decimal](16, 2) NOT NULL,
	[CapitalLeaseContractReceivable] [decimal](16, 2) NOT NULL,
	[UnguaranteedResidual] [decimal](16, 2) NOT NULL,
	[CustomerGuaranteedResidual] [decimal](16, 2) NOT NULL,
	[ThirdPartyGauranteedResidual] [decimal](16, 2) NOT NULL,
	[CapitalLeaseRentOSAR] [decimal](16, 2) NOT NULL,
	[OverTermRentOSAR] [decimal](16, 2) NOT NULL,
	[UnearnedRentalIncome] [decimal](16, 2) NOT NULL,
	[OTPResidualRecapture] [decimal](16, 2) NOT NULL,
	[PrepaidReceivables] [decimal](16, 2) NOT NULL,
	[SyndicatedPrepaidReceivables] [decimal](16, 2) NOT NULL,
	[AccumulatedNBVImpairment] [decimal](16, 2) NOT NULL,
	[FloatRateAdjustmentOSAR] [decimal](16, 2) NOT NULL,
	[FloatRateIncomeBalance] [decimal](16, 2) NOT NULL,
	[SuspendedFloatRateIncomeBalance] [decimal](16, 2) NOT NULL,
	[HeldForSaleValuationAllowance] [decimal](16, 2) NOT NULL,
	[HeldForSaleBalance] [decimal](16, 2) NOT NULL,
	[SyndicatedFixedTermReceivablesOSAR] [decimal](16, 2) NOT NULL,
	[SyndicatedInterimReceivablesOSAR] [decimal](16, 2) NOT NULL,
	[SecurityDeposit] [decimal](16, 2) NOT NULL,
	[SecurityDepositOSAR] [decimal](16, 2) NOT NULL,
	[VendorSubsidyOSAR] [decimal](16, 2) NOT NULL,
	[DelayedVendorSubsidy] [decimal](16, 2) NOT NULL,
	[SalesTaxOSAR] [decimal](16, 2) NOT NULL,
	[SyndicatedSalesTaxOSAR] [decimal](16, 2) NOT NULL,
	[ContractId] [bigint] NOT NULL,
	[InstrumentTypeId] [bigint] NULL,
	[CreditProfileId] [bigint] NULL,
	[CurrencyId] [bigint] NULL,
	[PrincipalBalanceAdjustment] [decimal](16, 2) NOT NULL,
	[SyndicatedCapitalLeaseContractReceivable] [decimal](16, 2) NOT NULL,
	[IncomeAccrualBalanceFunderPortion] [decimal](16, 2) NOT NULL,
	[PrincipalBalanceFunderPortion] [decimal](16, 2) NOT NULL,
	[PrepaidInterest] [decimal](16, 2) NOT NULL,
	[AccountingStandard] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[FinanceIncomeAccrualBalance] [decimal](16, 2) NOT NULL,
	[SuspendedFinanceIncomeAccrualBalance] [decimal](16, 2) NOT NULL,
	[SyndicatedFinanceIncomeAccrualBalance] [decimal](16, 2) NOT NULL,
	[DeferredSellingProfit] [decimal](16, 2) NOT NULL,
	[SuspendedDeferredSellingProfit] [decimal](16, 2) NOT NULL,
	[FinanceGrossWritedowns] [decimal](16, 2) NOT NULL,
	[FinanceNetWritedowns] [decimal](16, 2) NOT NULL,
	[FinancingContractReceivable] [decimal](16, 2) NOT NULL,
	[SyndicatedFinancingContractReceivable] [decimal](16, 2) NOT NULL,
	[FinanceUnguaranteedResidual] [decimal](16, 2) NOT NULL,
	[FinanceCustomerGuaranteedResidual] [decimal](16, 2) NOT NULL,
	[FinanceThirdPartyGauranteedResidual] [decimal](16, 2) NOT NULL,
	[FinancingRentOSAR] [decimal](16, 2) NOT NULL,
	[FinanceSyndicatedFixedTermReceivablesOSAR] [decimal](16, 2) NOT NULL,
	[BackgroundProcessingPending] [bit] NOT NULL
)
GO
