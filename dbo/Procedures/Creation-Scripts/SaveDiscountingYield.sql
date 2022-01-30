SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveDiscountingYield]
(
 @val [dbo].[DiscountingYield] READONLY
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
MERGE [dbo].[DiscountingYields] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [EffectiveDate]=S.[EffectiveDate],[IsActive]=S.[IsActive],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[Yield]=S.[Yield]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[DiscountingFinanceId],[EffectiveDate],[IsActive],[Yield])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[DiscountingFinanceId],S.[EffectiveDate],S.[IsActive],S.[Yield])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
