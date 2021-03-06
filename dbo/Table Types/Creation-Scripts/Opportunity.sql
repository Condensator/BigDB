CREATE TYPE [dbo].[Opportunity] AS TABLE(
	[Number] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Type] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[Conduit] [bit] NOT NULL,
	[Confidential] [bit] NOT NULL,
	[IsFederalIncomeTaxExempt] [bit] NOT NULL,
	[BankQualified] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[CapitalStreamUniqueId] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[ReplacementSchedule] [bit] NOT NULL,
	[ManagementSegment] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[IsAMReviewDone] [bit] NOT NULL,
	[IsOriginatedinLW] [bit] NOT NULL,
	[ReportStatus] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[SingleSignOnIdentification] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[OpportunityLostReason] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[WithdrawnReasonCode] [nvarchar](26) COLLATE Latin1_General_CI_AS NULL,
	[IsCustomerCreationRequired] [bit] NOT NULL,
	[IsLeaseCreated] [bit] NOT NULL,
	[IsAutomaticScoringSkipped] [bit] NULL,
	[LineofBusinessId] [bigint] NULL,
	[LegalEntityId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[CurrencyId] [bigint] NOT NULL,
	[OriginationSourceTypeId] [bigint] NOT NULL,
	[OriginationSourceId] [bigint] NULL,
	[OriginationSourceUserId] [bigint] NULL,
	[AcquiredPortfolioId] [bigint] NULL,
	[ReferralBankerId] [bigint] NULL,
	[ShellCustomerDetailId] [bigint] NULL,
	[ShellCustomerContactId] [bigint] NULL,
	[ShellCustomerAddressId] [bigint] NULL,
	[CostCenterId] [bigint] NOT NULL,
	[BusinessUnitId] [bigint] NOT NULL,
	[CountryId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[OriginationChannelId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
