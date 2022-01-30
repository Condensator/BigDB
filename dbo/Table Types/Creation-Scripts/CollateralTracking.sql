CREATE TYPE [dbo].[CollateralTracking] AS TABLE(
	[EntityType] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EntityId] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Title] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[CompletingTitleWork] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[ContactName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ContactPhone] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[CollateralStatus] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[CollateralTitleReleaseStatus] [nvarchar](29) COLLATE Latin1_General_CI_AS NULL,
	[CollateralPosition] [nvarchar](19) COLLATE Latin1_General_CI_AS NULL,
	[IsCollateralConfirmation] [bit] NOT NULL,
	[CollateralType] [nvarchar](26) COLLATE Latin1_General_CI_AS NULL,
	[IsCrossCollateralized] [bit] NOT NULL,
	[RegistrationRenewalDate] [date] NULL,
	[FAAFilingNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[InternationalRegistryFileNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PlateTailNumberVessel] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ReleasedTo] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[AssignedTo] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ThirdPartyTitleAgency] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[AssetId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
