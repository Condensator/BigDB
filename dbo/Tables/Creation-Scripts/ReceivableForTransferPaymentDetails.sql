SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceivableForTransferPaymentDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DueDate] [date] NOT NULL,
	[Amount_Amount] [decimal](16, 2) NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[PaymentAmount_Amount] [decimal](16, 2) NOT NULL,
	[PaymentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsResidualPayment] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ContractId] [bigint] NOT NULL,
	[ReceivableForTransferFundingSourceId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[PaymentScheduleId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[ReceivableForTransferPaymentDetails]  WITH CHECK ADD  CONSTRAINT [EReceivableForTransferFundingSource_ReceivableForTransferPaymentDetails] FOREIGN KEY([ReceivableForTransferFundingSourceId])
REFERENCES [dbo].[ReceivableForTransferFundingSources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReceivableForTransferPaymentDetails] CHECK CONSTRAINT [EReceivableForTransferFundingSource_ReceivableForTransferPaymentDetails]
GO
ALTER TABLE [dbo].[ReceivableForTransferPaymentDetails]  WITH CHECK ADD  CONSTRAINT [EReceivableForTransferPaymentDetail_Contract] FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contracts] ([Id])
GO
ALTER TABLE [dbo].[ReceivableForTransferPaymentDetails] CHECK CONSTRAINT [EReceivableForTransferPaymentDetail_Contract]
GO
