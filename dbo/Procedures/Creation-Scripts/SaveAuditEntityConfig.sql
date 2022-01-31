SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveAuditEntityConfig]
(
 @val [dbo].[AuditEntityConfig] READONLY
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
MERGE [dbo].[AuditEntityConfigs] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [GridName]=S.[GridName],[IsActive]=S.[IsActive],[IsEnabled]=S.[IsEnabled],[NaturalIdentifier]=S.[NaturalIdentifier],[NaturalIdentifierLookupEntity]=S.[NaturalIdentifierLookupEntity],[NaturalIdentifierLookupField]=S.[NaturalIdentifierLookupField],[QuerySource]=S.[QuerySource],[TableName]=S.[TableName],[TextProperty]=S.[TextProperty],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime],[UserFriendlyName]=S.[UserFriendlyName]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[GridName],[IsActive],[IsEnabled],[NaturalIdentifier],[NaturalIdentifierLookupEntity],[NaturalIdentifierLookupField],[QuerySource],[TableName],[TextProperty],[UserFriendlyName])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[GridName],S.[IsActive],S.[IsEnabled],S.[NaturalIdentifier],S.[NaturalIdentifierLookupEntity],S.[NaturalIdentifierLookupField],S.[QuerySource],S.[TableName],S.[TextProperty],S.[UserFriendlyName])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO