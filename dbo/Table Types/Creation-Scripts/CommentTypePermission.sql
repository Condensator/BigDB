CREATE TYPE [dbo].[CommentTypePermission] AS TABLE(
	[Condition] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[AssignmentType] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Permission] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreationAllowed] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserSelectionId] [bigint] NOT NULL,
	[CommentTypeId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
