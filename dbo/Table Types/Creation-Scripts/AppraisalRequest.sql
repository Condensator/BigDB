CREATE TYPE [dbo].[AppraisalRequest] AS TABLE(
	[AppraisalNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Status] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsApplyByAssets] [bit] NOT NULL,
	[Value_Amount] [decimal](16, 2) NULL,
	[Value_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[RequestedDate] [date] NOT NULL,
	[AppraisalDate] [date] NULL,
	[Comment] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Type] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[OriginationType] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[CurrencyId] [bigint] NOT NULL,
	[AppraisedById] [bigint] NULL,
	[RequestedById] [bigint] NOT NULL,
	[ThirdPartyAppraiserId] [bigint] NULL,
	[BusinessUnitId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
