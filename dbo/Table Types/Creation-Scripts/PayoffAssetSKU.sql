CREATE TYPE [dbo].[PayoffAssetSKU] AS TABLE(
	[Alias] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[SKUValuation_Amount] [decimal](16, 2) NOT NULL,
	[SKUValuation_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OLV_Amount] [decimal](16, 2) NOT NULL,
	[OLV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PlaceholderRent_Amount] [decimal](16, 2) NOT NULL,
	[PlaceholderRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PayoffAmount_Amount] [decimal](16, 2) NOT NULL,
	[PayoffAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BuyoutAmount_Amount] [decimal](16, 2) NOT NULL,
	[BuyoutAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[NBVAsOfEffectiveDate_Amount] [decimal](16, 2) NOT NULL,
	[NBVAsOfEffectiveDate_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[NBV_Amount] [decimal](16, 2) NOT NULL,
	[NBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FMV_Amount] [decimal](16, 2) NOT NULL,
	[FMV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[LeaseAssetSKUId] [bigint] NOT NULL,
	[PayoffAssetId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
