SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanInsuranceRequirements](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PerOccurrenceAmount_Amount] [decimal](16, 2) NOT NULL,
	[PerOccurrenceAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AggregateAmount_Amount] [decimal](16, 2) NOT NULL,
	[AggregateAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PerOccurrenceDeductible_Amount] [decimal](16, 2) NOT NULL,
	[PerOccurrenceDeductible_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AggregateDeductible_Amount] [decimal](16, 2) NOT NULL,
	[AggregateDeductible_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsManual] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[CoverageTypeConfigId] [bigint] NOT NULL,
	[LoanFinanceId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[IsContractAmount] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[LoanInsuranceRequirements]  WITH CHECK ADD  CONSTRAINT [ELoanFinance_LoanInsuranceRequirements] FOREIGN KEY([LoanFinanceId])
REFERENCES [dbo].[LoanFinances] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoanInsuranceRequirements] CHECK CONSTRAINT [ELoanFinance_LoanInsuranceRequirements]
GO
ALTER TABLE [dbo].[LoanInsuranceRequirements]  WITH CHECK ADD  CONSTRAINT [ELoanInsuranceRequirement_CoverageTypeConfig] FOREIGN KEY([CoverageTypeConfigId])
REFERENCES [dbo].[CoverageTypeConfigs] ([Id])
GO
ALTER TABLE [dbo].[LoanInsuranceRequirements] CHECK CONSTRAINT [ELoanInsuranceRequirement_CoverageTypeConfig]
GO
