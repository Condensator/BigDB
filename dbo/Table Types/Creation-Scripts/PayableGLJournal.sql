CREATE TYPE [dbo].[PayableGLJournal] AS TABLE(
	[PostDate] [date] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsReversal] [bit] NOT NULL,
	[GLJournalId] [bigint] NOT NULL,
	[PayableId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
