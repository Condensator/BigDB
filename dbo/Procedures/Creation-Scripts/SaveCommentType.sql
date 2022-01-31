SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveCommentType]
(
 @val [dbo].[CommentType] READONLY
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
MERGE [dbo].[CommentTypes] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [CreationAllowed]=S.[CreationAllowed],[DefaultPermission]=S.[DefaultPermission],[DefaultTitle]=S.[DefaultTitle],[Description]=S.[Description],[IsActive]=S.[IsActive],[IsAlert]=S.[IsAlert],[IsSubTypeRequired]=S.[IsSubTypeRequired],[Name]=S.[Name],[PortfolioId]=S.[PortfolioId],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[CreationAllowed],[DefaultPermission],[DefaultTitle],[Description],[IsActive],[IsAlert],[IsSubTypeRequired],[Name],[PortfolioId])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[CreationAllowed],S.[DefaultPermission],S.[DefaultTitle],S.[Description],S.[IsActive],S.[IsAlert],S.[IsSubTypeRequired],S.[Name],S.[PortfolioId])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO