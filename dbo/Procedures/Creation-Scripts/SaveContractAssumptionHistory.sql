SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveContractAssumptionHistory]
(
 @val [dbo].[ContractAssumptionHistory] READONLY
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
MERGE [dbo].[ContractAssumptionHistories] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [AssumptionDate]=S.[AssumptionDate],[AssumptionId]=S.[AssumptionId],[BillToId]=S.[BillToId],[CustomerId]=S.[CustomerId],[FinanceId]=S.[FinanceId],[IsActive]=S.[IsActive],[SequenceNumber]=S.[SequenceNumber],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([AssumptionDate],[AssumptionId],[BillToId],[ContractId],[CreatedById],[CreatedTime],[CustomerId],[FinanceId],[IsActive],[SequenceNumber])
    VALUES (S.[AssumptionDate],S.[AssumptionId],S.[BillToId],S.[ContractId],S.[CreatedById],S.[CreatedTime],S.[CustomerId],S.[FinanceId],S.[IsActive],S.[SequenceNumber])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
