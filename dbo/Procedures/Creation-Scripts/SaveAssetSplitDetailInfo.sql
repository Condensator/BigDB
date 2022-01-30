SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveAssetSplitDetailInfo]
(
 @val [dbo].[AssetSplitDetailInfo] READONLY
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
MERGE [dbo].[AssetSplitDetailInfoes] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [Alias]=S.[Alias],[IsActive]=S.[IsActive],[NewAssetCost_Amount]=S.[NewAssetCost_Amount],[NewAssetCost_Currency]=S.[NewAssetCost_Currency],[NewQuantity]=S.[NewQuantity],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[Weightage]=S.[Weightage]
WHEN NOT MATCHED THEN
	INSERT ([Alias],[AssetSplitDetailId],[CreatedById],[CreatedTime],[IsActive],[NewAssetCost_Amount],[NewAssetCost_Currency],[NewQuantity],[Weightage])
    VALUES (S.[Alias],S.[AssetSplitDetailId],S.[CreatedById],S.[CreatedTime],S.[IsActive],S.[NewAssetCost_Amount],S.[NewAssetCost_Currency],S.[NewQuantity],S.[Weightage])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
