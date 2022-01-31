SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WriteDownAssetDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WriteDownAmount_Amount] [decimal](16, 2) NOT NULL,
	[WriteDownAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[NetInvestmentWithBlended_Amount] [decimal](16, 2) NOT NULL,
	[NetInvestmentWithBlended_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[NetInvestmentWithReserve_Amount] [decimal](16, 2) NOT NULL,
	[NetInvestmentWithReserve_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[GrossWritedown_Amount] [decimal](16, 2) NOT NULL,
	[GrossWritedown_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[NetWritedown_Amount] [decimal](16, 2) NOT NULL,
	[NetWritedown_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AssetId] [bigint] NOT NULL,
	[WriteDownId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[LeaseComponentWriteDownAmount_Amount] [decimal](16, 2) NOT NULL,
	[LeaseComponentWriteDownAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[NonLeaseComponentWriteDownAmount_Amount] [decimal](16, 2) NOT NULL,
	[NonLeaseComponentWriteDownAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[WriteDownAssetDetails]  WITH CHECK ADD  CONSTRAINT [EWriteDown_WriteDownAssetDetails] FOREIGN KEY([WriteDownId])
REFERENCES [dbo].[WriteDowns] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WriteDownAssetDetails] CHECK CONSTRAINT [EWriteDown_WriteDownAssetDetails]
GO
ALTER TABLE [dbo].[WriteDownAssetDetails]  WITH CHECK ADD  CONSTRAINT [EWriteDownAssetDetail_Asset] FOREIGN KEY([AssetId])
REFERENCES [dbo].[Assets] ([Id])
GO
ALTER TABLE [dbo].[WriteDownAssetDetails] CHECK CONSTRAINT [EWriteDownAssetDetail_Asset]
GO
