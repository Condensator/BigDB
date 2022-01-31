SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveCreditBureauRqstBusiness]
(
 @val [dbo].[CreditBureauRqstBusiness] READONLY
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
MERGE [dbo].[CreditBureauRqstBusinesses] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AbnormalBusinessReportIndicatorCode]=S.[AbnormalBusinessReportIndicatorCode],[AccountBalance60PlusDbtPercent]=S.[AccountBalance60PlusDbtPercent],[AccountBalance90PlusDbtPercent]=S.[AccountBalance90PlusDbtPercent],[AccountBalanceCurrentPercent]=S.[AccountBalanceCurrentPercent],[Active]=S.[Active],[BadTradeLinesCount]=S.[BadTradeLinesCount],[BankruptciesCount]=S.[BankruptciesCount],[BankruptciesIndicatorCode]=S.[BankruptciesIndicatorCode],[BankruptcyRelationshipIndicatorCode]=S.[BankruptcyRelationshipIndicatorCode],[BureauCustomerName]=S.[BureauCustomerName],[BureauCustomerNumber]=S.[BureauCustomerNumber],[BusinessAddress]=S.[BusinessAddress],[BusinessBureauScore]=S.[BusinessBureauScore],[BusinessCity]=S.[BusinessCity],[BusinessCollectionsCount]=S.[BusinessCollectionsCount],[BusinessLegalName]=S.[BusinessLegalName],[BusinessReportDerogatoryRating]=S.[BusinessReportDerogatoryRating],[BusinessReportTimeAsCurrentOwner]=S.[BusinessReportTimeAsCurrentOwner],[BusinessRiskScoreTypeCode]=S.[BusinessRiskScoreTypeCode],[BusinessStartDate]=S.[BusinessStartDate],[BusinessState]=S.[BusinessState],[BusinessZip]=S.[BusinessZip],[ClosedPaidCollectionsCount]=S.[ClosedPaidCollectionsCount],[ClosedUnpaidCollectionsCount]=S.[ClosedUnpaidCollectionsCount],[CollectionsCount]=S.[CollectionsCount],[CollectionsMostRecent6MonthCount]=S.[CollectionsMostRecent6MonthCount],[CompositePaydexCurrent12MonthAverageAmount]=S.[CompositePaydexCurrent12MonthAverageAmount],[CompositePaydexPrior12MonthAverageAmount]=S.[CompositePaydexPrior12MonthAverageAmount],[ContinuouslyReportedTradeLinesCount]=S.[ContinuouslyReportedTradeLinesCount],[CreditRatingCode]=S.[CreditRatingCode],[CurrentManagementControlYear]=S.[CurrentManagementControlYear],[CurrentMinusIndustryNormPaydexScore]=S.[CurrentMinusIndustryNormPaydexScore],[CustomerBureauReport_Content]=S.[CustomerBureauReport_Content],[CustomerBureauReport_Source]=S.[CustomerBureauReport_Source],[CustomerBureauReport_Type]=S.[CustomerBureauReport_Type],[CustomerCreditBureauId]=S.[CustomerCreditBureauId],[DaysBeyondTermsCount]=S.[DaysBeyondTermsCount],[DaysBeyondTermsIntelliscore]=S.[DaysBeyondTermsIntelliscore],[DaysContinuouslyReportedTradeLinesDbtCount]=S.[DaysContinuouslyReportedTradeLinesDbtCount],[DBXmlReportData]=S.[DBXmlReportData],[DelinquentPaymentExperiencesCount]=S.[DelinquentPaymentExperiencesCount],[DerogatoryPublicRecordsCount]=S.[DerogatoryPublicRecordsCount],[DerogatoryUccFilingsCount]=S.[DerogatoryUccFilingsCount],[ExperiencesCount]=S.[ExperiencesCount],[ExperiencesInPaydexCalculationCount]=S.[ExperiencesInPaydexCalculationCount],[FileEstablishedDate]=S.[FileEstablishedDate],[FinancialConditionIndicatorCode]=S.[FinancialConditionIndicatorCode],[FullReport]=S.[FullReport],[HighCredit]=S.[HighCredit],[HistoryIndicatorCode]=S.[HistoryIndicatorCode],[IndustryDaysBeyondTermsCount]=S.[IndustryDaysBeyondTermsCount],[IndustryNormPaydexScore]=S.[IndustryNormPaydexScore],[InquiriesMostRecent6MonthsCount]=S.[InquiriesMostRecent6MonthsCount],[InquiriesMostRecent9MonthsCount]=S.[InquiriesMostRecent9MonthsCount],[IntelliscoreCreditUtilization]=S.[IntelliscoreCreditUtilization],[IntelliscorePercentSatisfactoryTradelines]=S.[IntelliscorePercentSatisfactoryTradelines],[IsCorporate]=S.[IsCorporate],[IsDefault]=S.[IsDefault],[JudgementLienCollectionCount]=S.[JudgementLienCollectionCount],[JudgementsCount]=S.[JudgementsCount],[JudgmentsIndicatorCode]=S.[JudgmentsIndicatorCode],[LBXmlRequest]=S.[LBXmlRequest],[LBXmlResponse]=S.[LBXmlResponse],[LiensIndicatorCode]=S.[LiensIndicatorCode],[ManualCustomerSelection]=S.[ManualCustomerSelection],[MessageCode]=S.[MessageCode],[MessageText]=S.[MessageText],[Model]=S.[Model],[ModelReason]=S.[ModelReason],[MonthsSinceBusinessFileEstablished]=S.[MonthsSinceBusinessFileEstablished],[MostRecent12MonthsHighestCreditAmount]=S.[MostRecent12MonthsHighestCreditAmount],[MostRecentDerogatoryPublicRecordDate]=S.[MostRecentDerogatoryPublicRecordDate],[MostRecentUnpaidCollectionDate]=S.[MostRecentUnpaidCollectionDate],[NegativePaymentExperiencesCount]=S.[NegativePaymentExperiencesCount],[NetWorthAmount]=S.[NetWorthAmount],[NoTradeIndicatorCode]=S.[NoTradeIndicatorCode],[OpenUnpaidCollectionsCount]=S.[OpenUnpaidCollectionsCount],[OriginalUccFilingsCount]=S.[OriginalUccFilingsCount],[OtherTradeLinesCount]=S.[OtherTradeLinesCount],[OutOfBusinessIndicatorCode]=S.[OutOfBusinessIndicatorCode],[PartyId]=S.[PartyId],[PaydexFirmScore]=S.[PaydexFirmScore],[PercentAccountBalance61plusDays]=S.[PercentAccountBalance61plusDays],[PercentSatisfactoryExperiences]=S.[PercentSatisfactoryExperiences],[PercentSlowNegativeExperiences]=S.[PercentSlowNegativeExperiences],[PercentUnpaidBusinessReportCollections]=S.[PercentUnpaidBusinessReportCollections],[ReasonCode]=S.[ReasonCode],[RelationshipType]=S.[RelationshipType],[RequestedAddress]=S.[RequestedAddress],[RequestedCity]=S.[RequestedCity],[RequestedCompanyName]=S.[RequestedCompanyName],[RequestedFirstName]=S.[RequestedFirstName],[RequestedLastName]=S.[RequestedLastName],[RequestedState]=S.[RequestedState],[RequestedTaxId_CT]=S.[RequestedTaxId_CT],[RequestedZip]=S.[RequestedZip],[SatisfactoryPaymentExperiencesCount]=S.[SatisfactoryPaymentExperiencesCount],[SicCode]=S.[SicCode],[SlowAndNegativePaymentExperiencesCount]=S.[SlowAndNegativePaymentExperiencesCount],[SlowPaymentExperiencesCount]=S.[SlowPaymentExperiencesCount],[StandardPercentile]=S.[StandardPercentile],[SuitsIndicatorCode]=S.[SuitsIndicatorCode],[TaxLiensCount]=S.[TaxLiensCount],[TimeSinceMostRecentBusinessDerogPublicRecord]=S.[TimeSinceMostRecentBusinessDerogPublicRecord],[TimeSinceMostRecentUnpaidBusinessCollection]=S.[TimeSinceMostRecentUnpaidBusinessCollection],[TotalDelinquentAmount]=S.[TotalDelinquentAmount],[TotalEmployeesCount]=S.[TotalEmployeesCount],[TotalJudgmentsBalanceAmount]=S.[TotalJudgmentsBalanceAmount],[TotalScore]=S.[TotalScore],[TotalTaxLiensBalanceAmount]=S.[TotalTaxLiensBalanceAmount],[TradeExperienceAccountsBalance]=S.[TradeExperienceAccountsBalance],[TradeExperiencesCount]=S.[TradeExperiencesCount],[TradeLinesPaymentAccountBalance]=S.[TradeLinesPaymentAccountBalance],[TradeLinesWithBalance0DaysDeliquentCount]=S.[TradeLinesWithBalance0DaysDeliquentCount],[TrendIndicatorCode]=S.[TrendIndicatorCode],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[WorstDbtMostRecent5QuartersCount]=S.[WorstDbtMostRecent5QuartersCount],[WorstDbtMostRecent6MonthsCount]=S.[WorstDbtMostRecent6MonthsCount],[YearsInBusinessCount]=S.[YearsInBusinessCount],[ZeroBalanceTradeLinesCount]=S.[ZeroBalanceTradeLinesCount]
WHEN NOT MATCHED THEN
	INSERT ([AbnormalBusinessReportIndicatorCode],[AccountBalance60PlusDbtPercent],[AccountBalance90PlusDbtPercent],[AccountBalanceCurrentPercent],[Active],[BadTradeLinesCount],[BankruptciesCount],[BankruptciesIndicatorCode],[BankruptcyRelationshipIndicatorCode],[BureauCustomerName],[BureauCustomerNumber],[BusinessAddress],[BusinessBureauScore],[BusinessCity],[BusinessCollectionsCount],[BusinessLegalName],[BusinessReportDerogatoryRating],[BusinessReportTimeAsCurrentOwner],[BusinessRiskScoreTypeCode],[BusinessStartDate],[BusinessState],[BusinessZip],[ClosedPaidCollectionsCount],[ClosedUnpaidCollectionsCount],[CollectionsCount],[CollectionsMostRecent6MonthCount],[CompositePaydexCurrent12MonthAverageAmount],[CompositePaydexPrior12MonthAverageAmount],[ContinuouslyReportedTradeLinesCount],[CreatedById],[CreatedTime],[CreditBureauRequestId],[CreditRatingCode],[CurrentManagementControlYear],[CurrentMinusIndustryNormPaydexScore],[CustomerBureauReport_Content],[CustomerBureauReport_Source],[CustomerBureauReport_Type],[CustomerCreditBureauId],[DaysBeyondTermsCount],[DaysBeyondTermsIntelliscore],[DaysContinuouslyReportedTradeLinesDbtCount],[DBXmlReportData],[DelinquentPaymentExperiencesCount],[DerogatoryPublicRecordsCount],[DerogatoryUccFilingsCount],[ExperiencesCount],[ExperiencesInPaydexCalculationCount],[FileEstablishedDate],[FinancialConditionIndicatorCode],[FullReport],[HighCredit],[HistoryIndicatorCode],[IndustryDaysBeyondTermsCount],[IndustryNormPaydexScore],[InquiriesMostRecent6MonthsCount],[InquiriesMostRecent9MonthsCount],[IntelliscoreCreditUtilization],[IntelliscorePercentSatisfactoryTradelines],[IsCorporate],[IsDefault],[JudgementLienCollectionCount],[JudgementsCount],[JudgmentsIndicatorCode],[LBXmlRequest],[LBXmlResponse],[LiensIndicatorCode],[ManualCustomerSelection],[MessageCode],[MessageText],[Model],[ModelReason],[MonthsSinceBusinessFileEstablished],[MostRecent12MonthsHighestCreditAmount],[MostRecentDerogatoryPublicRecordDate],[MostRecentUnpaidCollectionDate],[NegativePaymentExperiencesCount],[NetWorthAmount],[NoTradeIndicatorCode],[OpenUnpaidCollectionsCount],[OriginalUccFilingsCount],[OtherTradeLinesCount],[OutOfBusinessIndicatorCode],[PartyId],[PaydexFirmScore],[PercentAccountBalance61plusDays],[PercentSatisfactoryExperiences],[PercentSlowNegativeExperiences],[PercentUnpaidBusinessReportCollections],[ReasonCode],[RelationshipType],[RequestedAddress],[RequestedCity],[RequestedCompanyName],[RequestedFirstName],[RequestedLastName],[RequestedState],[RequestedTaxId_CT],[RequestedZip],[SatisfactoryPaymentExperiencesCount],[SicCode],[SlowAndNegativePaymentExperiencesCount],[SlowPaymentExperiencesCount],[StandardPercentile],[SuitsIndicatorCode],[TaxLiensCount],[TimeSinceMostRecentBusinessDerogPublicRecord],[TimeSinceMostRecentUnpaidBusinessCollection],[TotalDelinquentAmount],[TotalEmployeesCount],[TotalJudgmentsBalanceAmount],[TotalScore],[TotalTaxLiensBalanceAmount],[TradeExperienceAccountsBalance],[TradeExperiencesCount],[TradeLinesPaymentAccountBalance],[TradeLinesWithBalance0DaysDeliquentCount],[TrendIndicatorCode],[WorstDbtMostRecent5QuartersCount],[WorstDbtMostRecent6MonthsCount],[YearsInBusinessCount],[ZeroBalanceTradeLinesCount])
    VALUES (S.[AbnormalBusinessReportIndicatorCode],S.[AccountBalance60PlusDbtPercent],S.[AccountBalance90PlusDbtPercent],S.[AccountBalanceCurrentPercent],S.[Active],S.[BadTradeLinesCount],S.[BankruptciesCount],S.[BankruptciesIndicatorCode],S.[BankruptcyRelationshipIndicatorCode],S.[BureauCustomerName],S.[BureauCustomerNumber],S.[BusinessAddress],S.[BusinessBureauScore],S.[BusinessCity],S.[BusinessCollectionsCount],S.[BusinessLegalName],S.[BusinessReportDerogatoryRating],S.[BusinessReportTimeAsCurrentOwner],S.[BusinessRiskScoreTypeCode],S.[BusinessStartDate],S.[BusinessState],S.[BusinessZip],S.[ClosedPaidCollectionsCount],S.[ClosedUnpaidCollectionsCount],S.[CollectionsCount],S.[CollectionsMostRecent6MonthCount],S.[CompositePaydexCurrent12MonthAverageAmount],S.[CompositePaydexPrior12MonthAverageAmount],S.[ContinuouslyReportedTradeLinesCount],S.[CreatedById],S.[CreatedTime],S.[CreditBureauRequestId],S.[CreditRatingCode],S.[CurrentManagementControlYear],S.[CurrentMinusIndustryNormPaydexScore],S.[CustomerBureauReport_Content],S.[CustomerBureauReport_Source],S.[CustomerBureauReport_Type],S.[CustomerCreditBureauId],S.[DaysBeyondTermsCount],S.[DaysBeyondTermsIntelliscore],S.[DaysContinuouslyReportedTradeLinesDbtCount],S.[DBXmlReportData],S.[DelinquentPaymentExperiencesCount],S.[DerogatoryPublicRecordsCount],S.[DerogatoryUccFilingsCount],S.[ExperiencesCount],S.[ExperiencesInPaydexCalculationCount],S.[FileEstablishedDate],S.[FinancialConditionIndicatorCode],S.[FullReport],S.[HighCredit],S.[HistoryIndicatorCode],S.[IndustryDaysBeyondTermsCount],S.[IndustryNormPaydexScore],S.[InquiriesMostRecent6MonthsCount],S.[InquiriesMostRecent9MonthsCount],S.[IntelliscoreCreditUtilization],S.[IntelliscorePercentSatisfactoryTradelines],S.[IsCorporate],S.[IsDefault],S.[JudgementLienCollectionCount],S.[JudgementsCount],S.[JudgmentsIndicatorCode],S.[LBXmlRequest],S.[LBXmlResponse],S.[LiensIndicatorCode],S.[ManualCustomerSelection],S.[MessageCode],S.[MessageText],S.[Model],S.[ModelReason],S.[MonthsSinceBusinessFileEstablished],S.[MostRecent12MonthsHighestCreditAmount],S.[MostRecentDerogatoryPublicRecordDate],S.[MostRecentUnpaidCollectionDate],S.[NegativePaymentExperiencesCount],S.[NetWorthAmount],S.[NoTradeIndicatorCode],S.[OpenUnpaidCollectionsCount],S.[OriginalUccFilingsCount],S.[OtherTradeLinesCount],S.[OutOfBusinessIndicatorCode],S.[PartyId],S.[PaydexFirmScore],S.[PercentAccountBalance61plusDays],S.[PercentSatisfactoryExperiences],S.[PercentSlowNegativeExperiences],S.[PercentUnpaidBusinessReportCollections],S.[ReasonCode],S.[RelationshipType],S.[RequestedAddress],S.[RequestedCity],S.[RequestedCompanyName],S.[RequestedFirstName],S.[RequestedLastName],S.[RequestedState],S.[RequestedTaxId_CT],S.[RequestedZip],S.[SatisfactoryPaymentExperiencesCount],S.[SicCode],S.[SlowAndNegativePaymentExperiencesCount],S.[SlowPaymentExperiencesCount],S.[StandardPercentile],S.[SuitsIndicatorCode],S.[TaxLiensCount],S.[TimeSinceMostRecentBusinessDerogPublicRecord],S.[TimeSinceMostRecentUnpaidBusinessCollection],S.[TotalDelinquentAmount],S.[TotalEmployeesCount],S.[TotalJudgmentsBalanceAmount],S.[TotalScore],S.[TotalTaxLiensBalanceAmount],S.[TradeExperienceAccountsBalance],S.[TradeExperiencesCount],S.[TradeLinesPaymentAccountBalance],S.[TradeLinesWithBalance0DaysDeliquentCount],S.[TrendIndicatorCode],S.[WorstDbtMostRecent5QuartersCount],S.[WorstDbtMostRecent6MonthsCount],S.[YearsInBusinessCount],S.[ZeroBalanceTradeLinesCount])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO