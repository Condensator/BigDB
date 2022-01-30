CREATE TYPE [dbo].[LienAdditionalSecuredParty] AS TABLE(
	[SecuredPartyType] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsAssignor] [bit] NOT NULL,
	[IsRemoved] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SecuredFunderId] [bigint] NULL,
	[SecuredLegalEntityId] [bigint] NULL,
	[LienFilingId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
