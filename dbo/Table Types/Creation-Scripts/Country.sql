CREATE TYPE [dbo].[Country] AS TABLE(
	[ShortName] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[LongName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PostalCodeMask] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[PostalCodeFormat] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[IsPostalCodeMandatory] [bit] NOT NULL,
	[CorporateTaxIDName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[CorporateTaxIDMask] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IndividualTaxIDName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IndividualTaxIDMask] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[ISO_CountryCode] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TaxSourceType] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVATApplicable] [bit] NOT NULL,
	[ISO_CountryCodeAlpha2] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
