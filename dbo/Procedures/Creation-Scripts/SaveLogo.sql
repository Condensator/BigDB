SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SaveLogo]
(
 @val [dbo].[Logo] READONLY
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
MERGE [dbo].[Logoes] With (ForceSeek) AS T
USING (SELECT * FROM @val) AS S
		ON ( T.Id = S.Id)
WHEN MATCHED THEN
	UPDATE SET [Comment]=S.[Comment],[EntityType]=S.[EntityType],[IsActive]=S.[IsActive],[LogoImageFile_Content]=S.[LogoImageFile_Content],[LogoImageFile_Source]=S.[LogoImageFile_Source],[LogoImageFile_Type]=S.[LogoImageFile_Type],[Name]=S.[Name],[PartyId]=S.[PartyId],[PortfolioId]=S.[PortfolioId],[UpdatedById]=S.[UpdatedById],[UpdatedTime]=S.[UpdatedTime]
WHEN NOT MATCHED THEN
	INSERT ([Comment],[CreatedById],[CreatedTime],[EntityType],[IsActive],[LogoImageFile_Content],[LogoImageFile_Source],[LogoImageFile_Type],[Name],[PartyId],[PortfolioId])
    VALUES (S.[Comment],S.[CreatedById],S.[CreatedTime],S.[EntityType],S.[IsActive],S.[LogoImageFile_Content],S.[LogoImageFile_Source],S.[LogoImageFile_Type],S.[Name],S.[PartyId],S.[PortfolioId])

OUTPUT $action, Inserted.Id, S.Token, Inserted.[RowVersion], Deleted.[RowVersion]
INTO @Output;

SELECT o.Id, o.Token, o.[RowVersion], CASE WHEN s.[RowVersion] <> o.[OldRowVersion] THEN 1 ELSE 0 END as ErrorCode FROM @Output o join @val s on o.Token = s.Token AND [Action] = 'UPDATE'
UNION ALL
SELECT Id, Token, [RowVersion], 0 as ErrorCode FROM @Output WHERE [Action] = 'INSERT';

GO
