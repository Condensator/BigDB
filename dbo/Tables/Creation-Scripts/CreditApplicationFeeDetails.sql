SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditApplicationFeeDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowNumber] [int] NULL,
	[IncludeInAPR] [bit] NULL,
	[IsVAT] [bit] NULL,
	[Amount_Amount] [decimal](16, 2) NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[AmountInclVAT_Amount] [decimal](16, 2) NULL,
	[AmountInclVAT_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FeeDetailId] [bigint] NULL,
	[CreditApplicationId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[CreditApplicationFeeDetails]  WITH CHECK ADD  CONSTRAINT [ECreditApplication_CreditApplicationFeeDetails] FOREIGN KEY([CreditApplicationId])
REFERENCES [dbo].[CreditApplications] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CreditApplicationFeeDetails] CHECK CONSTRAINT [ECreditApplication_CreditApplicationFeeDetails]
GO
ALTER TABLE [dbo].[CreditApplicationFeeDetails]  WITH CHECK ADD  CONSTRAINT [ECreditApplicationFeeDetail_FeeDetail] FOREIGN KEY([FeeDetailId])
REFERENCES [dbo].[FeeDetails] ([Id])
GO
ALTER TABLE [dbo].[CreditApplicationFeeDetails] CHECK CONSTRAINT [ECreditApplicationFeeDetail_FeeDetail]
GO
