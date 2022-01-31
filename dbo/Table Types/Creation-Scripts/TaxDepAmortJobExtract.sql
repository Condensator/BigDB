CREATE TYPE [dbo].[TaxDepAmortJobExtract] AS TABLE(
	[TaxDepEntityId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[TaxDepAmortizationId] [bigint] NULL,
	[DepreciationBeginDate] [date] NOT NULL,
	[DepreciationEndDate] [date] NULL,
	[TaxDepGLReversalDate] [date] NULL,
	[TerminationDate] [date] NULL,
	[TaxDepTemplateId] [bigint] NULL,
	[TaxBasisAmount_Amount] [decimal](16, 2) NOT NULL,
	[TaxBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FXTaxBasisAmount_Amount] [decimal](16, 2) NULL,
	[FXTaxBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TaxProceedsAmount_Amount] [decimal](16, 2) NULL,
	[TaxProceedsAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ContractId] [bigint] NULL,
	[AssetId] [bigint] NULL,
	[LeaseAssetId] [bigint] NULL,
	[BlendedItemId] [bigint] NULL,
	[LegalEntityId] [bigint] NULL,
	[GLFinancialOpenPeriodFromDate] [date] NULL,
	[EtcBlendedItemTaxCreditTaxBasisPercentage] [decimal](16, 2) NULL,
	[AllowableCredit] [decimal](16, 2) NULL,
	[FiscalYearBeginMonth] [int] NULL,
	[FiscalYearEndMonth] [int] NULL,
	[IsGLPosted] [bit] NULL,
	[IsComputationPending] [bit] NULL,
	[IsAssetCountryUSA] [bit] NULL,
	[IsRecoverOverFixedTerm] [bit] NULL,
	[IsTaxDepreciationTerminated] [bit] NULL,
	[IsStraightLineMethodUsed] [bit] NULL,
	[IsConditionalSale] [bit] NULL,
	[EntityType] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[ContractSequenceNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BlendedItemName] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[TaxDepDisposalGLTemplateId] [bigint] NULL,
	[TaxAssetSetupGLTemplateId] [bigint] NULL,
	[TaxDepExpenseGLTemplateId] [bigint] NULL,
	[CurrentTaxAssetSetupGLTemplateId] [bigint] NULL,
	[CurrentTaxDepExpenseGLTemplateId] [bigint] NULL,
	[ContractCurrencyISO] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[InstrumentTypeId] [bigint] NULL,
	[LineOfBusinessId] [bigint] NULL,
	[CostCenterId] [bigint] NULL,
	[TerminationFiscalYear] [int] NULL,
	[TaskChunkServiceInstanceId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[IsSubmitted] [bit] NOT NULL,
	[ReversalPostDate] [date] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
