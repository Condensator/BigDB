CREATE TYPE [dbo].[BlendedItemCode] AS TABLE(
	[Name] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EntityType] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Type] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[BookRecognitionMode] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[RecognitionMethod] [nvarchar](17) COLLATE Latin1_General_CI_AS NULL,
	[AccumulateExpense] [bit] NOT NULL,
	[Occurrence] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[Frequency] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[GeneratePayableOrReceivable] [bit] NOT NULL,
	[IsAssetBased] [bit] NOT NULL,
	[IsFAS91] [bit] NOT NULL,
	[IsVendorSubsidy] [bit] NOT NULL,
	[IncludeInClassificationTest] [bit] NOT NULL,
	[IncludeInBlendedYield] [bit] NOT NULL,
	[Description] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[TaxRecognitionMode] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVendorCommission] [bit] NOT NULL,
	[TaxCredit] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IncludeInPayoffOrPaydown] [bit] NOT NULL,
	[PayableWithholdingTaxRate] [decimal](5, 2) NULL,
	[TaxDepTemplateId] [bigint] NULL,
	[ReceivableCodeId] [bigint] NULL,
	[PayableCodeId] [bigint] NULL,
	[BookingGLTemplateId] [bigint] NOT NULL,
	[RecognitionGLTemplateId] [bigint] NULL,
	[PortfolioId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
