CREATE TYPE [dbo].[InsurancePolicy] AS TABLE(
	[UniqueIdentificationNumber] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PolicyNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LossPayee] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IsSelfInsured] [bit] NOT NULL,
	[IsApplicableToAllStates] [bit] NOT NULL,
	[IsCertificateReceived] [bit] NOT NULL,
	[CertificateReceivedDate] [date] NULL,
	[EffectiveDate] [date] NULL,
	[ExpirationDate] [date] NULL,
	[VerifiedDate] [date] NULL,
	[LastModifiedBy] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[LastModifiedDate] [date] NULL,
	[Type] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[Comment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[ActivationDate] [date] NULL,
	[DeactivationDate] [date] NULL,
	[IsSaved] [bit] NOT NULL,
	[IsEditMode] [bit] NOT NULL,
	[AdditionalInsured] [nvarchar](41) COLLATE Latin1_General_CI_AS NULL,
	[LegalEntityId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[InsuranceCompanyId] [bigint] NULL,
	[InsuranceAgencyId] [bigint] NULL,
	[CurrencyId] [bigint] NOT NULL,
	[StateId] [bigint] NULL,
	[VerifiedById] [bigint] NULL,
	[ContactPersonId] [bigint] NULL,
	[InsuranceAgentId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
