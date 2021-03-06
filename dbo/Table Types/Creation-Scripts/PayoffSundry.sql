CREATE TYPE [dbo].[PayoffSundry] AS TABLE(
	[SundryType] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IncludeInPayoffInvoice] [bit] NOT NULL,
	[Amount_Amount] [decimal](16, 2) NOT NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Comment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[IsSystemGenerated] [bit] NOT NULL,
	[SystemGeneratedType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[ReferenceNumber] [int] NOT NULL,
	[PayableWithholdingTaxRate] [decimal](5, 2) NULL,
	[VATAmount_Amount] [decimal](16, 2) NOT NULL,
	[VATAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReceivableCodeId] [bigint] NULL,
	[PayableCodeId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[RemitToId] [bigint] NULL,
	[BillToId] [bigint] NULL,
	[SundryId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[VendorId] [bigint] NULL,
	[PayoffId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
