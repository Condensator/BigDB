CREATE TYPE [dbo].[CreditBureauBusinessRatingReasonCode] AS TABLE(
	[Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Description] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[CreditBureauBusinessDetailId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
