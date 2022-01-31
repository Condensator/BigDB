SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACHFileHeaders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ACHFileHeaderRecordTypeCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileHeaderPriorityCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Destination] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[Origin] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileHeaderFileIDModifier] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileHeaderRecordSize] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileHeaderBlockingFactor] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileHeaderFormatCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[DestName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[OriginName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ACHFileControlRecordTypeCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PAPFileHeaderRecordTypeCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PAPFileHeaderTransactionCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CurrencyName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PAPFileHeaderInputType] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PAPFileControlRecordTypeCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PAPFileControlTransactionCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CurrencyId] [bigint] NULL,
	[IsPrivateLabel] [bit] NOT NULL,
	[RemitToId] [bigint] NULL,
	[RemitToName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LegalEntityBankAccountId] [bigint] NULL,
	[GenerateSeparateOneTimeACH] [bit] NOT NULL,
	[ACHOperatorConfigId] [bigint] NULL,
	[FileFormat] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TotalDebitAmount] [decimal](16, 2) NULL,
	[NACHAFilePaddingOption] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[GenerateControlFile] [bit] NOT NULL,
	[ACISCustomerNumber] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[SourceOfInput] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[ACHRunFileId] [bigint] NULL,
	[CurrenySymbol] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[LegalEntityNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BankBranchName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[JobStepInstanceId] [bigint] NULL,
	[FileHeaderId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
