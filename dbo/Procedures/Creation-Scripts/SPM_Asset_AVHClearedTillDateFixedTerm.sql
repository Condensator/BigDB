SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

CREATE   PROC [dbo].[SPM_Asset_AVHClearedTillDateFixedTerm]
AS
BEGIN
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
SELECT 
	ea.AssetId
   ,COUNT (CASE WHEN avh.Sourcemodule = 'FixedTermDepreciation' THEN avh.Id ELSE 0.00 END ) AS countfixedterm  INTO ##Asset_AVHClearedTillDateFixedTerm
FROM
	##Asset_EligibleAssets ea
INNER JOIN
	##Asset_AVHClearedTillDate avc ON ea.AssetId = avc.assetid
INNER JOIN
	AssetValueHistories avh ON avh.assetid = avc.AssetId
WHERE
	avh.IsAccounted = 1 AND avh.GLJournalId is not NUll AND avh.ReversalGLJournalId is NULL 
	AND avh.Id <= avc.AVHClearedId AND avh.IncomeDate <=avc.AVHClearedTillDate
	AND avh.Sourcemodule in ('FixedTermDepreciation') AND avh.AdjustmentEntry = 0 
GROUP BY
	ea.AssetId;

CREATE NONCLUSTERED INDEX IX_AVHClearedTillDateFixedTerm_AssetId ON ##Asset_AVHClearedTillDateFixedTerm(AssetId);

END

GO
