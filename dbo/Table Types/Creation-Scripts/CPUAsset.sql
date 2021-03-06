CREATE TYPE [dbo].[CPUAsset] AS TABLE(
	[OriginalAssetCost_Amount] [decimal](16, 2) NULL,
	[OriginalAssetCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[BaseDistributionBasisAmount_Amount] [decimal](16, 2) NOT NULL,
	[BaseDistributionBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OverageDistributionBasisAmount_Amount] [decimal](16, 2) NOT NULL,
	[OverageDistributionBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BeginDate] [date] NOT NULL,
	[BaseUnits] [int] NULL,
	[BaseAmount_Amount] [decimal](16, 2) NOT NULL,
	[BaseAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[MaximumReading] [bigint] NULL,
	[PayoffDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[BaseReceivablesGeneratedTillDate] [date] NULL,
	[IsServiceOnly] [bit] NOT NULL,
	[IsCreatedFromBooking] [bit] NOT NULL,
	[BillToId] [bigint] NOT NULL,
	[AssetId] [bigint] NOT NULL,
	[ContractId] [bigint] NULL,
	[RemitToId] [bigint] NOT NULL,
	[CPUScheduleId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
