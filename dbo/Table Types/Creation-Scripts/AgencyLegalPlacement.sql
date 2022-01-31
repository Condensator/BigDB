CREATE TYPE [dbo].[AgencyLegalPlacement] AS TABLE(
	[PlacementNumber] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[PlacementType] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[PlacementPurpose] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[DateOfPlacement] [date] NOT NULL,
	[FeeStructure] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fee_Amount] [decimal](16, 2) NULL,
	[Fee_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[ContingencyPercentage] [decimal](5, 2) NULL,
	[AgencyFileNumber] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Status] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[Outcome] [nvarchar](26) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[VendorId] [bigint] NULL,
	[CustomerId] [bigint] NOT NULL,
	[LegalReliefId] [bigint] NULL,
	[BusinessUnitId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
