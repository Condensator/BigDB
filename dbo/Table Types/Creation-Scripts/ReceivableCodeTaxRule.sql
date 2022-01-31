CREATE TYPE [dbo].[ReceivableCodeTaxRule] AS TABLE(
	[JurisdictionLevel] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AppliesToLowerJurisdictions] [bit] NOT NULL,
	[ExemptionRate] [decimal](10, 6) NOT NULL,
	[IsTaxable] [bit] NOT NULL,
	[UseCorporateRate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CountryId] [bigint] NULL,
	[StateId] [bigint] NULL,
	[TaxTypeId] [bigint] NULL,
	[ReceivableCodeId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
