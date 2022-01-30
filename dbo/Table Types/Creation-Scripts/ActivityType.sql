CREATE TYPE [dbo].[ActivityType] AS TABLE(
	[Name] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Category] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[AllowDuplicate] [bit] NOT NULL,
	[DefaultPermission] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreationAllowed] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsWorkflowEnabled] [bit] NOT NULL,
	[IsTrueTask] [bit] NOT NULL,
	[Type] [nvarchar](29) COLLATE Latin1_General_CI_AS NULL,
	[Duration] [bigint] NULL,
	[IsViewableInCustomerSummary] [bit] NOT NULL,
	[EntityTypeId] [bigint] NOT NULL,
	[TransactionTobeInitiatedId] [bigint] NULL,
	[PortfolioId] [bigint] NULL,
	[DefaultUserId] [bigint] NULL,
	[DefaultUserGroupId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
