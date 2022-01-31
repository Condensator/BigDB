SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveResourceTranslatorArchive]
(
 @val [dbo].[ResourceTranslatorArchive] READONLY
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
MERGE [dbo].[ResourceTranslatorArchives] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [CultureISO]=S.[CultureISO],[File_Content]=S.[File_Content],[File_Source]=S.[File_Source],[File_Type]=S.[File_Type],[IsActive]=S.[IsActive],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([CreatedById],[CreatedTime],[CultureISO],[File_Content],[File_Source],[File_Type],[IsActive])
    VALUES (S.[CreatedById],S.[CreatedTime],S.[CultureISO],S.[File_Content],S.[File_Source],S.[File_Type],S.[IsActive])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO