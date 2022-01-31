SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveAcceleratedBalanceDetailForLease]
(
 @val [dbo].[AcceleratedBalanceDetailForLease] READONLY
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
MERGE [dbo].[AcceleratedBalanceDetailForLeases] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AmountPastDue_Amount]=S.[AmountPastDue_Amount],[AmountPastDue_Currency]=S.[AmountPastDue_Currency],[Asof]=S.[Asof],[CanadianTaxPercent]=S.[CanadianTaxPercent],[Credits_Amount]=S.[Credits_Amount],[Credits_Currency]=S.[Credits_Currency],[DiscountAllUnpaidRent]=S.[DiscountAllUnpaidRent],[DiscountProvidedonRentals_Amount]=S.[DiscountProvidedonRentals_Amount],[DiscountProvidedonRentals_Currency]=S.[DiscountProvidedonRentals_Currency],[DiscountProvidedonResidual_Amount]=S.[DiscountProvidedonResidual_Amount],[DiscountProvidedonResidual_Currency]=S.[DiscountProvidedonResidual_Currency],[EndOfTermPurchaseOptionId]=S.[EndOfTermPurchaseOptionId],[ExpenseAndFees_AmountDue_Amount]=S.[ExpenseAndFees_AmountDue_Amount],[ExpenseAndFees_AmountDue_Currency]=S.[ExpenseAndFees_AmountDue_Currency],[ExpenseAndFees_Waivers_Amount]=S.[ExpenseAndFees_Waivers_Amount],[ExpenseAndFees_Waivers_Currency]=S.[ExpenseAndFees_Waivers_Currency],[ExpensesAndFees_Amount]=S.[ExpensesAndFees_Amount],[ExpensesAndFees_Currency]=S.[ExpensesAndFees_Currency],[InterimRentAndInterimInterest_Amount]=S.[InterimRentAndInterimInterest_Amount],[InterimRentAndInterimInterest_Currency]=S.[InterimRentAndInterimInterest_Currency],[Location]=S.[Location],[NumberofLeaseRentalsPartiallyPaid_Invoiced]=S.[NumberofLeaseRentalsPartiallyPaid_Invoiced],[NumberofPaymentsRemaining]=S.[NumberofPaymentsRemaining],[NumberofUnpaidLeaseRentals]=S.[NumberofUnpaidLeaseRentals],[OptionValue_Amount]=S.[OptionValue_Amount],[OptionValue_Currency]=S.[OptionValue_Currency],[PartiallyPaidLeaseRentAmount_Amount]=S.[PartiallyPaidLeaseRentAmount_Amount],[PartiallyPaidLeaseRentAmount_Currency]=S.[PartiallyPaidLeaseRentAmount_Currency],[PartiallyUnpaidSalesTax_Amount]=S.[PartiallyUnpaidSalesTax_Amount],[PartiallyUnpaidSalesTax_Currency]=S.[PartiallyUnpaidSalesTax_Currency],[PastDuePayments_Amount]=S.[PastDuePayments_Amount],[PastDuePayments_Currency]=S.[PastDuePayments_Currency],[PaymentAmount_Amount]=S.[PaymentAmount_Amount],[PaymentAmount_Currency]=S.[PaymentAmount_Currency],[PaymentType]=S.[PaymentType],[PersonalPropertyTax_Amount]=S.[PersonalPropertyTax_Amount],[PersonalPropertyTax_Currency]=S.[PersonalPropertyTax_Currency],[PresentValueDiscount]=S.[PresentValueDiscount],[Province]=S.[Province],[PurchaseOption_Amount]=S.[PurchaseOption_Amount],[PurchaseOption_Currency]=S.[PurchaseOption_Currency],[SalesTax_Amount]=S.[SalesTax_Amount],[SalesTax_Currency]=S.[SalesTax_Currency],[SalesTaxonEstimatedPropertyTax]=S.[SalesTaxonEstimatedPropertyTax],[SalesTaxonPPT_Amount]=S.[SalesTaxonPPT_Amount],[SalesTaxonPPT_Currency]=S.[SalesTaxonPPT_Currency],[SalesTaxPercent_US]=S.[SalesTaxPercent_US],[SalesTaxStatus]=S.[SalesTaxStatus],[StipulatedLoss_Amount]=S.[StipulatedLoss_Amount],[StipulatedLoss_Currency]=S.[StipulatedLoss_Currency],[StipulatedLossAmount_Amount]=S.[StipulatedLossAmount_Amount],[StipulatedLossAmount_Currency]=S.[StipulatedLossAmount_Currency],[StipulatedLossInvoiceCost_Amount]=S.[StipulatedLossInvoiceCost_Amount],[StipulatedLossInvoiceCost_Currency]=S.[StipulatedLossInvoiceCost_Currency],[StipulatedLossPercentage]=S.[StipulatedLossPercentage],[TaxForUSorCAN_Amount]=S.[TaxForUSorCAN_Amount],[TaxForUSorCAN_Currency]=S.[TaxForUSorCAN_Currency],[TotalAcceleratedBalance_Amount]=S.[TotalAcceleratedBalance_Amount],[TotalAcceleratedBalance_Currency]=S.[TotalAcceleratedBalance_Currency],[TotalInvoicedUnpaidRent_Amount]=S.[TotalInvoicedUnpaidRent_Amount],[TotalInvoicedUnpaidRent_Currency]=S.[TotalInvoicedUnpaidRent_Currency],[TotalPropertyTaxes_Amount]=S.[TotalPropertyTaxes_Amount],[TotalPropertyTaxes_Currency]=S.[TotalPropertyTaxes_Currency],[TotalRemainingRent_Amount]=S.[TotalRemainingRent_Amount],[TotalRemainingRent_Currency]=S.[TotalRemainingRent_Currency],[TotalUninvoicedRent_Amount]=S.[TotalUninvoicedRent_Amount],[TotalUninvoicedRent_Currency]=S.[TotalUninvoicedRent_Currency],[TotalUnpaidRent_Amount]=S.[TotalUnpaidRent_Amount],[TotalUnpaidRent_Currency]=S.[TotalUnpaidRent_Currency],[UnpaidLeaseRentAmount_Amount]=S.[UnpaidLeaseRentAmount_Amount],[UnpaidLeaseRentAmount_Currency]=S.[UnpaidLeaseRentAmount_Currency],[UnpaidOrOpenPropertyTax_Amount]=S.[UnpaidOrOpenPropertyTax_Amount],[UnpaidOrOpenPropertyTax_Currency]=S.[UnpaidOrOpenPropertyTax_Currency],[UnpaidOrOpenSalesTaxonPPT_Amount]=S.[UnpaidOrOpenSalesTaxonPPT_Amount],[UnpaidOrOpenSalesTaxonPPT_Currency]=S.[UnpaidOrOpenSalesTaxonPPT_Currency],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([AmountPastDue_Amount],[AmountPastDue_Currency],[Asof],[CanadianTaxPercent],[CreatedById],[CreatedTime],[Credits_Amount],[Credits_Currency],[DiscountAllUnpaidRent],[DiscountProvidedonRentals_Amount],[DiscountProvidedonRentals_Currency],[DiscountProvidedonResidual_Amount],[DiscountProvidedonResidual_Currency],[EndOfTermPurchaseOptionId],[ExpenseAndFees_AmountDue_Amount],[ExpenseAndFees_AmountDue_Currency],[ExpenseAndFees_Waivers_Amount],[ExpenseAndFees_Waivers_Currency],[ExpensesAndFees_Amount],[ExpensesAndFees_Currency],[Id],[InterimRentAndInterimInterest_Amount],[InterimRentAndInterimInterest_Currency],[Location],[NumberofLeaseRentalsPartiallyPaid_Invoiced],[NumberofPaymentsRemaining],[NumberofUnpaidLeaseRentals],[OptionValue_Amount],[OptionValue_Currency],[PartiallyPaidLeaseRentAmount_Amount],[PartiallyPaidLeaseRentAmount_Currency],[PartiallyUnpaidSalesTax_Amount],[PartiallyUnpaidSalesTax_Currency],[PastDuePayments_Amount],[PastDuePayments_Currency],[PaymentAmount_Amount],[PaymentAmount_Currency],[PaymentType],[PersonalPropertyTax_Amount],[PersonalPropertyTax_Currency],[PresentValueDiscount],[Province],[PurchaseOption_Amount],[PurchaseOption_Currency],[SalesTax_Amount],[SalesTax_Currency],[SalesTaxonEstimatedPropertyTax],[SalesTaxonPPT_Amount],[SalesTaxonPPT_Currency],[SalesTaxPercent_US],[SalesTaxStatus],[StipulatedLoss_Amount],[StipulatedLoss_Currency],[StipulatedLossAmount_Amount],[StipulatedLossAmount_Currency],[StipulatedLossInvoiceCost_Amount],[StipulatedLossInvoiceCost_Currency],[StipulatedLossPercentage],[TaxForUSorCAN_Amount],[TaxForUSorCAN_Currency],[TotalAcceleratedBalance_Amount],[TotalAcceleratedBalance_Currency],[TotalInvoicedUnpaidRent_Amount],[TotalInvoicedUnpaidRent_Currency],[TotalPropertyTaxes_Amount],[TotalPropertyTaxes_Currency],[TotalRemainingRent_Amount],[TotalRemainingRent_Currency],[TotalUninvoicedRent_Amount],[TotalUninvoicedRent_Currency],[TotalUnpaidRent_Amount],[TotalUnpaidRent_Currency],[UnpaidLeaseRentAmount_Amount],[UnpaidLeaseRentAmount_Currency],[UnpaidOrOpenPropertyTax_Amount],[UnpaidOrOpenPropertyTax_Currency],[UnpaidOrOpenSalesTaxonPPT_Amount],[UnpaidOrOpenSalesTaxonPPT_Currency])
    VALUES (S.[AmountPastDue_Amount],S.[AmountPastDue_Currency],S.[Asof],S.[CanadianTaxPercent],S.[CreatedById],S.[CreatedTime],S.[Credits_Amount],S.[Credits_Currency],S.[DiscountAllUnpaidRent],S.[DiscountProvidedonRentals_Amount],S.[DiscountProvidedonRentals_Currency],S.[DiscountProvidedonResidual_Amount],S.[DiscountProvidedonResidual_Currency],S.[EndOfTermPurchaseOptionId],S.[ExpenseAndFees_AmountDue_Amount],S.[ExpenseAndFees_AmountDue_Currency],S.[ExpenseAndFees_Waivers_Amount],S.[ExpenseAndFees_Waivers_Currency],S.[ExpensesAndFees_Amount],S.[ExpensesAndFees_Currency],S.[Id],S.[InterimRentAndInterimInterest_Amount],S.[InterimRentAndInterimInterest_Currency],S.[Location],S.[NumberofLeaseRentalsPartiallyPaid_Invoiced],S.[NumberofPaymentsRemaining],S.[NumberofUnpaidLeaseRentals],S.[OptionValue_Amount],S.[OptionValue_Currency],S.[PartiallyPaidLeaseRentAmount_Amount],S.[PartiallyPaidLeaseRentAmount_Currency],S.[PartiallyUnpaidSalesTax_Amount],S.[PartiallyUnpaidSalesTax_Currency],S.[PastDuePayments_Amount],S.[PastDuePayments_Currency],S.[PaymentAmount_Amount],S.[PaymentAmount_Currency],S.[PaymentType],S.[PersonalPropertyTax_Amount],S.[PersonalPropertyTax_Currency],S.[PresentValueDiscount],S.[Province],S.[PurchaseOption_Amount],S.[PurchaseOption_Currency],S.[SalesTax_Amount],S.[SalesTax_Currency],S.[SalesTaxonEstimatedPropertyTax],S.[SalesTaxonPPT_Amount],S.[SalesTaxonPPT_Currency],S.[SalesTaxPercent_US],S.[SalesTaxStatus],S.[StipulatedLoss_Amount],S.[StipulatedLoss_Currency],S.[StipulatedLossAmount_Amount],S.[StipulatedLossAmount_Currency],S.[StipulatedLossInvoiceCost_Amount],S.[StipulatedLossInvoiceCost_Currency],S.[StipulatedLossPercentage],S.[TaxForUSorCAN_Amount],S.[TaxForUSorCAN_Currency],S.[TotalAcceleratedBalance_Amount],S.[TotalAcceleratedBalance_Currency],S.[TotalInvoicedUnpaidRent_Amount],S.[TotalInvoicedUnpaidRent_Currency],S.[TotalPropertyTaxes_Amount],S.[TotalPropertyTaxes_Currency],S.[TotalRemainingRent_Amount],S.[TotalRemainingRent_Currency],S.[TotalUninvoicedRent_Amount],S.[TotalUninvoicedRent_Currency],S.[TotalUnpaidRent_Amount],S.[TotalUnpaidRent_Currency],S.[UnpaidLeaseRentAmount_Amount],S.[UnpaidLeaseRentAmount_Currency],S.[UnpaidOrOpenPropertyTax_Amount],S.[UnpaidOrOpenPropertyTax_Currency],S.[UnpaidOrOpenSalesTaxonPPT_Amount],S.[UnpaidOrOpenSalesTaxonPPT_Currency])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
