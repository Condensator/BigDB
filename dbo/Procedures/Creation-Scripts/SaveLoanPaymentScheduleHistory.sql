SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveLoanPaymentScheduleHistory]
(
 @val [dbo].[LoanPaymentScheduleHistory] READONLY
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
MERGE [dbo].[LoanPaymentScheduleHistories] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [EndDate]=S.[EndDate],[IsActive]=S.[IsActive],[LoanPaymentScheduleId]=S.[LoanPaymentScheduleId],[OriginalPaymentAmount_Amount]=S.[OriginalPaymentAmount_Amount],[OriginalPaymentAmount_Currency]=S.[OriginalPaymentAmount_Currency],[OriginalPaymentStructure]=S.[OriginalPaymentStructure],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[EndDate],[IsActive],[LoanFinanceId],[LoanPaymentScheduleId],[OriginalPaymentAmount_Amount],[OriginalPaymentAmount_Currency],[OriginalPaymentStructure])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[EndDate],S.[IsActive],S.[LoanFinanceId],S.[LoanPaymentScheduleId],S.[OriginalPaymentAmount_Amount],S.[OriginalPaymentAmount_Currency],S.[OriginalPaymentStructure])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
