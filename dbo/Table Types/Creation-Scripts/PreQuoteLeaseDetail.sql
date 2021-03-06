CREATE TYPE [dbo].[PreQuoteLeaseDetail] AS TABLE(
	[DiscountRate] [decimal](8, 4) NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PayoffAmount_Amount] [decimal](16, 2) NOT NULL,
	[PayoffAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BuyoutAmount_Amount] [decimal](16, 2) NOT NULL,
	[BuyoutAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OTPRent_Amount] [decimal](16, 2) NOT NULL,
	[OTPRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FMV_Amount] [decimal](16, 2) NOT NULL,
	[FMV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LateFee_Amount] [decimal](16, 2) NOT NULL,
	[LateFee_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Maintenance_Amount] [decimal](16, 2) NOT NULL,
	[Maintenance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PropertyTax_Amount] [decimal](16, 2) NOT NULL,
	[PropertyTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OtherCharge_Amount] [decimal](16, 2) NOT NULL,
	[OtherCharge_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EstimatedPropertyTax_Amount] [decimal](16, 2) NOT NULL,
	[EstimatedPropertyTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AssetValuation_Amount] [decimal](16, 2) NOT NULL,
	[AssetValuation_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsComputationPerformed] [bit] NOT NULL,
	[IsSalesTaxAssessed] [bit] NOT NULL,
	[PayoffSalesTax_Amount] [decimal](16, 2) NOT NULL,
	[PayoffSalesTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BuyoutSalesTax_Amount] [decimal](16, 2) NOT NULL,
	[BuyoutSalesTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TerminationOptionId] [bigint] NULL,
	[PreQuoteLeaseId] [bigint] NOT NULL,
	[PreQuoteId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
