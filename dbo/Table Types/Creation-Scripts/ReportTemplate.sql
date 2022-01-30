CREATE TYPE [dbo].[ReportTemplate] AS TABLE(
	[Name] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Type] [nvarchar](23) COLLATE Latin1_General_CI_AS NOT NULL,
	[OutputFormat] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[Privacy] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[ColumnsToHide] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[ColumnOrder] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[SortOrder] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[GroupBy] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[GroupByLabel] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[TotalFieldsToHide] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[SortBy] [nvarchar](1000) COLLATE Latin1_General_CI_AS NULL,
	[Culture] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[NonAccessableFieldList] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
