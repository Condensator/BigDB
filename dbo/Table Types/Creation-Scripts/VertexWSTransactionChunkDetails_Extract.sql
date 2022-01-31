CREATE TYPE [dbo].[VertexWSTransactionChunkDetails_Extract] AS TABLE(
	[VertexWSTransactionId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[VertexWSTransactionChunks_ExtractId] [bigint] NOT NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
