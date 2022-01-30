CREATE TYPE [dbo].[Contract] AS TABLE(
	[OpportunityNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[SequenceNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Alias] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ReferenceType] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[ContractType] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[DiscountForLoanStatus] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[SyndicationType] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsSyndictaionGeneratePayable] [bit] NOT NULL,
	[IsLienFilingRequired] [bit] NOT NULL,
	[IsLienFilingException] [bit] NOT NULL,
	[LienExceptionComment] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[LienExceptionReason] [nvarchar](24) COLLATE Latin1_General_CI_AS NULL,
	[IsConfidential] [bit] NOT NULL,
	[ReceivableAmendmentType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[InvoiceComment] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[ChargeOffStatus] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[OriginalBookingDate] [date] NULL,
	[FinalAcceptanceDate] [date] NULL,
	[SalesTaxRemittanceMethod] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[LastPaymentAmount_Amount] [decimal](16, 2) NULL,
	[LastPaymentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[LastPaymentDate] [date] NULL,
	[TaxPaidtoVendor_Amount] [decimal](16, 2) NULL,
	[TaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[GSTTaxPaidtoVendor_Amount] [decimal](16, 2) NULL,
	[GSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[HSTTaxPaidtoVendor_Amount] [decimal](16, 2) NULL,
	[HSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[QSTorPSTTaxPaidtoVendor_Amount] [decimal](16, 2) NULL,
	[QSTorPSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[IsNonAccrual] [bit] NOT NULL,
	[NonAccrualDate] [date] NULL,
	[Status] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsOnHold] [bit] NOT NULL,
	[IsAssignToRecovery] [bit] NOT NULL,
	[ReportStatus] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[IsPostScratchIndicator] [bit] NOT NULL,
	[DocumentMethod] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[DecisionComments] [nvarchar](2500) COLLATE Latin1_General_CI_AS NULL,
	[IsReportableDelinquency] [bit] NOT NULL,
	[PreviousScheduleNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ExternalReferenceNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[InterimLoanAndSecurityAgreementDate] [date] NULL,
	[u_ConversionSource] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[FirstRightOfRefusal] [nvarchar](17) COLLATE Latin1_General_CI_AS NULL,
	[IsNonAccrualExempt] [bit] NOT NULL,
	[TaxAssessmentLevel] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[ServicingRole] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[AccountingStandard] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[DiscountingSharedPercentage] [decimal](5, 2) NULL,
	[FollowOldDueDayMethod] [bit] NOT NULL,
	[DoubtfulCollectability] [bit] NOT NULL,
	[VehicleLeaseType] [nvarchar](9) COLLATE Latin1_General_CI_AS NULL,
	[BackgroundProcessingPending] [bit] NOT NULL,
	[CurrencyId] [bigint] NOT NULL,
	[BillToId] [bigint] NULL,
	[RemitToId] [bigint] NULL,
	[DealProductTypeId] [bigint] NULL,
	[DealTypeId] [bigint] NULL,
	[LineofBusinessId] [bigint] NOT NULL,
	[CreditApprovedStructureId] [bigint] NULL,
	[ReceiptHierarchyTemplateId] [bigint] NULL,
	[CostCenterId] [bigint] NOT NULL,
	[ProgramIndicatorConfigId] [bigint] NULL,
	[ProductAndServiceTypeConfigId] [bigint] NULL,
	[LanguageId] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
