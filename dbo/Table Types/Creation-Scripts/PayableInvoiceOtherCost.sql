CREATE TYPE [dbo].[PayableInvoiceOtherCost] AS TABLE(
	[RowNumber] [int] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AllocationMethod] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[Amount_Amount] [decimal](16, 2) NOT NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DueDate] [date] NULL,
	[IsLeaseCostAdjusted] [bit] NOT NULL,
	[InterimInterestStartDate] [date] NULL,
	[InterestUpdateLastDate] [date] NULL,
	[CreditBalance_Amount] [decimal](16, 2) NOT NULL,
	[CreditBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsUpfit] [bit] NOT NULL,
	[CapitalizeFrom] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[IsNewlyAdded] [bit] NOT NULL,
	[AssociateAssets] [bit] NOT NULL,
	[Comment] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CapitalizedProgressPayment_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedProgressPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsPaydownCompleted] [bit] NOT NULL,
	[IsPrepaidUpfrontTax] [bit] NOT NULL,
	[InterestAccrualBalance_Amount] [decimal](16, 2) NOT NULL,
	[InterestAccrualBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OtherCostWithholdingTaxRate] [decimal](5, 2) NULL,
	[AssignOtherCostAtSKULevel] [bit] NOT NULL,
	[VATType] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[SystemCalculated] [bit] NOT NULL,
	[OtherCostCodeId] [bigint] NULL,
	[OtherCostPayableCodeId] [bigint] NULL,
	[ReceivableCodeId] [bigint] NULL,
	[RemitToId] [bigint] NULL,
	[BillToId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[VendorId] [bigint] NOT NULL,
	[ContractId] [bigint] NULL,
	[SundryReceivableId] [bigint] NULL,
	[GLJournalId] [bigint] NULL,
	[ReversalGLJournalId] [bigint] NULL,
	[CostTypeId] [bigint] NULL,
	[ProgressFundingId] [bigint] NULL,
	[AssetId] [bigint] NULL,
	[AssetFeatureId] [bigint] NULL,
	[PayableRemitToId] [bigint] NULL,
	[BlendedItemCodeId] [bigint] NULL,
	[TaxCodeId] [bigint] NULL,
	[TaxTypeId] [bigint] NULL,
	[TaxCodeRateId] [bigint] NULL,
	[PayableInvoiceId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
