SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SavePayoffAsset]
(
 @val [dbo].[PayoffAsset] READONLY
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
MERGE [dbo].[PayoffAssets] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AccumulatedNBVImpairment_Amount]=S.[AccumulatedNBVImpairment_Amount],[AccumulatedNBVImpairment_Currency]=S.[AccumulatedNBVImpairment_Currency],[AssetBookValueAdjustmentGLTemplateId]=S.[AssetBookValueAdjustmentGLTemplateId],[AssetLocationId]=S.[AssetLocationId],[AssetValuation_Amount]=S.[AssetValuation_Amount],[AssetValuation_Currency]=S.[AssetValuation_Currency],[BillToId]=S.[BillToId],[BookDepreciationTemplateId]=S.[BookDepreciationTemplateId],[BuyoutAmount_Amount]=S.[BuyoutAmount_Amount],[BuyoutAmount_Currency]=S.[BuyoutAmount_Currency],[BuyoutVATAmount_Amount]=S.[BuyoutVATAmount_Amount],[BuyoutVATAmount_Currency]=S.[BuyoutVATAmount_Currency],[CalculatedNBV_Amount]=S.[CalculatedNBV_Amount],[CalculatedNBV_Currency]=S.[CalculatedNBV_Currency],[CustomerCost_Amount]=S.[CustomerCost_Amount],[CustomerCost_Currency]=S.[CustomerCost_Currency],[CustomerId]=S.[CustomerId],[DeferredRentalIncome_Amount]=S.[DeferredRentalIncome_Amount],[DeferredRentalIncome_Currency]=S.[DeferredRentalIncome_Currency],[DeferredSellingProfitIncomeBalance_Amount]=S.[DeferredSellingProfitIncomeBalance_Amount],[DeferredSellingProfitIncomeBalance_Currency]=S.[DeferredSellingProfitIncomeBalance_Currency],[DeferredTaxCleared_Amount]=S.[DeferredTaxCleared_Amount],[DeferredTaxCleared_Currency]=S.[DeferredTaxCleared_Currency],[DepreciationTerm]=S.[DepreciationTerm],[DropOffDate]=S.[DropOffDate],[DropOffLocationId]=S.[DropOffLocationId],[FinancialType]=S.[FinancialType],[FixedTermDepreciation_Amount]=S.[FixedTermDepreciation_Amount],[FixedTermDepreciation_Currency]=S.[FixedTermDepreciation_Currency],[FloatRateRemainingRentals_Amount]=S.[FloatRateRemainingRentals_Amount],[FloatRateRemainingRentals_Currency]=S.[FloatRateRemainingRentals_Currency],[FMV_Amount]=S.[FMV_Amount],[FMV_Currency]=S.[FMV_Currency],[HeldForSale]=S.[HeldForSale],[InventoryBookDepGLTemplateId]=S.[InventoryBookDepGLTemplateId],[IsActive]=S.[IsActive],[IsAssetDroppedOff]=S.[IsAssetDroppedOff],[IsPartiallyOwned]=S.[IsPartiallyOwned],[IsSplit]=S.[IsSplit],[LeaseAssetId]=S.[LeaseAssetId],[LeaseComponentAssetValuation_Amount]=S.[LeaseComponentAssetValuation_Amount],[LeaseComponentAssetValuation_Currency]=S.[LeaseComponentAssetValuation_Currency],[LeaseComponentLessorOwnedNBV_Amount]=S.[LeaseComponentLessorOwnedNBV_Amount],[LeaseComponentLessorOwnedNBV_Currency]=S.[LeaseComponentLessorOwnedNBV_Currency],[LeaseComponentNBVAsOfEffectiveDate_Amount]=S.[LeaseComponentNBVAsOfEffectiveDate_Amount],[LeaseComponentNBVAsOfEffectiveDate_Currency]=S.[LeaseComponentNBVAsOfEffectiveDate_Currency],[LeaseComponentOLV_Amount]=S.[LeaseComponentOLV_Amount],[LeaseComponentOLV_Currency]=S.[LeaseComponentOLV_Currency],[LeaseComponentUnearnedIncome_Amount]=S.[LeaseComponentUnearnedIncome_Amount],[LeaseComponentUnearnedIncome_Currency]=S.[LeaseComponentUnearnedIncome_Currency],[LeaseComponentUnearnedResidualIncome_Amount]=S.[LeaseComponentUnearnedResidualIncome_Amount],[LeaseComponentUnearnedResidualIncome_Currency]=S.[LeaseComponentUnearnedResidualIncome_Currency],[LessorOwnedBookedResidual_Amount]=S.[LessorOwnedBookedResidual_Amount],[LessorOwnedBookedResidual_Currency]=S.[LessorOwnedBookedResidual_Currency],[LessorOwnedNBV_Amount]=S.[LessorOwnedNBV_Amount],[LessorOwnedNBV_Currency]=S.[LessorOwnedNBV_Currency],[LocationCode]=S.[LocationCode],[NBV_Amount]=S.[NBV_Amount],[NBV_Currency]=S.[NBV_Currency],[NBVAsOfEffectiveDate_Amount]=S.[NBVAsOfEffectiveDate_Amount],[NBVAsOfEffectiveDate_Currency]=S.[NBVAsOfEffectiveDate_Currency],[NegativeReturnAssetId]=S.[NegativeReturnAssetId],[NonLeaseComponentAssetValuation_Amount]=S.[NonLeaseComponentAssetValuation_Amount],[NonLeaseComponentAssetValuation_Currency]=S.[NonLeaseComponentAssetValuation_Currency],[NonLeaseComponentLessorOwnedNBV_Amount]=S.[NonLeaseComponentLessorOwnedNBV_Amount],[NonLeaseComponentLessorOwnedNBV_Currency]=S.[NonLeaseComponentLessorOwnedNBV_Currency],[NonLeaseComponentNBVAsOfEffectiveDate_Amount]=S.[NonLeaseComponentNBVAsOfEffectiveDate_Amount],[NonLeaseComponentNBVAsOfEffectiveDate_Currency]=S.[NonLeaseComponentNBVAsOfEffectiveDate_Currency],[NonLeaseComponentOLV_Amount]=S.[NonLeaseComponentOLV_Amount],[NonLeaseComponentOLV_Currency]=S.[NonLeaseComponentOLV_Currency],[NonLeaseComponentUnearnedIncome_Amount]=S.[NonLeaseComponentUnearnedIncome_Amount],[NonLeaseComponentUnearnedIncome_Currency]=S.[NonLeaseComponentUnearnedIncome_Currency],[NonLeaseComponentUnearnedResidualIncome_Amount]=S.[NonLeaseComponentUnearnedResidualIncome_Amount],[NonLeaseComponentUnearnedResidualIncome_Currency]=S.[NonLeaseComponentUnearnedResidualIncome_Currency],[OLV_Amount]=S.[OLV_Amount],[OLV_Currency]=S.[OLV_Currency],[OTPAccumulatedNBVImpairment_Amount]=S.[OTPAccumulatedNBVImpairment_Amount],[OTPAccumulatedNBVImpairment_Currency]=S.[OTPAccumulatedNBVImpairment_Currency],[OTPDeferredRentalIncome_Amount]=S.[OTPDeferredRentalIncome_Amount],[OTPDeferredRentalIncome_Currency]=S.[OTPDeferredRentalIncome_Currency],[OTPDepreciation_Amount]=S.[OTPDepreciation_Amount],[OTPDepreciation_Currency]=S.[OTPDepreciation_Currency],[OutstandingRentalBilled_Amount]=S.[OutstandingRentalBilled_Amount],[OutstandingRentalBilled_Currency]=S.[OutstandingRentalBilled_Currency],[OutstandingRentalsUnbilled_Amount]=S.[OutstandingRentalsUnbilled_Amount],[OutstandingRentalsUnbilled_Currency]=S.[OutstandingRentalsUnbilled_Currency],[PayoffAmount_Amount]=S.[PayoffAmount_Amount],[PayoffAmount_Currency]=S.[PayoffAmount_Currency],[PayoffVATAmount_Amount]=S.[PayoffVATAmount_Amount],[PayoffVATAmount_Currency]=S.[PayoffVATAmount_Currency],[PlaceholderAssetId]=S.[PlaceholderAssetId],[PlaceholderNBV_Amount]=S.[PlaceholderNBV_Amount],[PlaceholderNBV_Currency]=S.[PlaceholderNBV_Currency],[PlaceholderRent_Amount]=S.[PlaceholderRent_Amount],[PlaceholderRent_Currency]=S.[PlaceholderRent_Currency],[ProspectiveContract]=S.[ProspectiveContract],[RemainingRentals_Amount]=S.[RemainingRentals_Amount],[RemainingRentals_Currency]=S.[RemainingRentals_Currency],[RemarketingVendorId]=S.[RemarketingVendorId],[RepossessionAgentId]=S.[RepossessionAgentId],[RepossessionType]=S.[RepossessionType],[ReturnTo]=S.[ReturnTo],[Status]=S.[Status],[SubStatus]=S.[SubStatus],[SyndicatedFloatRateRemainingRentals_Amount]=S.[SyndicatedFloatRateRemainingRentals_Amount],[SyndicatedFloatRateRemainingRentals_Currency]=S.[SyndicatedFloatRateRemainingRentals_Currency],[SyndicatedNBV_Amount]=S.[SyndicatedNBV_Amount],[SyndicatedNBV_Currency]=S.[SyndicatedNBV_Currency],[SyndicatedRemainingRentals_Amount]=S.[SyndicatedRemainingRentals_Amount],[SyndicatedRemainingRentals_Currency]=S.[SyndicatedRemainingRentals_Currency],[TerminationReasonConfigId]=S.[TerminationReasonConfigId],[UnearnedIncome_Amount]=S.[UnearnedIncome_Amount],[UnearnedIncome_Currency]=S.[UnearnedIncome_Currency],[UnearnedResidualIncome_Amount]=S.[UnearnedResidualIncome_Amount],[UnearnedResidualIncome_Currency]=S.[UnearnedResidualIncome_Currency],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[UpfrontTaxAssessedAssetLocationId]=S.[UpfrontTaxAssessedAssetLocationId],[UpfrontTaxAssessedCustomerLocationId]=S.[UpfrontTaxAssessedCustomerLocationId],[UtilitySaleAtAuction]=S.[UtilitySaleAtAuction],[WriteDownAmount_Amount]=S.[WriteDownAmount_Amount],[WriteDownAmount_Currency]=S.[WriteDownAmount_Currency]
WHEN NOT MATCHED THEN
	INSERT ([AccumulatedNBVImpairment_Amount],[AccumulatedNBVImpairment_Currency],[AssetBookValueAdjustmentGLTemplateId],[AssetLocationId],[AssetValuation_Amount],[AssetValuation_Currency],[BillToId],[BookDepreciationTemplateId],[BuyoutAmount_Amount],[BuyoutAmount_Currency],[BuyoutVATAmount_Amount],[BuyoutVATAmount_Currency],[CalculatedNBV_Amount],[CalculatedNBV_Currency],[CreatedById],[CreatedTime],[CustomerCost_Amount],[CustomerCost_Currency],[CustomerId],[DeferredRentalIncome_Amount],[DeferredRentalIncome_Currency],[DeferredSellingProfitIncomeBalance_Amount],[DeferredSellingProfitIncomeBalance_Currency],[DeferredTaxCleared_Amount],[DeferredTaxCleared_Currency],[DepreciationTerm],[DropOffDate],[DropOffLocationId],[FinancialType],[FixedTermDepreciation_Amount],[FixedTermDepreciation_Currency],[FloatRateRemainingRentals_Amount],[FloatRateRemainingRentals_Currency],[FMV_Amount],[FMV_Currency],[HeldForSale],[InventoryBookDepGLTemplateId],[IsActive],[IsAssetDroppedOff],[IsPartiallyOwned],[IsSplit],[LeaseAssetId],[LeaseComponentAssetValuation_Amount],[LeaseComponentAssetValuation_Currency],[LeaseComponentLessorOwnedNBV_Amount],[LeaseComponentLessorOwnedNBV_Currency],[LeaseComponentNBVAsOfEffectiveDate_Amount],[LeaseComponentNBVAsOfEffectiveDate_Currency],[LeaseComponentOLV_Amount],[LeaseComponentOLV_Currency],[LeaseComponentUnearnedIncome_Amount],[LeaseComponentUnearnedIncome_Currency],[LeaseComponentUnearnedResidualIncome_Amount],[LeaseComponentUnearnedResidualIncome_Currency],[LessorOwnedBookedResidual_Amount],[LessorOwnedBookedResidual_Currency],[LessorOwnedNBV_Amount],[LessorOwnedNBV_Currency],[LocationCode],[NBV_Amount],[NBV_Currency],[NBVAsOfEffectiveDate_Amount],[NBVAsOfEffectiveDate_Currency],[NegativeReturnAssetId],[NonLeaseComponentAssetValuation_Amount],[NonLeaseComponentAssetValuation_Currency],[NonLeaseComponentLessorOwnedNBV_Amount],[NonLeaseComponentLessorOwnedNBV_Currency],[NonLeaseComponentNBVAsOfEffectiveDate_Amount],[NonLeaseComponentNBVAsOfEffectiveDate_Currency],[NonLeaseComponentOLV_Amount],[NonLeaseComponentOLV_Currency],[NonLeaseComponentUnearnedIncome_Amount],[NonLeaseComponentUnearnedIncome_Currency],[NonLeaseComponentUnearnedResidualIncome_Amount],[NonLeaseComponentUnearnedResidualIncome_Currency],[OLV_Amount],[OLV_Currency],[OTPAccumulatedNBVImpairment_Amount],[OTPAccumulatedNBVImpairment_Currency],[OTPDeferredRentalIncome_Amount],[OTPDeferredRentalIncome_Currency],[OTPDepreciation_Amount],[OTPDepreciation_Currency],[OutstandingRentalBilled_Amount],[OutstandingRentalBilled_Currency],[OutstandingRentalsUnbilled_Amount],[OutstandingRentalsUnbilled_Currency],[PayoffAmount_Amount],[PayoffAmount_Currency],[PayoffId],[PayoffVATAmount_Amount],[PayoffVATAmount_Currency],[PlaceholderAssetId],[PlaceholderNBV_Amount],[PlaceholderNBV_Currency],[PlaceholderRent_Amount],[PlaceholderRent_Currency],[ProspectiveContract],[RemainingRentals_Amount],[RemainingRentals_Currency],[RemarketingVendorId],[RepossessionAgentId],[RepossessionType],[ReturnTo],[Status],[SubStatus],[SyndicatedFloatRateRemainingRentals_Amount],[SyndicatedFloatRateRemainingRentals_Currency],[SyndicatedNBV_Amount],[SyndicatedNBV_Currency],[SyndicatedRemainingRentals_Amount],[SyndicatedRemainingRentals_Currency],[TerminationReasonConfigId],[UnearnedIncome_Amount],[UnearnedIncome_Currency],[UnearnedResidualIncome_Amount],[UnearnedResidualIncome_Currency],[UpfrontTaxAssessedAssetLocationId],[UpfrontTaxAssessedCustomerLocationId],[UtilitySaleAtAuction],[WriteDownAmount_Amount],[WriteDownAmount_Currency])
    VALUES (S.[AccumulatedNBVImpairment_Amount],S.[AccumulatedNBVImpairment_Currency],S.[AssetBookValueAdjustmentGLTemplateId],S.[AssetLocationId],S.[AssetValuation_Amount],S.[AssetValuation_Currency],S.[BillToId],S.[BookDepreciationTemplateId],S.[BuyoutAmount_Amount],S.[BuyoutAmount_Currency],S.[BuyoutVATAmount_Amount],S.[BuyoutVATAmount_Currency],S.[CalculatedNBV_Amount],S.[CalculatedNBV_Currency],S.[CreatedById],S.[CreatedTime],S.[CustomerCost_Amount],S.[CustomerCost_Currency],S.[CustomerId],S.[DeferredRentalIncome_Amount],S.[DeferredRentalIncome_Currency],S.[DeferredSellingProfitIncomeBalance_Amount],S.[DeferredSellingProfitIncomeBalance_Currency],S.[DeferredTaxCleared_Amount],S.[DeferredTaxCleared_Currency],S.[DepreciationTerm],S.[DropOffDate],S.[DropOffLocationId],S.[FinancialType],S.[FixedTermDepreciation_Amount],S.[FixedTermDepreciation_Currency],S.[FloatRateRemainingRentals_Amount],S.[FloatRateRemainingRentals_Currency],S.[FMV_Amount],S.[FMV_Currency],S.[HeldForSale],S.[InventoryBookDepGLTemplateId],S.[IsActive],S.[IsAssetDroppedOff],S.[IsPartiallyOwned],S.[IsSplit],S.[LeaseAssetId],S.[LeaseComponentAssetValuation_Amount],S.[LeaseComponentAssetValuation_Currency],S.[LeaseComponentLessorOwnedNBV_Amount],S.[LeaseComponentLessorOwnedNBV_Currency],S.[LeaseComponentNBVAsOfEffectiveDate_Amount],S.[LeaseComponentNBVAsOfEffectiveDate_Currency],S.[LeaseComponentOLV_Amount],S.[LeaseComponentOLV_Currency],S.[LeaseComponentUnearnedIncome_Amount],S.[LeaseComponentUnearnedIncome_Currency],S.[LeaseComponentUnearnedResidualIncome_Amount],S.[LeaseComponentUnearnedResidualIncome_Currency],S.[LessorOwnedBookedResidual_Amount],S.[LessorOwnedBookedResidual_Currency],S.[LessorOwnedNBV_Amount],S.[LessorOwnedNBV_Currency],S.[LocationCode],S.[NBV_Amount],S.[NBV_Currency],S.[NBVAsOfEffectiveDate_Amount],S.[NBVAsOfEffectiveDate_Currency],S.[NegativeReturnAssetId],S.[NonLeaseComponentAssetValuation_Amount],S.[NonLeaseComponentAssetValuation_Currency],S.[NonLeaseComponentLessorOwnedNBV_Amount],S.[NonLeaseComponentLessorOwnedNBV_Currency],S.[NonLeaseComponentNBVAsOfEffectiveDate_Amount],S.[NonLeaseComponentNBVAsOfEffectiveDate_Currency],S.[NonLeaseComponentOLV_Amount],S.[NonLeaseComponentOLV_Currency],S.[NonLeaseComponentUnearnedIncome_Amount],S.[NonLeaseComponentUnearnedIncome_Currency],S.[NonLeaseComponentUnearnedResidualIncome_Amount],S.[NonLeaseComponentUnearnedResidualIncome_Currency],S.[OLV_Amount],S.[OLV_Currency],S.[OTPAccumulatedNBVImpairment_Amount],S.[OTPAccumulatedNBVImpairment_Currency],S.[OTPDeferredRentalIncome_Amount],S.[OTPDeferredRentalIncome_Currency],S.[OTPDepreciation_Amount],S.[OTPDepreciation_Currency],S.[OutstandingRentalBilled_Amount],S.[OutstandingRentalBilled_Currency],S.[OutstandingRentalsUnbilled_Amount],S.[OutstandingRentalsUnbilled_Currency],S.[PayoffAmount_Amount],S.[PayoffAmount_Currency],S.[PayoffId],S.[PayoffVATAmount_Amount],S.[PayoffVATAmount_Currency],S.[PlaceholderAssetId],S.[PlaceholderNBV_Amount],S.[PlaceholderNBV_Currency],S.[PlaceholderRent_Amount],S.[PlaceholderRent_Currency],S.[ProspectiveContract],S.[RemainingRentals_Amount],S.[RemainingRentals_Currency],S.[RemarketingVendorId],S.[RepossessionAgentId],S.[RepossessionType],S.[ReturnTo],S.[Status],S.[SubStatus],S.[SyndicatedFloatRateRemainingRentals_Amount],S.[SyndicatedFloatRateRemainingRentals_Currency],S.[SyndicatedNBV_Amount],S.[SyndicatedNBV_Currency],S.[SyndicatedRemainingRentals_Amount],S.[SyndicatedRemainingRentals_Currency],S.[TerminationReasonConfigId],S.[UnearnedIncome_Amount],S.[UnearnedIncome_Currency],S.[UnearnedResidualIncome_Amount],S.[UnearnedResidualIncome_Currency],S.[UpfrontTaxAssessedAssetLocationId],S.[UpfrontTaxAssessedCustomerLocationId],S.[UtilitySaleAtAuction],S.[WriteDownAmount_Amount],S.[WriteDownAmount_Currency])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO