SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveInstrumentTypeGLAccount]
(
 @val [dbo].[InstrumentTypeGLAccount] READONLY
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
MERGE [dbo].[InstrumentTypeGLAccounts] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [ActivationDate]=S.[ActivationDate],[DeactivationDate]=S.[DeactivationDate],[GLAccountNumber]=S.[GLAccountNumber],[GLEntryItemId]=S.[GLEntryItemId],[GLTemplateId]=S.[GLTemplateId],[InstrumentTypeId]=S.[InstrumentTypeId],[IsActive]=S.[IsActive],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[UseRollupCostCenter]=S.[UseRollupCostCenter]
WHEN NOT MATCHED THEN
	INSERT ([ActivationDate],[CreatedById],[CreatedTime],[DeactivationDate],[GLAccountNumber],[GLEntryItemId],[GLTemplateId],[InstrumentTypeId],[IsActive],[UseRollupCostCenter])
    VALUES (S.[ActivationDate],S.[CreatedById],S.[CreatedTime],S.[DeactivationDate],S.[GLAccountNumber],S.[GLEntryItemId],S.[GLTemplateId],S.[InstrumentTypeId],S.[IsActive],S.[UseRollupCostCenter])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO