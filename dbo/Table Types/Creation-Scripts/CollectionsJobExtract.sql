CREATE TYPE [dbo].[CollectionsJobExtract] AS TABLE(
	[CustomerId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ContractId] [bigint] NOT NULL,
	[CurrencyId] [bigint] NOT NULL,
	[RemitToId] [bigint] NULL,
	[BusinessUnitId] [bigint] NOT NULL,
	[AllocatedQueueId] [bigint] NULL,
	[PrimaryCollectorId] [bigint] NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[PreviousQueueId] [bigint] NULL,
	[PreviousWorkListId] [bigint] NULL,
	[PreviousWorkListDetailId] [bigint] NULL,
	[IsWorkListIdentified] [bit] NOT NULL,
	[IsWorkListCreated] [bit] NOT NULL,
	[IsWorkListUnassigned] [bit] NOT NULL,
	[AcrossQueue] [bit] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
