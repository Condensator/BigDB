CREATE TYPE [dbo].[BranchContactType] AS TABLE(
	[IsActive] [bit] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ContactType] [nvarchar](21) COLLATE Latin1_General_CI_AS NOT NULL,
	[PortfolioId] [bigint] NOT NULL,
	[BranchContactId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
