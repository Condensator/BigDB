CREATE TYPE [dbo].[ReceiptDetailsMigration_Extract] AS TABLE(
	[ReceiptId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EffectiveBalance_Amount] [decimal](16, 2) NULL,
	[EffectiveBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[EffectiveTaxBalance_Amount] [decimal](16, 2) NULL,
	[EffectiveTaxBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ReceivableDetailId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NULL,
	[ReceivableId] [bigint] NULL,
	[ReceivableTaxId] [bigint] NULL,
	[ReceivableTaxDetailId] [bigint] NULL,
	[ReceivableDetailIsActive] [bit] NULL,
	[ContractId] [bigint] NULL,
	[InvoiceId] [bigint] NULL,
	[DiscountingId] [bigint] NULL,
	[ReceiptApplicationReceivableDetailId] [bigint] NULL,
	[DumpId] [bigint] NULL,
	[PrevAmountAppliedForReApplication_Amount] [decimal](16, 2) NULL,
	[PrevAmountAppliedForReApplication_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PrevBookAmountAppliedForReApplication_Amount] [decimal](16, 2) NULL,
	[PrevBookAmountAppliedForReApplication_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PrevTaxAppliedForReApplication_Amount] [decimal](16, 2) NULL,
	[PrevTaxAppliedForReApplication_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsReApplication] [bit] NULL,
	[InvoiceBalance_Amount_Amount] [decimal](16, 2) NULL,
	[InvoiceBalance_Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
