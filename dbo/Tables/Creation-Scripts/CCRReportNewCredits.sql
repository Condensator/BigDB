SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCRReportNewCredits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeofLoan] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ContractualAmount_Amount] [decimal](16, 2) NULL,
	[ContractualAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FinancialInstitution] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[DNAParametersForCreditDecisionId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[CCRReportNewCredits]  WITH CHECK ADD  CONSTRAINT [EDNAParametersForCreditDecision_CCRReportNewCredits] FOREIGN KEY([DNAParametersForCreditDecisionId])
REFERENCES [dbo].[DNAParametersForCreditDecisions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CCRReportNewCredits] CHECK CONSTRAINT [EDNAParametersForCreditDecision_CCRReportNewCredits]
GO
