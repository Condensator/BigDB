CREATE TYPE [dbo].[EnMasseAssetInfo] AS TABLE(
	[AssetId] [bigint] NULL,
	[AssetMode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[AcquisitionDate] [date] NULL,
	[PartNumber] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[UsageCondition] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Quantity] [int] NULL,
	[InServiceDate] [date] NULL,
	[IsEligibleForPropertyTax] [bit] NULL,
	[PropertyTaxCost_Amount] [decimal](16, 2) NULL,
	[PropertyTaxCost_Currency] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[PropertyTaxDate] [date] NULL,
	[PropertyTaxReportCodeId] [bigint] NULL,
	[ProspectiveContract] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[ManufacturerId] [bigint] NULL,
	[TypeId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[UpdateAssetHistory] [bit] NULL,
	[HistoryReason] [nvarchar](19) COLLATE Latin1_General_CI_AS NULL,
	[AsOfDate] [date] NULL,
	[AssetStatus] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[AssetFinancialType] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[SourceModule] [nvarchar](23) COLLATE Latin1_General_CI_AS NULL,
	[ParentAssetId] [bigint] NULL,
	[LegalEntityId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[OwnershipStatus] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[PurchaseOrderDate] [date] NULL,
	[VendorAssetCategoryId] [bigint] NULL,
	[RegistrationStateId] [bigint] NULL,
	[SaleLeasebackCodeId] [bigint] NULL,
	[ModelYear] [decimal](18, 0) NULL,
	[VendorOrderNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[AssetCatalogId] [bigint] NULL,
	[IsSaleLeaseback] [bit] NULL,
	[AssetBookValueAdjustmentGLTemplateId] [bigint] NULL,
	[BookDepreciationGLTemplateId] [bigint] NULL,
	[IsElectronicallyDelivered] [bit] NULL,
	[InventoryRemarketerId] [bigint] NULL,
	[MakeId] [bigint] NULL,
	[ModelId] [bigint] NULL
)
GO
