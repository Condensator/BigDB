CREATE TYPE [dbo].[DecisionTableResult] AS TABLE(
	[ResultExpression] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsActive] [bit] NOT NULL,
	[ParameterId] [bigint] NOT NULL,
	[DecisionTableRuleId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO