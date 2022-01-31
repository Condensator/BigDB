SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveLeaseAssetSKU]
(
 @val [dbo].[LeaseAssetSKU] READONLY
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
MERGE [dbo].[LeaseAssetSKUs] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AccumulatedDepreciation_Amount]=S.[AccumulatedDepreciation_Amount],[AccumulatedDepreciation_Currency]=S.[AccumulatedDepreciation_Currency],[AssetSKUId]=S.[AssetSKUId],[BookedResidual_Amount]=S.[BookedResidual_Amount],[BookedResidual_Currency]=S.[BookedResidual_Currency],[BookedResidualFactor]=S.[BookedResidualFactor],[CapitalizedAdditionalCharge_Amount]=S.[CapitalizedAdditionalCharge_Amount],[CapitalizedAdditionalCharge_Currency]=S.[CapitalizedAdditionalCharge_Currency],[CapitalizedIDC_Amount]=S.[CapitalizedIDC_Amount],[CapitalizedIDC_Currency]=S.[CapitalizedIDC_Currency],[CapitalizedInterimInterest_Amount]=S.[CapitalizedInterimInterest_Amount],[CapitalizedInterimInterest_Currency]=S.[CapitalizedInterimInterest_Currency],[CapitalizedInterimRent_Amount]=S.[CapitalizedInterimRent_Amount],[CapitalizedInterimRent_Currency]=S.[CapitalizedInterimRent_Currency],[CapitalizedProgressPayment_Amount]=S.[CapitalizedProgressPayment_Amount],[CapitalizedProgressPayment_Currency]=S.[CapitalizedProgressPayment_Currency],[CapitalizedSalesTax_Amount]=S.[CapitalizedSalesTax_Amount],[CapitalizedSalesTax_Currency]=S.[CapitalizedSalesTax_Currency],[CreditProfileEquipmentDetailId]=S.[CreditProfileEquipmentDetailId],[CustomerCost_Amount]=S.[CustomerCost_Amount],[CustomerCost_Currency]=S.[CustomerCost_Currency],[CustomerExpectedResidual_Amount]=S.[CustomerExpectedResidual_Amount],[CustomerExpectedResidual_Currency]=S.[CustomerExpectedResidual_Currency],[CustomerExpectedResidualFactor]=S.[CustomerExpectedResidualFactor],[CustomerGuaranteedResidual_Amount]=S.[CustomerGuaranteedResidual_Amount],[CustomerGuaranteedResidual_Currency]=S.[CustomerGuaranteedResidual_Currency],[CustomerGuaranteedResidualFactor]=S.[CustomerGuaranteedResidualFactor],[ETCAdjustmentAmount_Amount]=S.[ETCAdjustmentAmount_Amount],[ETCAdjustmentAmount_Currency]=S.[ETCAdjustmentAmount_Currency],[FMV_Amount]=S.[FMV_Amount],[FMV_Currency]=S.[FMV_Currency],[InterimMarkup_Amount]=S.[InterimMarkup_Amount],[InterimMarkup_Currency]=S.[InterimMarkup_Currency],[InterimRent_Amount]=S.[InterimRent_Amount],[InterimRent_Currency]=S.[InterimRent_Currency],[InterimRentFactor]=S.[InterimRentFactor],[IsActive]=S.[IsActive],[IsLeaseComponent]=S.[IsLeaseComponent],[Markup_Amount]=S.[Markup_Amount],[Markup_Currency]=S.[Markup_Currency],[MaturityPayment_Amount]=S.[MaturityPayment_Amount],[MaturityPayment_Currency]=S.[MaturityPayment_Currency],[MaturityPaymentFactor]=S.[MaturityPaymentFactor],[NBV_Amount]=S.[NBV_Amount],[NBV_Currency]=S.[NBV_Currency],[OriginalCapitalizedAmount_Amount]=S.[OriginalCapitalizedAmount_Amount],[OriginalCapitalizedAmount_Currency]=S.[OriginalCapitalizedAmount_Currency],[OTPRent_Amount]=S.[OTPRent_Amount],[OTPRent_Currency]=S.[OTPRent_Currency],[OTPRentFactor]=S.[OTPRentFactor],[PreCapitalizationRent_Amount]=S.[PreCapitalizationRent_Amount],[PreCapitalizationRent_Currency]=S.[PreCapitalizationRent_Currency],[PrepaidUpfrontTax_Amount]=S.[PrepaidUpfrontTax_Amount],[PrepaidUpfrontTax_Currency]=S.[PrepaidUpfrontTax_Currency],[Rent_Amount]=S.[Rent_Amount],[Rent_Currency]=S.[Rent_Currency],[RentFactor]=S.[RentFactor],[ResidualValueInsurance_Amount]=S.[ResidualValueInsurance_Amount],[ResidualValueInsurance_Currency]=S.[ResidualValueInsurance_Currency],[ResidualValueInsuranceFactor]=S.[ResidualValueInsuranceFactor],[RVRecapAmount_Amount]=S.[RVRecapAmount_Amount],[RVRecapAmount_Currency]=S.[RVRecapAmount_Currency],[RVRecapFactor]=S.[RVRecapFactor],[SalesTaxAmount_Amount]=S.[SalesTaxAmount_Amount],[SalesTaxAmount_Currency]=S.[SalesTaxAmount_Currency],[SpecificCostAdjustment_Amount]=S.[SpecificCostAdjustment_Amount],[SpecificCostAdjustment_Currency]=S.[SpecificCostAdjustment_Currency],[SpecificCostAdjustmentOnCommencement_Amount]=S.[SpecificCostAdjustmentOnCommencement_Amount],[SpecificCostAdjustmentOnCommencement_Currency]=S.[SpecificCostAdjustmentOnCommencement_Currency],[SupplementalRent_Amount]=S.[SupplementalRent_Amount],[SupplementalRent_Currency]=S.[SupplementalRent_Currency],[SupplementalRentFactor]=S.[SupplementalRentFactor],[ThirdPartyGuaranteedResidual_Amount]=S.[ThirdPartyGuaranteedResidual_Amount],[ThirdPartyGuaranteedResidual_Currency]=S.[ThirdPartyGuaranteedResidual_Currency],[ThirdPartyGuaranteedResidualFactor]=S.[ThirdPartyGuaranteedResidualFactor],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([AccumulatedDepreciation_Amount],[AccumulatedDepreciation_Currency],[AssetSKUId],[BookedResidual_Amount],[BookedResidual_Currency],[BookedResidualFactor],[CapitalizedAdditionalCharge_Amount],[CapitalizedAdditionalCharge_Currency],[CapitalizedIDC_Amount],[CapitalizedIDC_Currency],[CapitalizedInterimInterest_Amount],[CapitalizedInterimInterest_Currency],[CapitalizedInterimRent_Amount],[CapitalizedInterimRent_Currency],[CapitalizedProgressPayment_Amount],[CapitalizedProgressPayment_Currency],[CapitalizedSalesTax_Amount],[CapitalizedSalesTax_Currency],[CreatedById],[CreatedTime],[CreditProfileEquipmentDetailId],[CustomerCost_Amount],[CustomerCost_Currency],[CustomerExpectedResidual_Amount],[CustomerExpectedResidual_Currency],[CustomerExpectedResidualFactor],[CustomerGuaranteedResidual_Amount],[CustomerGuaranteedResidual_Currency],[CustomerGuaranteedResidualFactor],[ETCAdjustmentAmount_Amount],[ETCAdjustmentAmount_Currency],[FMV_Amount],[FMV_Currency],[InterimMarkup_Amount],[InterimMarkup_Currency],[InterimRent_Amount],[InterimRent_Currency],[InterimRentFactor],[IsActive],[IsLeaseComponent],[LeaseAssetId],[Markup_Amount],[Markup_Currency],[MaturityPayment_Amount],[MaturityPayment_Currency],[MaturityPaymentFactor],[NBV_Amount],[NBV_Currency],[OriginalCapitalizedAmount_Amount],[OriginalCapitalizedAmount_Currency],[OTPRent_Amount],[OTPRent_Currency],[OTPRentFactor],[PreCapitalizationRent_Amount],[PreCapitalizationRent_Currency],[PrepaidUpfrontTax_Amount],[PrepaidUpfrontTax_Currency],[Rent_Amount],[Rent_Currency],[RentFactor],[ResidualValueInsurance_Amount],[ResidualValueInsurance_Currency],[ResidualValueInsuranceFactor],[RVRecapAmount_Amount],[RVRecapAmount_Currency],[RVRecapFactor],[SalesTaxAmount_Amount],[SalesTaxAmount_Currency],[SpecificCostAdjustment_Amount],[SpecificCostAdjustment_Currency],[SpecificCostAdjustmentOnCommencement_Amount],[SpecificCostAdjustmentOnCommencement_Currency],[SupplementalRent_Amount],[SupplementalRent_Currency],[SupplementalRentFactor],[ThirdPartyGuaranteedResidual_Amount],[ThirdPartyGuaranteedResidual_Currency],[ThirdPartyGuaranteedResidualFactor])
    VALUES (S.[AccumulatedDepreciation_Amount],S.[AccumulatedDepreciation_Currency],S.[AssetSKUId],S.[BookedResidual_Amount],S.[BookedResidual_Currency],S.[BookedResidualFactor],S.[CapitalizedAdditionalCharge_Amount],S.[CapitalizedAdditionalCharge_Currency],S.[CapitalizedIDC_Amount],S.[CapitalizedIDC_Currency],S.[CapitalizedInterimInterest_Amount],S.[CapitalizedInterimInterest_Currency],S.[CapitalizedInterimRent_Amount],S.[CapitalizedInterimRent_Currency],S.[CapitalizedProgressPayment_Amount],S.[CapitalizedProgressPayment_Currency],S.[CapitalizedSalesTax_Amount],S.[CapitalizedSalesTax_Currency],S.[CreatedById],S.[CreatedTime],S.[CreditProfileEquipmentDetailId],S.[CustomerCost_Amount],S.[CustomerCost_Currency],S.[CustomerExpectedResidual_Amount],S.[CustomerExpectedResidual_Currency],S.[CustomerExpectedResidualFactor],S.[CustomerGuaranteedResidual_Amount],S.[CustomerGuaranteedResidual_Currency],S.[CustomerGuaranteedResidualFactor],S.[ETCAdjustmentAmount_Amount],S.[ETCAdjustmentAmount_Currency],S.[FMV_Amount],S.[FMV_Currency],S.[InterimMarkup_Amount],S.[InterimMarkup_Currency],S.[InterimRent_Amount],S.[InterimRent_Currency],S.[InterimRentFactor],S.[IsActive],S.[IsLeaseComponent],S.[LeaseAssetId],S.[Markup_Amount],S.[Markup_Currency],S.[MaturityPayment_Amount],S.[MaturityPayment_Currency],S.[MaturityPaymentFactor],S.[NBV_Amount],S.[NBV_Currency],S.[OriginalCapitalizedAmount_Amount],S.[OriginalCapitalizedAmount_Currency],S.[OTPRent_Amount],S.[OTPRent_Currency],S.[OTPRentFactor],S.[PreCapitalizationRent_Amount],S.[PreCapitalizationRent_Currency],S.[PrepaidUpfrontTax_Amount],S.[PrepaidUpfrontTax_Currency],S.[Rent_Amount],S.[Rent_Currency],S.[RentFactor],S.[ResidualValueInsurance_Amount],S.[ResidualValueInsurance_Currency],S.[ResidualValueInsuranceFactor],S.[RVRecapAmount_Amount],S.[RVRecapAmount_Currency],S.[RVRecapFactor],S.[SalesTaxAmount_Amount],S.[SalesTaxAmount_Currency],S.[SpecificCostAdjustment_Amount],S.[SpecificCostAdjustment_Currency],S.[SpecificCostAdjustmentOnCommencement_Amount],S.[SpecificCostAdjustmentOnCommencement_Currency],S.[SupplementalRent_Amount],S.[SupplementalRent_Currency],S.[SupplementalRentFactor],S.[ThirdPartyGuaranteedResidual_Amount],S.[ThirdPartyGuaranteedResidual_Currency],S.[ThirdPartyGuaranteedResidualFactor])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
