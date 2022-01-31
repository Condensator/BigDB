SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveCreditBureauBusinessDetail]
(
 @val [dbo].[CreditBureauBusinessDetail] READONLY
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
MERGE [dbo].[CreditBureauBusinessDetails] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AccountBalance60PlusDbtPercent]=S.[AccountBalance60PlusDbtPercent],[AccountBalance90PlusDbtPercent]=S.[AccountBalance90PlusDbtPercent],[AccountBalanceCurrentPercent]=S.[AccountBalanceCurrentPercent],[AdditionalPaymentExperienceAccountsBalance]=S.[AdditionalPaymentExperienceAccountsBalance],[BankruptciesCount]=S.[BankruptciesCount],[BankruptciesIndicatorCode]=S.[BankruptciesIndicatorCode],[BureauCustomerName]=S.[BureauCustomerName],[BureauCustomerNumber]=S.[BureauCustomerNumber],[BusinessAddress]=S.[BusinessAddress],[BusinessBureauScore]=S.[BusinessBureauScore],[BusinessCity]=S.[BusinessCity],[BusinessCollectionsCount]=S.[BusinessCollectionsCount],[BusinessLegalName]=S.[BusinessLegalName],[BusinessReportTimeAsCurrentOwner]=S.[BusinessReportTimeAsCurrentOwner],[BusinessStartDate]=S.[BusinessStartDate],[BusinessState]=S.[BusinessState],[BusinessZip]=S.[BusinessZip],[CompositePaydexCurrent12MonthAverageAmount]=S.[CompositePaydexCurrent12MonthAverageAmount],[CompositePaydexPrior12MonthAverageAmount]=S.[CompositePaydexPrior12MonthAverageAmount],[ContinuouslyReportedTradeLinesCount]=S.[ContinuouslyReportedTradeLinesCount],[CreditBureauDirectConfigId]=S.[CreditBureauDirectConfigId],[CreditRatingRequestJson]=S.[CreditRatingRequestJson],[CreditRatingResponseJson]=S.[CreditRatingResponseJson],[CreditReport_Content]=S.[CreditReport_Content],[CreditReport_Source]=S.[CreditReport_Source],[CreditReport_Type]=S.[CreditReport_Type],[CreditReportRequestJson]=S.[CreditReportRequestJson],[CreditReportResponseJson]=S.[CreditReportResponseJson],[CurrentManagementControlYear]=S.[CurrentManagementControlYear],[DataReceivedDate]=S.[DataReceivedDate],[DataRequestStatus]=S.[DataRequestStatus],[DaysContinuouslyReportedTradeLinesDbtCount]=S.[DaysContinuouslyReportedTradeLinesDbtCount],[DerogatoryUccFilingsCount]=S.[DerogatoryUccFilingsCount],[ExperiencesCount]=S.[ExperiencesCount],[FileEstablishedDate]=S.[FileEstablishedDate],[FinancialStabilityRiskScore]=S.[FinancialStabilityRiskScore],[FinancialStabilityRiskStandardPercentile]=S.[FinancialStabilityRiskStandardPercentile],[HighCredit]=S.[HighCredit],[HistoryIndicatorCode]=S.[HistoryIndicatorCode],[IndustryNormPaydexScore]=S.[IndustryNormPaydexScore],[IsActive]=S.[IsActive],[IsCorporate]=S.[IsCorporate],[JudgementsCount]=S.[JudgementsCount],[JudgmentsIndicatorCode]=S.[JudgmentsIndicatorCode],[LiensIndicatorCode]=S.[LiensIndicatorCode],[ManualCustomerSelection]=S.[ManualCustomerSelection],[MessageCode]=S.[MessageCode],[MessageText]=S.[MessageText],[NetWorthAmount]=S.[NetWorthAmount],[OutOfBusinessIndicatorCode]=S.[OutOfBusinessIndicatorCode],[PartyId]=S.[PartyId],[PaydexFirmScore]=S.[PaydexFirmScore],[PercentSatisfactoryExperiences]=S.[PercentSatisfactoryExperiences],[PercentSlowNegativeExperiences]=S.[PercentSlowNegativeExperiences],[ReportFormat]=S.[ReportFormat],[ReportType]=S.[ReportType],[RequestedAddress]=S.[RequestedAddress],[RequestedBy]=S.[RequestedBy],[RequestedCity]=S.[RequestedCity],[RequestedCompanyName]=S.[RequestedCompanyName],[RequestedCountryISOAlpha2]=S.[RequestedCountryISOAlpha2],[RequestedDate]=S.[RequestedDate],[RequestedFirstName]=S.[RequestedFirstName],[RequestedLastName]=S.[RequestedLastName],[RequestedState]=S.[RequestedState],[RequestedTaxId_CT]=S.[RequestedTaxId_CT],[RequestedZip]=S.[RequestedZip],[RequestSourceId]=S.[RequestSourceId],[ReviewStatus]=S.[ReviewStatus],[SatisfactoryPaymentExperiencesCount]=S.[SatisfactoryPaymentExperiencesCount],[SicCode]=S.[SicCode],[SlowAndNegativePaymentExperiencesCount]=S.[SlowAndNegativePaymentExperiencesCount],[SlowPaymentExperiencesCount]=S.[SlowPaymentExperiencesCount],[Source]=S.[Source],[StandardPercentile]=S.[StandardPercentile],[SuitsIndicatorCode]=S.[SuitsIndicatorCode],[TaxLiensCount]=S.[TaxLiensCount],[TotalDelinquentAmount]=S.[TotalDelinquentAmount],[TotalEmployeesCount]=S.[TotalEmployeesCount],[TotalJudgmentsBalanceAmount]=S.[TotalJudgmentsBalanceAmount],[TotalTaxLiensBalanceAmount]=S.[TotalTaxLiensBalanceAmount],[TradePaymentExperienceAccountsBalance]=S.[TradePaymentExperienceAccountsBalance],[TrendIndicatorCode]=S.[TrendIndicatorCode],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[YearsInBusinessCount]=S.[YearsInBusinessCount]
WHEN NOT MATCHED THEN
	INSERT ([AccountBalance60PlusDbtPercent],[AccountBalance90PlusDbtPercent],[AccountBalanceCurrentPercent],[AdditionalPaymentExperienceAccountsBalance],[BankruptciesCount],[BankruptciesIndicatorCode],[BureauCustomerName],[BureauCustomerNumber],[BusinessAddress],[BusinessBureauScore],[BusinessCity],[BusinessCollectionsCount],[BusinessLegalName],[BusinessReportTimeAsCurrentOwner],[BusinessStartDate],[BusinessState],[BusinessZip],[CompositePaydexCurrent12MonthAverageAmount],[CompositePaydexPrior12MonthAverageAmount],[ContinuouslyReportedTradeLinesCount],[CreatedById],[CreatedTime],[CreditBureauDirectConfigId],[CreditRatingRequestJson],[CreditRatingResponseJson],[CreditReport_Content],[CreditReport_Source],[CreditReport_Type],[CreditReportRequestJson],[CreditReportResponseJson],[CurrentManagementControlYear],[DataReceivedDate],[DataRequestStatus],[DaysContinuouslyReportedTradeLinesDbtCount],[DerogatoryUccFilingsCount],[ExperiencesCount],[FileEstablishedDate],[FinancialStabilityRiskScore],[FinancialStabilityRiskStandardPercentile],[HighCredit],[HistoryIndicatorCode],[IndustryNormPaydexScore],[IsActive],[IsCorporate],[JudgementsCount],[JudgmentsIndicatorCode],[LiensIndicatorCode],[ManualCustomerSelection],[MessageCode],[MessageText],[NetWorthAmount],[OutOfBusinessIndicatorCode],[PartyId],[PaydexFirmScore],[PercentSatisfactoryExperiences],[PercentSlowNegativeExperiences],[ReportFormat],[ReportType],[RequestedAddress],[RequestedBy],[RequestedCity],[RequestedCompanyName],[RequestedCountryISOAlpha2],[RequestedDate],[RequestedFirstName],[RequestedLastName],[RequestedState],[RequestedTaxId_CT],[RequestedZip],[RequestSourceId],[ReviewStatus],[SatisfactoryPaymentExperiencesCount],[SicCode],[SlowAndNegativePaymentExperiencesCount],[SlowPaymentExperiencesCount],[Source],[StandardPercentile],[SuitsIndicatorCode],[TaxLiensCount],[TotalDelinquentAmount],[TotalEmployeesCount],[TotalJudgmentsBalanceAmount],[TotalTaxLiensBalanceAmount],[TradePaymentExperienceAccountsBalance],[TrendIndicatorCode],[YearsInBusinessCount])
    VALUES (S.[AccountBalance60PlusDbtPercent],S.[AccountBalance90PlusDbtPercent],S.[AccountBalanceCurrentPercent],S.[AdditionalPaymentExperienceAccountsBalance],S.[BankruptciesCount],S.[BankruptciesIndicatorCode],S.[BureauCustomerName],S.[BureauCustomerNumber],S.[BusinessAddress],S.[BusinessBureauScore],S.[BusinessCity],S.[BusinessCollectionsCount],S.[BusinessLegalName],S.[BusinessReportTimeAsCurrentOwner],S.[BusinessStartDate],S.[BusinessState],S.[BusinessZip],S.[CompositePaydexCurrent12MonthAverageAmount],S.[CompositePaydexPrior12MonthAverageAmount],S.[ContinuouslyReportedTradeLinesCount],S.[CreatedById],S.[CreatedTime],S.[CreditBureauDirectConfigId],S.[CreditRatingRequestJson],S.[CreditRatingResponseJson],S.[CreditReport_Content],S.[CreditReport_Source],S.[CreditReport_Type],S.[CreditReportRequestJson],S.[CreditReportResponseJson],S.[CurrentManagementControlYear],S.[DataReceivedDate],S.[DataRequestStatus],S.[DaysContinuouslyReportedTradeLinesDbtCount],S.[DerogatoryUccFilingsCount],S.[ExperiencesCount],S.[FileEstablishedDate],S.[FinancialStabilityRiskScore],S.[FinancialStabilityRiskStandardPercentile],S.[HighCredit],S.[HistoryIndicatorCode],S.[IndustryNormPaydexScore],S.[IsActive],S.[IsCorporate],S.[JudgementsCount],S.[JudgmentsIndicatorCode],S.[LiensIndicatorCode],S.[ManualCustomerSelection],S.[MessageCode],S.[MessageText],S.[NetWorthAmount],S.[OutOfBusinessIndicatorCode],S.[PartyId],S.[PaydexFirmScore],S.[PercentSatisfactoryExperiences],S.[PercentSlowNegativeExperiences],S.[ReportFormat],S.[ReportType],S.[RequestedAddress],S.[RequestedBy],S.[RequestedCity],S.[RequestedCompanyName],S.[RequestedCountryISOAlpha2],S.[RequestedDate],S.[RequestedFirstName],S.[RequestedLastName],S.[RequestedState],S.[RequestedTaxId_CT],S.[RequestedZip],S.[RequestSourceId],S.[ReviewStatus],S.[SatisfactoryPaymentExperiencesCount],S.[SicCode],S.[SlowAndNegativePaymentExperiencesCount],S.[SlowPaymentExperiencesCount],S.[Source],S.[StandardPercentile],S.[SuitsIndicatorCode],S.[TaxLiensCount],S.[TotalDelinquentAmount],S.[TotalEmployeesCount],S.[TotalJudgmentsBalanceAmount],S.[TotalTaxLiensBalanceAmount],S.[TradePaymentExperienceAccountsBalance],S.[TrendIndicatorCode],S.[YearsInBusinessCount])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO