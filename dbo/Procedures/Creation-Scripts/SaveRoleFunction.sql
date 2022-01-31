SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveRoleFunction]
(
 @val [dbo].[RoleFunction] READONLY
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
MERGE [dbo].[RoleFunctions] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [Description]=S.[Description],[IsActive]=S.[IsActive],[IsSystemDefined]=S.[IsSystemDefined],[Name]=S.[Name],[SystemDefinedName]=S.[SystemDefinedName],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[Description],[IsActive],[IsSystemDefined],[Name],[SystemDefinedName])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[Description],S.[IsActive],S.[IsSystemDefined],S.[Name],S.[SystemDefinedName])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
