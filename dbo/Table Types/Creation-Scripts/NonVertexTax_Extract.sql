CREATE TYPE [dbo].[NonVertexTax_Extract] AS TABLE(
	[ReceivableId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ReceivableDetailId] [bigint] NOT NULL,
	[AssetId] [bigint] NULL,
	[Currency] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[CalculatedTax] [decimal](16, 2) NOT NULL,
	[TaxResult] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[JurisdictionId] [bigint] NOT NULL,
	[JurisdictionLevel] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ImpositionType] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[EffectiveRate] [decimal](10, 6) NOT NULL,
	[ExemptionType] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ExemptionAmount] [decimal](16, 2) NOT NULL,
	[TaxTypeId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[IsCashBased] [bit] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
