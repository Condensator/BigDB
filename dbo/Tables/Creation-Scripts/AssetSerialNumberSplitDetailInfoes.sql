SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetSerialNumberSplitDetailInfoes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AssetSerialNumberId] [bigint] NULL,
	[AssetSplitDetailInfoId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[AssetSerialNumberSplitDetailInfoes]  WITH CHECK ADD  CONSTRAINT [EAssetSerialNumberSplitDetailInfo_AssetSerialNumber] FOREIGN KEY([AssetSerialNumberId])
REFERENCES [dbo].[AssetSerialNumbers] ([Id])
GO
ALTER TABLE [dbo].[AssetSerialNumberSplitDetailInfoes] CHECK CONSTRAINT [EAssetSerialNumberSplitDetailInfo_AssetSerialNumber]
GO
ALTER TABLE [dbo].[AssetSerialNumberSplitDetailInfoes]  WITH CHECK ADD  CONSTRAINT [EAssetSplitDetailInfo_AssetSerialNumberSplitDetailInfoes] FOREIGN KEY([AssetSplitDetailInfoId])
REFERENCES [dbo].[AssetSplitDetailInfoes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssetSerialNumberSplitDetailInfoes] CHECK CONSTRAINT [EAssetSplitDetailInfo_AssetSerialNumberSplitDetailInfoes]
GO
