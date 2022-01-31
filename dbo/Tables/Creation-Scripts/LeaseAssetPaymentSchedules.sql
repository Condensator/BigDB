SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaseAssetPaymentSchedules](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Amount_Amount] [decimal](16, 2) NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[InstallationDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[ReceivableAdjustmentAmount_Amount] [decimal](16, 2) NOT NULL,
	[ReceivableAdjustmentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AssetId] [bigint] NOT NULL,
	[LeasePaymentScheduleId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[LeaseAssetPaymentSchedules]  WITH CHECK ADD  CONSTRAINT [ELeaseAssetPaymentSchedule_Asset] FOREIGN KEY([AssetId])
REFERENCES [dbo].[Assets] ([Id])
GO
ALTER TABLE [dbo].[LeaseAssetPaymentSchedules] CHECK CONSTRAINT [ELeaseAssetPaymentSchedule_Asset]
GO
ALTER TABLE [dbo].[LeaseAssetPaymentSchedules]  WITH CHECK ADD  CONSTRAINT [ELeasePaymentSchedule_LeaseAssetPaymentSchedules] FOREIGN KEY([LeasePaymentScheduleId])
REFERENCES [dbo].[LeasePaymentSchedules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaseAssetPaymentSchedules] CHECK CONSTRAINT [ELeasePaymentSchedule_LeaseAssetPaymentSchedules]
GO
