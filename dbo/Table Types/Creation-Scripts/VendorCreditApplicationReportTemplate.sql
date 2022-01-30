CREATE TYPE [dbo].[VendorCreditApplicationReportTemplate] AS TABLE(
	[ApplicationStatusParam] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[DateSubmittedFrom] [date] NULL,
	[DateSubmittedTo] [date] NULL,
	[SubmittedBy] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IsPrivateLabel] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsContractsFunded] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsContractsBooked] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsAvailableBalance] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[CreditApplicationStatus] [nvarchar](19) COLLATE Latin1_General_CI_AS NULL,
	[DecisionStatus] [nvarchar](9) COLLATE Latin1_General_CI_AS NULL,
	[CreditApplicationNumberFrom] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[CreditApplicationNumberTo] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[CreditApplicationNumber] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[VendorName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ApplicationStatus] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[DateSubmitted] [date] NULL,
	[FullName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[RequestedAmount] [decimal](5, 2) NULL,
	[TransactionType] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentDescription] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[Term] [int] NULL,
	[Frequency] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Advance] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[RequestedEOTOption] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[RequestedPromotion] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PrivateLabel] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[CreditDecisionStatus] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[ApprovedAmount] [int] NULL,
	[AvailableBalance] [int] NULL,
	[ExpirationDate] [date] NULL,
	[ContractsFunded] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[InvoicesPaid] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[ContractsBooked] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[CustomerName] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[ProgramVendor] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[UDF1Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF2Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF3Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF4Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UDF5Value] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[UserId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[FromSequenceNumberId] [bigint] NULL,
	[ToSequenceNumberId] [bigint] NULL,
	[VendorId] [bigint] NULL,
	[DealerOrDistributerId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
