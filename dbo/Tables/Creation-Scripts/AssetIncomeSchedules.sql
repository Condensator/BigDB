SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetIncomeSchedules](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BeginNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[BeginNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EndNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[EndNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Income_Amount] [decimal](16, 2) NOT NULL,
	[Income_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IncomeAccrued_Amount] [decimal](16, 2) NOT NULL,
	[IncomeAccrued_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[IncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ResidualIncome_Amount] [decimal](16, 2) NOT NULL,
	[ResidualIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ResidualIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[ResidualIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OperatingBeginNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[OperatingBeginNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OperatingEndNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[OperatingEndNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[RentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[RentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[DeferredRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[DeferredRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Depreciation_Amount] [decimal](16, 2) NOT NULL,
	[Depreciation_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Payment_Amount] [decimal](16, 2) NOT NULL,
	[Payment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AssetId] [bigint] NOT NULL,
	[LeaseIncomeScheduleId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[DeferredSellingProfitIncome_Amount] [decimal](16, 2) NOT NULL,
	[DeferredSellingProfitIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[DeferredSellingProfitIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[DeferredSellingProfitIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceBeginNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[FinanceEndNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[FinancePayment_Amount] [decimal](16, 2) NOT NULL,
	[FinanceIncome_Amount] [decimal](16, 2) NOT NULL,
	[FinanceIncomeAccrued_Amount] [decimal](16, 2) NOT NULL,
	[FinanceIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[FinanceResidualIncome_Amount] [decimal](16, 2) NOT NULL,
	[FinanceResidualIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[FinanceRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[FinanceDeferredRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[LeaseBeginNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[LeaseEndNetBookValue_Amount] [decimal](16, 2) NOT NULL,
	[LeasePayment_Amount] [decimal](16, 2) NOT NULL,
	[LeaseIncome_Amount] [decimal](16, 2) NOT NULL,
	[LeaseIncomeAccrued_Amount] [decimal](16, 2) NOT NULL,
	[LeaseIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[LeaseResidualIncome_Amount] [decimal](16, 2) NOT NULL,
	[LeaseResidualIncomeBalance_Amount] [decimal](16, 2) NOT NULL,
	[LeaseRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[LeaseDeferredRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[FinanceEndNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceBeginNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinancePayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceIncomeAccrued_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceResidualIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceResidualIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinanceDeferredRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseBeginNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseEndNetBookValue_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeasePayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseIncomeAccrued_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseResidualIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseResidualIncomeBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseDeferredRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[AssetIncomeSchedules]  WITH CHECK ADD  CONSTRAINT [EAssetIncomeSchedule_Asset] FOREIGN KEY([AssetId])
REFERENCES [dbo].[Assets] ([Id])
GO
ALTER TABLE [dbo].[AssetIncomeSchedules] CHECK CONSTRAINT [EAssetIncomeSchedule_Asset]
GO
ALTER TABLE [dbo].[AssetIncomeSchedules]  WITH CHECK ADD  CONSTRAINT [ELeaseIncomeSchedule_AssetIncomeSchedules] FOREIGN KEY([LeaseIncomeScheduleId])
REFERENCES [dbo].[LeaseIncomeSchedules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssetIncomeSchedules] CHECK CONSTRAINT [ELeaseIncomeSchedule_AssetIncomeSchedules]
GO
