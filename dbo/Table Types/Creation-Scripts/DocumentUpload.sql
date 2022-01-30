CREATE TYPE [dbo].[DocumentUpload] AS TABLE(
	[Document_Source] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Document_Type] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[Document_Content] [varbinary](82) NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
