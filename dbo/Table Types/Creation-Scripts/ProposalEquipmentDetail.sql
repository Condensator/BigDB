CREATE TYPE [dbo].[ProposalEquipmentDetail] AS TABLE(
	[Number] [int] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Cost_Amount] [decimal](16, 2) NOT NULL,
	[Cost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[TotalCost_Amount] [decimal](16, 2) NOT NULL,
	[TotalCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[RentFactor] [decimal](18, 8) NOT NULL,
	[Rent_Amount] [decimal](16, 2) NOT NULL,
	[Rent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[InterestRate] [decimal](10, 6) NOT NULL,
	[ProposedResidualFactor] [decimal](18, 8) NOT NULL,
	[ProposedResidual_Amount] [decimal](16, 2) NOT NULL,
	[ProposedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[GuaranteedResidualFactor] [decimal](18, 8) NOT NULL,
	[GuaranteedResidual_Amount] [decimal](16, 2) NOT NULL,
	[GuaranteedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[InterimRentFactor] [decimal](18, 8) NOT NULL,
	[InterimRent_Amount] [decimal](16, 2) NOT NULL,
	[InterimRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PricingGroupId] [bigint] NOT NULL,
	[AssetTypeId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[VendorId] [bigint] NULL,
	[ProposalExhibitId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
