CREATE TYPE [dbo].[DocumentList] AS TABLE(
	[GenerationOrder] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsMandatory] [bit] NOT NULL,
	[ForceRegenerate] [bit] NOT NULL,
	[IsManual] [bit] NOT NULL,
	[AttachmentRequired] [bit] NOT NULL,
	[SpecificEntityId] [bigint] NULL,
	[SpecificEntityNaturalId] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[EntityId] [bigint] NULL,
	[EnabledForESignature] [bit] NOT NULL,
	[DocumentSource] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[DocumentId] [bigint] NULL,
	[DocumentGroupDetailId] [bigint] NULL,
	[DocumentTypeId] [bigint] NOT NULL,
	[DocumentHeaderId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
