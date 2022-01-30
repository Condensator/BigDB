SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATReceivableDetail_Extract](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceivableId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ReceivableDetailId] [bigint] NOT NULL,
	[ReceivableDueDate] [date] NOT NULL,
	[AssetId] [bigint] NULL,
	[ReceivableDetailAmount] [decimal](16, 2) NOT NULL,
	[Currency] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[GLTemplateId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[TaxLevel] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[BuyerLocationId] [bigint] NOT NULL,
	[SellerLocationId] [bigint] NOT NULL,
	[TaxReceivableTypeId] [bigint] NULL,
	[PayableTypeId] [bigint] NULL,
	[TaxAssetTypeId] [bigint] NULL,
	[IsCashBased] [bit] NOT NULL,
	[BatchStatus] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[RowVersion] [timestamp] NOT NULL,
	[TaxRemittanceType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BuyerLocation] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[SellerLocation] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[TaxAssetType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[TaxReceivableType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IsCapitalizedUpfront] [bit] NOT NULL,
	[IsReceivableCodeTaxExempt] [bit] NOT NULL,
	[BuyerTaxRegistrationId] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[SellerTaxRegistrationId] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IsLateFeeProcessed] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
