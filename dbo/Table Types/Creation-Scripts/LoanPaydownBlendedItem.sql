CREATE TYPE [dbo].[LoanPaydownBlendedItem] AS TABLE(
	[PaydownCostAdjustment_Amount] [decimal](16, 2) NOT NULL,
	[PaydownCostAdjustment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AccumulatedAdjustment_Amount] [decimal](16, 2) NOT NULL,
	[AccumulatedAdjustment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[EarnedAmount_Amount] [decimal](16, 2) NOT NULL,
	[EarnedAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[UnearnedAmount_Amount] [decimal](16, 2) NOT NULL,
	[UnearnedAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Balance_Amount] [decimal](16, 2) NOT NULL,
	[Balance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BilledAmount_Amount] [decimal](16, 2) NOT NULL,
	[BilledAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AmountToBeBilled_Amount] [decimal](16, 2) NOT NULL,
	[AmountToBeBilled_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OriginalBlendedItemEndDate] [date] NULL,
	[EffectiveInterest_Amount] [decimal](16, 2) NOT NULL,
	[EffectiveInterest_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BlendedItemId] [bigint] NULL,
	[LoanPaydownId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
