CREATE TYPE [dbo].[TransactionInstance] AS TABLE(
	[EntityId] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[EntityName] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[TransactionName] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[WorkflowSource] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[EntitySummary] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[WorkflowInstanceId] [uniqueidentifier] NOT NULL,
	[Status] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[WorkflowInstanceData] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[FallbackForm] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Comment] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[FollowUpDate] [date] NULL,
	[IsSuspendable] [bit] NOT NULL,
	[IsFromAutoAction] [bit] NOT NULL,
	[AccessScope] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[AccessScopeId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
