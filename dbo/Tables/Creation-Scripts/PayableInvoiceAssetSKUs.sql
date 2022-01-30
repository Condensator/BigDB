SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayableInvoiceAssetSKUs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AcquisitionCost_Amount] [decimal](16, 2) NOT NULL,
	[AcquisitionCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[OtherCost_Amount] [decimal](16, 2) NOT NULL,
	[OtherCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AssetSKUId] [bigint] NOT NULL,
	[PayableInvoiceAssetId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[PayableInvoiceAssetSKUs]  WITH CHECK ADD  CONSTRAINT [EPayableInvoiceAsset_PayableInvoiceAssetSKUs] FOREIGN KEY([PayableInvoiceAssetId])
REFERENCES [dbo].[PayableInvoiceAssets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayableInvoiceAssetSKUs] CHECK CONSTRAINT [EPayableInvoiceAsset_PayableInvoiceAssetSKUs]
GO
ALTER TABLE [dbo].[PayableInvoiceAssetSKUs]  WITH CHECK ADD  CONSTRAINT [EPayableInvoiceAssetSKU_AssetSKU] FOREIGN KEY([AssetSKUId])
REFERENCES [dbo].[AssetSKUs] ([Id])
GO
ALTER TABLE [dbo].[PayableInvoiceAssetSKUs] CHECK CONSTRAINT [EPayableInvoiceAssetSKU_AssetSKU]
GO
