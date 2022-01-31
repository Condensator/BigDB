CREATE TYPE [dbo].[SecurityDeposit] AS TABLE(
	[DepositType] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EntityType] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[Amount_Amount] [decimal](16, 2) NOT NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[DueDate] [date] NOT NULL,
	[InvoiceReceivableGroupingOption] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[PostDate] [date] NOT NULL,
	[InvoiceComment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[HoldToMaturity] [bit] NOT NULL,
	[NumberOfMonthsRetained] [int] NULL,
	[HoldEndDate] [date] NULL,
	[IsServiced] [bit] NOT NULL,
	[IsCollected] [bit] NOT NULL,
	[IsPrivateLabel] [bit] NOT NULL,
	[IsOwned] [bit] NOT NULL,
	[ProjectedVATAmount_Amount] [decimal](16, 2) NULL,
	[ProjectedVATAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ActualVATAmount_Amount] [decimal](16, 2) NULL,
	[ActualVATAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[CurrencyId] [bigint] NOT NULL,
	[LineofBusinessId] [bigint] NULL,
	[InstrumentTypeId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[LegalEntityId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[ReceivableCodeId] [bigint] NOT NULL,
	[LocationId] [bigint] NULL,
	[BillToId] [bigint] NOT NULL,
	[RemitToId] [bigint] NOT NULL,
	[ReceivableId] [bigint] NULL,
	[ReceiptGLTemplateId] [bigint] NULL,
	[CostCenterId] [bigint] NOT NULL,
	[CountryId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO