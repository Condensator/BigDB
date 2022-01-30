SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveCreditApprovedStructure]
(
 @val [dbo].[CreditApprovedStructure] READONLY
)
AS
SET NOCOUNT ON;
DECLARE @Output TABLE(
 [Action] NVARCHAR(10) NOT NULL,
 [Id] bigint NOT NULL,
 [Token] int NOT NULL,
 [RowVersion] BIGINT,
 [OldRowVersion] BIGINT
)
MERGE [dbo].[CreditApprovedStructures] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AdminFee_Amount]=S.[AdminFee_Amount],[AdminFee_Currency]=S.[AdminFee_Currency],[Amount_Amount]=S.[Amount_Amount],[Amount_Currency]=S.[Amount_Currency],[AssetCost_Amount]=S.[AssetCost_Amount],[AssetCost_Currency]=S.[AssetCost_Currency],[BaseRate]=S.[BaseRate],[CeilingRate]=S.[CeilingRate],[CompoundingFrequency]=S.[CompoundingFrequency],[CustomerExpectedResidual_Amount]=S.[CustomerExpectedResidual_Amount],[CustomerExpectedResidual_Currency]=S.[CustomerExpectedResidual_Currency],[CustomerExpectedResidualFactor]=S.[CustomerExpectedResidualFactor],[CustomerTerm]=S.[CustomerTerm],[DayCountConvention]=S.[DayCountConvention],[DealProductTypeId]=S.[DealProductTypeId],[DealTypeId]=S.[DealTypeId],[DownPayment_Amount]=S.[DownPayment_Amount],[DownPayment_Currency]=S.[DownPayment_Currency],[DueDay]=S.[DueDay],[EffectiveAnnualRate]=S.[EffectiveAnnualRate],[EstimatedBalloonAmount_Amount]=S.[EstimatedBalloonAmount_Amount],[EstimatedBalloonAmount_Currency]=S.[EstimatedBalloonAmount_Currency],[ExpectedCommencementDate]=S.[ExpectedCommencementDate],[ExpectedMaturityDate]=S.[ExpectedMaturityDate],[FloorRate]=S.[FloorRate],[ForeignBuyouts_Amount]=S.[ForeignBuyouts_Amount],[ForeignBuyouts_Currency]=S.[ForeignBuyouts_Currency],[FrequencyStartDate]=S.[FrequencyStartDate],[GSTorHST_Amount]=S.[GSTorHST_Amount],[GSTorHST_Currency]=S.[GSTorHST_Currency],[GuaranteedResidual_Amount]=S.[GuaranteedResidual_Amount],[GuaranteedResidual_Currency]=S.[GuaranteedResidual_Currency],[GuaranteedResidualFactor]=S.[GuaranteedResidualFactor],[InceptionPayment_Amount]=S.[InceptionPayment_Amount],[InceptionPayment_Currency]=S.[InceptionPayment_Currency],[InceptionRentFactor]=S.[InceptionRentFactor],[IndexAsofDate]=S.[IndexAsofDate],[IrregularFrequencyDescription]=S.[IrregularFrequencyDescription],[IsActive]=S.[IsActive],[IsAdvance]=S.[IsAdvance],[IsCustomerFacingRate]=S.[IsCustomerFacingRate],[IsDownPaymentIncludeTax]=S.[IsDownPaymentIncludeTax],[IsFloatRateLease]=S.[IsFloatRateLease],[IsIndexBased]=S.[IsIndexBased],[IsIndexBasedProgressFunding]=S.[IsIndexBasedProgressFunding],[IsPaymentScheduleParameterChanged]=S.[IsPaymentScheduleParameterChanged],[IsProgressFunding]=S.[IsProgressFunding],[IsRegularPaymentStream]=S.[IsRegularPaymentStream],[IsResidualSharing]=S.[IsResidualSharing],[IsSaleLeaseback]=S.[IsSaleLeaseback],[IsStepPayment]=S.[IsStepPayment],[IsVATAssessedForPayable]=S.[IsVATAssessedForPayable],[IsVATAssessedForReceivable]=S.[IsVATAssessedForReceivable],[Number]=S.[Number],[NumberOfInceptionPayments]=S.[NumberOfInceptionPayments],[NumberofPayments]=S.[NumberofPayments],[OtherCosts_Amount]=S.[OtherCosts_Amount],[OtherCosts_Currency]=S.[OtherCosts_Currency],[OtherCredits_Amount]=S.[OtherCredits_Amount],[OtherCredits_Currency]=S.[OtherCredits_Currency],[PaymentFrequency]=S.[PaymentFrequency],[PricingBaseIndexId]=S.[PricingBaseIndexId],[PricingOption]=S.[PricingOption],[ProgramIndicatorConfigId]=S.[ProgramIndicatorConfigId],[ProgressFundingBaseIndexId]=S.[ProgressFundingBaseIndexId],[ProgressFundingBaseRate]=S.[ProgressFundingBaseRate],[ProgressFundingCeilingRate]=S.[ProgressFundingCeilingRate],[ProgressFundingDescription]=S.[ProgressFundingDescription],[ProgressFundingFloorRate]=S.[ProgressFundingFloorRate],[ProgressFundingIndexAsofDate]=S.[ProgressFundingIndexAsofDate],[ProgressFundingSpread]=S.[ProgressFundingSpread],[ProgressFundingTotalRate]=S.[ProgressFundingTotalRate],[PSTorQST_Amount]=S.[PSTorQST_Amount],[PSTorQST_Currency]=S.[PSTorQST_Currency],[Refinance_Amount]=S.[Refinance_Amount],[Refinance_Currency]=S.[Refinance_Currency],[Rent_Amount]=S.[Rent_Amount],[Rent_Currency]=S.[Rent_Currency],[RentFactor]=S.[RentFactor],[ResidualatRisk_Amount]=S.[ResidualatRisk_Amount],[ResidualatRisk_Currency]=S.[ResidualatRisk_Currency],[Revolving]=S.[Revolving],[ServicesOrSoftcosts_Amount]=S.[ServicesOrSoftcosts_Amount],[ServicesOrSoftcosts_Currency]=S.[ServicesOrSoftcosts_Currency],[Software_Amount]=S.[Software_Amount],[Software_Currency]=S.[Software_Currency],[Spread]=S.[Spread],[StepPaymentStartDate]=S.[StepPaymentStartDate],[StepPercentage]=S.[StepPercentage],[StepPeriod]=S.[StepPeriod],[StubAdjustment]=S.[StubAdjustment],[Term]=S.[Term],[TotalDownPayment_Amount]=S.[TotalDownPayment_Amount],[TotalDownPayment_Currency]=S.[TotalDownPayment_Currency],[TotalRate]=S.[TotalRate],[TradeIn_Amount]=S.[TradeIn_Amount],[TradeIn_Currency]=S.[TradeIn_Currency],[TradeUp_Amount]=S.[TradeUp_Amount],[TradeUp_Currency]=S.[TradeUp_Currency],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[VATDownPayment_Amount]=S.[VATDownPayment_Amount],[VATDownPayment_Currency]=S.[VATDownPayment_Currency],[VendorRateCardRate]=S.[VendorRateCardRate],[VendorRateCardYield]=S.[VendorRateCardYield],[VendorSubsidy_Amount]=S.[VendorSubsidy_Amount],[VendorSubsidy_Currency]=S.[VendorSubsidy_Currency]
WHEN NOT MATCHED THEN
	INSERT ([AdminFee_Amount],[AdminFee_Currency],[Amount_Amount],[Amount_Currency],[AssetCost_Amount],[AssetCost_Currency],[BaseRate],[CeilingRate],[CompoundingFrequency],[CreatedById],[CreatedTime],[CreditProfileId],[CustomerExpectedResidual_Amount],[CustomerExpectedResidual_Currency],[CustomerExpectedResidualFactor],[CustomerTerm],[DayCountConvention],[DealProductTypeId],[DealTypeId],[DownPayment_Amount],[DownPayment_Currency],[DueDay],[EffectiveAnnualRate],[EstimatedBalloonAmount_Amount],[EstimatedBalloonAmount_Currency],[ExpectedCommencementDate],[ExpectedMaturityDate],[FloorRate],[ForeignBuyouts_Amount],[ForeignBuyouts_Currency],[FrequencyStartDate],[GSTorHST_Amount],[GSTorHST_Currency],[GuaranteedResidual_Amount],[GuaranteedResidual_Currency],[GuaranteedResidualFactor],[InceptionPayment_Amount],[InceptionPayment_Currency],[InceptionRentFactor],[IndexAsofDate],[IrregularFrequencyDescription],[IsActive],[IsAdvance],[IsCustomerFacingRate],[IsDownPaymentIncludeTax],[IsFloatRateLease],[IsIndexBased],[IsIndexBasedProgressFunding],[IsPaymentScheduleParameterChanged],[IsProgressFunding],[IsRegularPaymentStream],[IsResidualSharing],[IsSaleLeaseback],[IsStepPayment],[IsVATAssessedForPayable],[IsVATAssessedForReceivable],[Number],[NumberOfInceptionPayments],[NumberofPayments],[OtherCosts_Amount],[OtherCosts_Currency],[OtherCredits_Amount],[OtherCredits_Currency],[PaymentFrequency],[PricingBaseIndexId],[PricingOption],[ProgramIndicatorConfigId],[ProgressFundingBaseIndexId],[ProgressFundingBaseRate],[ProgressFundingCeilingRate],[ProgressFundingDescription],[ProgressFundingFloorRate],[ProgressFundingIndexAsofDate],[ProgressFundingSpread],[ProgressFundingTotalRate],[PSTorQST_Amount],[PSTorQST_Currency],[Refinance_Amount],[Refinance_Currency],[Rent_Amount],[Rent_Currency],[RentFactor],[ResidualatRisk_Amount],[ResidualatRisk_Currency],[Revolving],[ServicesOrSoftcosts_Amount],[ServicesOrSoftcosts_Currency],[Software_Amount],[Software_Currency],[Spread],[StepPaymentStartDate],[StepPercentage],[StepPeriod],[StubAdjustment],[Term],[TotalDownPayment_Amount],[TotalDownPayment_Currency],[TotalRate],[TradeIn_Amount],[TradeIn_Currency],[TradeUp_Amount],[TradeUp_Currency],[VATDownPayment_Amount],[VATDownPayment_Currency],[VendorRateCardRate],[VendorRateCardYield],[VendorSubsidy_Amount],[VendorSubsidy_Currency])
    VALUES (S.[AdminFee_Amount],S.[AdminFee_Currency],S.[Amount_Amount],S.[Amount_Currency],S.[AssetCost_Amount],S.[AssetCost_Currency],S.[BaseRate],S.[CeilingRate],S.[CompoundingFrequency],S.[CreatedById],S.[CreatedTime],S.[CreditProfileId],S.[CustomerExpectedResidual_Amount],S.[CustomerExpectedResidual_Currency],S.[CustomerExpectedResidualFactor],S.[CustomerTerm],S.[DayCountConvention],S.[DealProductTypeId],S.[DealTypeId],S.[DownPayment_Amount],S.[DownPayment_Currency],S.[DueDay],S.[EffectiveAnnualRate],S.[EstimatedBalloonAmount_Amount],S.[EstimatedBalloonAmount_Currency],S.[ExpectedCommencementDate],S.[ExpectedMaturityDate],S.[FloorRate],S.[ForeignBuyouts_Amount],S.[ForeignBuyouts_Currency],S.[FrequencyStartDate],S.[GSTorHST_Amount],S.[GSTorHST_Currency],S.[GuaranteedResidual_Amount],S.[GuaranteedResidual_Currency],S.[GuaranteedResidualFactor],S.[InceptionPayment_Amount],S.[InceptionPayment_Currency],S.[InceptionRentFactor],S.[IndexAsofDate],S.[IrregularFrequencyDescription],S.[IsActive],S.[IsAdvance],S.[IsCustomerFacingRate],S.[IsDownPaymentIncludeTax],S.[IsFloatRateLease],S.[IsIndexBased],S.[IsIndexBasedProgressFunding],S.[IsPaymentScheduleParameterChanged],S.[IsProgressFunding],S.[IsRegularPaymentStream],S.[IsResidualSharing],S.[IsSaleLeaseback],S.[IsStepPayment],S.[IsVATAssessedForPayable],S.[IsVATAssessedForReceivable],S.[Number],S.[NumberOfInceptionPayments],S.[NumberofPayments],S.[OtherCosts_Amount],S.[OtherCosts_Currency],S.[OtherCredits_Amount],S.[OtherCredits_Currency],S.[PaymentFrequency],S.[PricingBaseIndexId],S.[PricingOption],S.[ProgramIndicatorConfigId],S.[ProgressFundingBaseIndexId],S.[ProgressFundingBaseRate],S.[ProgressFundingCeilingRate],S.[ProgressFundingDescription],S.[ProgressFundingFloorRate],S.[ProgressFundingIndexAsofDate],S.[ProgressFundingSpread],S.[ProgressFundingTotalRate],S.[PSTorQST_Amount],S.[PSTorQST_Currency],S.[Refinance_Amount],S.[Refinance_Currency],S.[Rent_Amount],S.[Rent_Currency],S.[RentFactor],S.[ResidualatRisk_Amount],S.[ResidualatRisk_Currency],S.[Revolving],S.[ServicesOrSoftcosts_Amount],S.[ServicesOrSoftcosts_Currency],S.[Software_Amount],S.[Software_Currency],S.[Spread],S.[StepPaymentStartDate],S.[StepPercentage],S.[StepPeriod],S.[StubAdjustment],S.[Term],S.[TotalDownPayment_Amount],S.[TotalDownPayment_Currency],S.[TotalRate],S.[TradeIn_Amount],S.[TradeIn_Currency],S.[TradeUp_Amount],S.[TradeUp_Currency],S.[VATDownPayment_Amount],S.[VATDownPayment_Currency],S.[VendorRateCardRate],S.[VendorRateCardYield],S.[VendorSubsidy_Amount],S.[VendorSubsidy_Currency])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
