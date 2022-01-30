CREATE TYPE [dbo].[LeaseAsset] AS TABLE(
	[ReferenceNumber] [int] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[NBV_Amount] [decimal](16, 2) NOT NULL,
	[NBV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Markup_Amount] [decimal](16, 2) NOT NULL,
	[Markup_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CustomerCost_Amount] [decimal](16, 2) NOT NULL,
	[CustomerCost_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FMV_Amount] [decimal](16, 2) NOT NULL,
	[FMV_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[SpecificCostAdjustment_Amount] [decimal](16, 2) NOT NULL,
	[SpecificCostAdjustment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[SpecificCostAdjustmentOnCommencement_Amount] [decimal](16, 2) NOT NULL,
	[SpecificCostAdjustmentOnCommencement_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ValueAsOfDate] [date] NULL,
	[InstallationDate] [date] NULL,
	[UsePayDate] [bit] NOT NULL,
	[PaymentDate] [date] NULL,
	[InterimInterestProcessedAfterPayment] [bit] NOT NULL,
	[InterimRentProcessedAfterPayment] [bit] NOT NULL,
	[InterimInterestStartDate] [date] NULL,
	[InterimRentStartDate] [date] NULL,
	[BillMaxInterim] [bit] NOT NULL,
	[MaximumInterimDays] [int] NOT NULL,
	[InterimRentFactor] [decimal](18, 8) NOT NULL,
	[InterimRent_Amount] [decimal](16, 2) NOT NULL,
	[InterimRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[RentFactor] [decimal](18, 8) NOT NULL,
	[Rent_Amount] [decimal](16, 2) NOT NULL,
	[Rent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[OTPRentFactor] [decimal](18, 8) NOT NULL,
	[OTPRent_Amount] [decimal](16, 2) NOT NULL,
	[OTPRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[RVRecapFactor] [decimal](18, 8) NOT NULL,
	[RVRecapAmount_Amount] [decimal](16, 2) NOT NULL,
	[RVRecapAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[SupplementalRentFactor] [decimal](18, 8) NOT NULL,
	[SupplementalRent_Amount] [decimal](16, 2) NOT NULL,
	[SupplementalRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CustomerExpectedResidualFactor] [decimal](18, 8) NOT NULL,
	[CustomerExpectedResidual_Amount] [decimal](16, 2) NOT NULL,
	[CustomerExpectedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[BookedResidualFactor] [decimal](18, 8) NOT NULL,
	[BookedResidual_Amount] [decimal](16, 2) NOT NULL,
	[BookedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CustomerGuaranteedResidualFactor] [decimal](18, 8) NOT NULL,
	[CustomerGuaranteedResidual_Amount] [decimal](16, 2) NOT NULL,
	[CustomerGuaranteedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ThirdPartyGuaranteedResidualFactor] [decimal](18, 8) NOT NULL,
	[ThirdPartyGuaranteedResidual_Amount] [decimal](16, 2) NOT NULL,
	[ThirdPartyGuaranteedResidual_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ResidualValueInsuranceFactor] [decimal](18, 8) NOT NULL,
	[ResidualValueInsurance_Amount] [decimal](16, 2) NOT NULL,
	[ResidualValueInsurance_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedInterimInterest_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedInterimInterest_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedInterimRent_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedInterimRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedSalesTax_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedSalesTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedIDC_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedIDC_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[MaturityPayment_Amount] [decimal](16, 2) NOT NULL,
	[MaturityPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[MaturityPaymentFactor] [decimal](18, 8) NOT NULL,
	[CapitalizationType] [nvarchar](26) COLLATE Latin1_General_CI_AS NULL,
	[IsEligibleForBilling] [bit] NOT NULL,
	[TerminationDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsTransferAsset] [bit] NOT NULL,
	[InterimInterestGeneratedTillDate] [date] NULL,
	[InterimRentGeneratedTillDate] [date] NULL,
	[IsTaxDepreciable] [bit] NOT NULL,
	[IsTaxAccountingActive] [bit] NOT NULL,
	[TaxBasisAmount_Amount] [decimal](16, 2) NULL,
	[TaxBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[FXTaxBasisAmount_Amount] [decimal](16, 2) NULL,
	[FXTaxBasisAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[TaxDepStartDate] [date] NULL,
	[TaxDepEndDate] [date] NULL,
	[AccumulatedDepreciation_Amount] [decimal](16, 2) NOT NULL,
	[AccumulatedDepreciation_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AssetImpairment_Amount] [decimal](16, 2) NOT NULL,
	[AssetImpairment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[DeferredRentalIncome_Amount] [decimal](16, 2) NOT NULL,
	[DeferredRentalIncome_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TrueDownPayment_Amount] [decimal](16, 2) NOT NULL,
	[TrueDownPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedProgressPayment_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedProgressPayment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsCollateralOnLoan] [bit] NOT NULL,
	[IsNewlyAdded] [bit] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[OriginalCapitalizedAmount_Amount] [decimal](16, 2) NOT NULL,
	[OriginalCapitalizedAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[SalesTaxAmount_Amount] [decimal](16, 2) NOT NULL,
	[SalesTaxAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[TaxPaidtoVendor_Amount] [decimal](16, 2) NOT NULL,
	[TaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[GSTTaxPaidtoVendor_Amount] [decimal](16, 2) NOT NULL,
	[GSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[HSTTaxPaidtoVendor_Amount] [decimal](16, 2) NOT NULL,
	[HSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[QSTorPSTTaxPaidtoVendor_Amount] [decimal](16, 2) NOT NULL,
	[QSTorPSTTaxPaidtoVendor_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[TaxReservePercentage] [nvarchar](7) COLLATE Latin1_General_CI_AS NULL,
	[OTPDepreciationTerm] [int] NOT NULL,
	[ETCAdjustmentAmount_Amount] [decimal](16, 2) NOT NULL,
	[ETCAdjustmentAmount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PrepaidUpfrontTax_Amount] [decimal](16, 2) NOT NULL,
	[PrepaidUpfrontTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[AssessedUpfrontTax_Amount] [decimal](16, 2) NOT NULL,
	[AssessedUpfrontTax_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsPrepaidUpfrontTax] [bit] NOT NULL,
	[OnRoadDate] [date] NULL,
	[IsFailedSaleLeaseback] [bit] NOT NULL,
	[IsLeaseAsset] [bit] NOT NULL,
	[IsSaleLeaseback] [bit] NOT NULL,
	[InterimMarkup_Amount] [decimal](16, 2) NOT NULL,
	[InterimMarkup_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CapitalizedAdditionalCharge_Amount] [decimal](16, 2) NOT NULL,
	[CapitalizedAdditionalCharge_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[PreviousCapitalizedAdditionalCharge_Amount] [decimal](16, 2) NOT NULL,
	[PreviousCapitalizedAdditionalCharge_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsAdditionalChargeSoftAsset] [bit] NOT NULL,
	[SalesTaxRemittanceResponsibility] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[EligibleForResidualValueInsurance] [nvarchar](13) COLLATE Latin1_General_CI_AS NULL,
	[TRACPercentage] [decimal](5, 2) NULL,
	[CertificateOfAcceptanceNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CertificateOfAcceptanceStatus] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[PreCapitalizationRent_Amount] [decimal](16, 2) NOT NULL,
	[PreCapitalizationRent_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[UpfrontLossOnLease_Amount] [decimal](16, 2) NOT NULL,
	[UpfrontLossOnLease_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[RequestedResidualPercentage] [decimal](5, 2) NOT NULL,
	[InsuranceAssessment_Amount] [decimal](16, 2) NULL,
	[InsuranceAssessment_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[AssetId] [bigint] NULL,
	[CapitalizedForId] [bigint] NULL,
	[TaxDepTemplateId] [bigint] NULL,
	[BillToId] [bigint] NULL,
	[PayableInvoiceId] [bigint] NULL,
	[LeaseTaxAssessmentDetailId] [bigint] NULL,
	[BookDepreciationTemplateId] [bigint] NULL,
	[LeaseRestructureId] [bigint] NULL,
	[StateTaxTypeId] [bigint] NULL,
	[CityTaxTypeId] [bigint] NULL,
	[CountyTaxTypeId] [bigint] NULL,
	[VendorRemitToId] [bigint] NULL,
	[UpfrontTaxSundryId] [bigint] NULL,
	[AcquisitionLocationId] [bigint] NULL,
	[CreditProfileEquipmentDetailId] [bigint] NULL,
	[BranchAddressId] [bigint] NULL,
	[LeaseFinanceId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
