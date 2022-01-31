CREATE TYPE [dbo].[UDF] AS TABLE(
	[UDF1Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[UDF2Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF3Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF4Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF5Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF1Label] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF2Label] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF3Label] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF4Label] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF5Label] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[CreditApplicationNumber] [bigint] NULL,
	[QuoteRequestID] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[VendorId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[AssetId] [bigint] NULL,
	[InvoiceId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO