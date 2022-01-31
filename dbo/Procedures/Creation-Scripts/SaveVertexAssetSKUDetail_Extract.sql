SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveVertexAssetSKUDetail_Extract]
(
 @val [dbo].[VertexAssetSKUDetail_Extract] READONLY
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
MERGE [dbo].[VertexAssetSKUDetail_Extract] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AssetCatalogNumber]=S.[AssetCatalogNumber],[AssetId]=S.[AssetId],[AssetSKUId]=S.[AssetSKUId],[AssetType]=S.[AssetType],[ContractId]=S.[ContractId],[JobStepInstanceId]=S.[JobStepInstanceId],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[Usage]=S.[Usage]
WHEN NOT MATCHED THEN
	INSERT ([AssetCatalogNumber],[AssetId],[AssetSKUId],[AssetType],[ContractId],[CreatedById],[CreatedTime],[JobStepInstanceId],[Usage])
    VALUES (S.[AssetCatalogNumber],S.[AssetId],S.[AssetSKUId],S.[AssetType],S.[ContractId],S.[CreatedById],S.[CreatedTime],S.[JobStepInstanceId],S.[Usage])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
