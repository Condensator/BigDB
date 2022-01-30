SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PtmsExportDetailExtracts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNumber] [bigint] NULL,
	[LEGLSegmentValue] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[InstrumentType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[AddressLine1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[AddressLine2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[AddressLine3] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CityName] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[CountyName] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[StateCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ZipCode] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[AssetInServiceDate] [date] NULL,
	[PropertyTaxCost_Amount] [decimal](16, 2) NULL,
	[PropertyTaxCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[DisposedDate] [date] NULL,
	[CombinedSalesTaxRate] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[SalesTaxExemptionCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LeaseNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LesseeName] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[BillToName] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[LesseeNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LeaseCommencementDate] [date] NULL,
	[LeaseEndDate] [date] NULL,
	[AssetPaymentAmount] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BillToAddress1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[BillToAddress2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[BillToCityName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BillToState] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BillToZip] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LesseeContactNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[SerialNumber] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[ManufacturerIndicator] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ExclusionCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LegalEntityId] [bigint] NULL,
	[PropertyTaxCostInString] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[StateId] [bigint] NULL,
	[InventoryDate] [date] NULL,
	[ProductType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[CollateralCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Model] [decimal](4, 0) NULL,
	[AddressCodeForAsset] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[BusinessCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ProductCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DisposalNote] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DispositionCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[SICCode] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[AssetAlias] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[OECCostInString] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LocationEffectiveFromDate] [date] NULL,
	[AssetStatus] [nvarchar](17) COLLATE Latin1_General_CI_AS NULL,
	[AssetUsageCondition] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[AssetLocationId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowVersion] [timestamp] NOT NULL,
	[IsIncluded] [bit] NOT NULL,
	[RejectReason] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[FileName] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[IsTransferAsset] [bit] NOT NULL,
	[LienDate] [date] NULL,
	[AsOfDate] [date] NULL,
	[PreviousLeaseNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IsDisposedAssetReported] [bit] NOT NULL,
	[AssetClassCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PropertyTaxReportCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
