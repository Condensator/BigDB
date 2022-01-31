CREATE TYPE [dbo].[BlendedItem] AS TABLE(
	[Name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowNumber] [int] NOT NULL,
	[EntityType] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[Amount_Amount] [decimal](16, 2) NOT NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[VATAmount_Amount] [decimal](16, 2) NOT NULL,
	[VATAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CurrentEndDate] [date] NULL,
	[DueDate] [date] NULL,
	[DueDay] [int] NULL,
	[Frequency] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[FrequencyUnit] [int] NULL,
	[Occurrence] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[NumberOfPayments] [int] NOT NULL,
	[NumberOfReceivablesGenerated] [int] NOT NULL,
	[Type] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[DeferRecognition] [bit] NOT NULL,
	[IsAssetBased] [bit] NOT NULL,
	[IsFAS91] [bit] NOT NULL,
	[IncludeInClassificationTest] [bit] NOT NULL,
	[IncludeInBlendedYield] [bit] NOT NULL,
	[Description] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[AccumulateExpense] [bit] NOT NULL,
	[BookRecognitionMode] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[RecognitionMethod] [nvarchar](17) COLLATE Latin1_General_CI_AS NULL,
	[ExpenseRecognitionMode] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[TaxRecognitionMode] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[GeneratePayableOrReceivable] [bit] NOT NULL,
	[InvoiceReceivableGroupingOption] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[IsNewlyAdded] [bit] NOT NULL,
	[PostDate] [date] NULL,
	[SystemConfigType] [nvarchar](36) COLLATE Latin1_General_CI_AS NULL,
	[IsSystemGenerated] [bit] NOT NULL,
	[IsVendorSubsidy] [bit] NOT NULL,
	[IsVendorCommission] [bit] NOT NULL,
	[IsETC] [bit] NOT NULL,
	[TaxCreditTaxBasisPercentage] [decimal](5, 2) NOT NULL,
	[EarnedAmount_Amount] [decimal](16, 2) NOT NULL,
	[EarnedAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AmountBilled_Amount] [decimal](16, 2) NOT NULL,
	[AmountBilled_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsFromST] [bit] NOT NULL,
	[PayableWithholdingTaxRate] [decimal](5, 2) NULL,
	[ParentBlendedItemId] [bigint] NULL,
	[BlendedItemCodeId] [bigint] NULL,
	[ReceivableCodeId] [bigint] NULL,
	[PayableCodeId] [bigint] NULL,
	[LeaseAssetId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[BillToId] [bigint] NULL,
	[PayableRemitToId] [bigint] NULL,
	[BookingGLTemplateId] [bigint] NULL,
	[RecognitionGLTemplateId] [bigint] NULL,
	[TaxDepTemplateId] [bigint] NULL,
	[PartyId] [bigint] NULL,
	[ReceivableRemitToId] [bigint] NULL,
	[RelatedBlendedItemId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
