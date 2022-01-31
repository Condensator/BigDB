CREATE TYPE [dbo].[LeveragedLeasePayoff] AS TABLE(
	[Number] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PayoffDate] [date] NOT NULL,
	[QuotationDate] [date] NOT NULL,
	[GoodThroughDate] [date] NOT NULL,
	[TerminationOption] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[Comment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[Status] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[UnearnedIncome_Amount] [decimal](24, 2) NULL,
	[UnearnedIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Residual_Amount] [decimal](24, 2) NULL,
	[Residual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[DeferredTaxBalance_Amount] [decimal](24, 2) NULL,
	[DeferredTaxBalance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[PayoffAmount_Amount] [decimal](24, 2) NULL,
	[PayoffAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[RemainingRentalReceivable_Amount] [decimal](24, 2) NULL,
	[RemainingRentalReceivable_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[DueDate] [date] NOT NULL,
	[IsPayOffAtInception] [bit] NOT NULL,
	[PostDate] [date] NOT NULL,
	[LeveragedLeaseId] [bigint] NOT NULL,
	[LeveragedLeasePayoffReceivableCodeId] [bigint] NOT NULL,
	[LeveragedLeasePayoffGLTemplateId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO