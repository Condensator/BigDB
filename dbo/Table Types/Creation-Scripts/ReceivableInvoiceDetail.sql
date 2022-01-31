CREATE TYPE [dbo].[ReceivableInvoiceDetail] AS TABLE(
	[EntityType] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EntityId] [bigint] NOT NULL,
	[InvoiceAmount_Amount] [decimal](16, 2) NOT NULL,
	[InvoiceAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[InvoiceTaxAmount_Amount] [decimal](16, 2) NOT NULL,
	[InvoiceTaxAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Balance_Amount] [decimal](16, 2) NOT NULL,
	[Balance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TaxBalance_Amount] [decimal](16, 2) NOT NULL,
	[TaxBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EffectiveBalance_Amount] [decimal](16, 2) NOT NULL,
	[EffectiveBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EffectiveTaxBalance_Amount] [decimal](16, 2) NOT NULL,
	[EffectiveTaxBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BlendNumber] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ExchangeRate] [decimal](20, 10) NULL,
	[ReceivableAmount_Amount] [decimal](16, 2) NOT NULL,
	[ReceivableAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TaxAmount_Amount] [decimal](16, 2) NOT NULL,
	[TaxAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReceivableId] [bigint] NOT NULL,
	[ReceivableTypeId] [bigint] NOT NULL,
	[SequenceNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PaymentType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ReceivableDetailId] [bigint] NOT NULL,
	[ReceivableCategoryId] [bigint] NOT NULL,
	[ReceivableInvoiceId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
