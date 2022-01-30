CREATE TYPE [dbo].[WorkItemConfig] AS TABLE(
	[Name] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Label] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Form] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[Duration] [bigint] NULL,
	[IsRemovable] [bit] NOT NULL,
	[IsRemove] [bit] NOT NULL,
	[IsOptional] [bit] NOT NULL,
	[IsNotify] [bit] NOT NULL,
	[IsNotifyOnAssignment] [bit] NOT NULL,
	[DummyEndStep] [bit] NOT NULL,
	[OverrideOwnerUser] [bit] NOT NULL,
	[IsOwnerUserRequired] [bit] NOT NULL,
	[AllowTossing] [bit] NOT NULL,
	[AcquireFromOtherUser] [bit] NOT NULL,
	[TransactionStageConfigId] [bigint] NULL,
	[TransactionConfigId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
