SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveReversalTaxExemptDetail_Extract]
(
 @val [dbo].[ReversalTaxExemptDetail_Extract] READONLY
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
MERGE [dbo].[ReversalTaxExemptDetail_Extract] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AssetId]=S.[AssetId],[CityTaxExempt]=S.[CityTaxExempt],[CityTaxExemptRule]=S.[CityTaxExemptRule],[CountryTaxExempt]=S.[CountryTaxExempt],[CountryTaxExemptRule]=S.[CountryTaxExemptRule],[CountyTaxExempt]=S.[CountyTaxExempt],[CountyTaxExemptRule]=S.[CountyTaxExemptRule],[JobStepInstanceId]=S.[JobStepInstanceId],[ReceivableDetailId]=S.[ReceivableDetailId],[StateTaxExempt]=S.[StateTaxExempt],[StateTaxExemptRule]=S.[StateTaxExemptRule],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([AssetId],[CityTaxExempt],[CityTaxExemptRule],[CountryTaxExempt],[CountryTaxExemptRule],[CountyTaxExempt],[CountyTaxExemptRule],[CreatedById],[CreatedTime],[JobStepInstanceId],[ReceivableDetailId],[StateTaxExempt],[StateTaxExemptRule])
    VALUES (S.[AssetId],S.[CityTaxExempt],S.[CityTaxExemptRule],S.[CountryTaxExempt],S.[CountryTaxExemptRule],S.[CountyTaxExempt],S.[CountyTaxExemptRule],S.[CreatedById],S.[CreatedTime],S.[JobStepInstanceId],S.[ReceivableDetailId],S.[StateTaxExempt],S.[StateTaxExemptRule])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
