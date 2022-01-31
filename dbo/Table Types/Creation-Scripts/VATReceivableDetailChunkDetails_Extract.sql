CREATE TYPE [dbo].[VATReceivableDetailChunkDetails_Extract] AS TABLE(
	[VATReceivableDetail_ExtractId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[VATReceivableDetailChunk_ExtractId] [bigint] NOT NULL,
	[JobStepInstanceId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
