CREATE TYPE [dbo].[PayOffTemplateTransactionType] AS TABLE(
	[IsActive] [bit] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[TransactionTypeId] [bigint] NULL,
	[PayOffTemplateId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
