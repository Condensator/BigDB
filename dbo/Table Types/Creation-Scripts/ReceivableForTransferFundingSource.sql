CREATE TYPE [dbo].[ReceivableForTransferFundingSource] AS TABLE(
	[ParticipationPercentage] [decimal](18, 8) NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Participation_Amount] [decimal](16, 2) NULL,
	[Participation_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[LessorGuaranteedResidualAmount_Amount] [decimal](16, 2) NULL,
	[LessorGuaranteedResidualAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[CashHoldbackAmount_Amount] [decimal](16, 2) NULL,
	[CashHoldbackAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[UpfrontSyndicationFee_Amount] [decimal](16, 2) NULL,
	[UpfrontSyndicationFee_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ScrapeFactor] [decimal](8, 4) NULL,
	[IsActive] [bit] NOT NULL,
	[SalesTaxResponsibility] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[FunderId] [bigint] NOT NULL,
	[FunderRemitToId] [bigint] NULL,
	[FunderBillToId] [bigint] NULL,
	[FunderLocationId] [bigint] NULL,
	[ReceivableForTransferId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
