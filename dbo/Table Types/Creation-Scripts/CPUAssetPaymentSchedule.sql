CREATE TYPE [dbo].[CPUAssetPaymentSchedule] AS TABLE(
	[Amount_Amount] [decimal](16, 2) NOT NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Units] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CPUPaymentScheduleId] [bigint] NOT NULL,
	[AssetId] [bigint] NOT NULL,
	[CPUBaseStructureId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
