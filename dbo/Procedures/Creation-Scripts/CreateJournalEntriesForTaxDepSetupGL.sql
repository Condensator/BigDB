SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CreateJournalEntriesForTaxDepSetupGL]
(
@JournalParam TaxDepSetupJournalParam READONLY
,@JournalDetailParam TaxDepSetupJournalDetailParam READONLY
,@TaxDepEntityToUpdate TaxDepEntityToUpdate READONLY
,@IsUpdateRequired BIT
,@PostDate DATETIME
,@CreatedById BIGINT
,@CreatedTime DATETIMEOFFSET
)
AS
BEGIN
SET NOCOUNT ON;
CREATE TABLE #GLJournal
(
GLJournalId BIGINT,
RecordCount BIGINT,
PostDate DATETIME,
IsReversal BIT,
ContractId BIGINT
)
MERGE GLJournals GLJournal
USING @JournalParam JournalParam ON 1 != 1
WHEN NOT MATCHED THEN
INSERT ([PostDate]
,[IsManualEntry]
,[IsReversalEntry]
,[CreatedById]
,[CreatedTime]
,[UpdatedById]
,[UpdatedTime]
,[LegalEntityId])
VALUES(PostDate
,IsManualEntry
,IsReversalEntry
,@CreatedById
,@CreatedTime
,NULL
,NULL
,LegalEntityId)
OUTPUT inserted.Id, JournalParam.RecordCount, inserted.PostDate, inserted.IsReversalEntry,JournalParam.ContractId INTO #GLJournal;
INSERT INTO [dbo].[GLJournalDetails]
([EntityId]
,[EntityType]
,[Amount_Amount]
,[Amount_Currency]
,[IsDebit]
,[GLAccountNumber]
,[Description]
,[SourceId]
,[CreatedById]
,[CreatedTime]
,[UpdatedById]
,[UpdatedTime]
,[GLAccountId]
,[GLTemplateDetailId]
,[MatchingGLTemplateDetailId]
,[LineofBusinessId]
,[ExportJobId]
,[GLJournalId]
,[IsActive]
,[InstrumentTypeGLAccountId])
SELECT
EntityId
,EntityType
,Amount
,Currency
,IsDebit
,GLAccountNumber
,Description
,journalDetail.SourceId
,@CreatedById
,@CreatedTime
,NULL
,NULL
,GLAccountId
,GLTemplateDetailId
,MatchingGLTemplateDetailId
,LineofBusinessId
,NULL
,#GLJournal.GLJournalId
,IsActive
,InstrumentTypeGLAccountId
FROM @JournalDetailParam journalDetail
JOIN #GLJournal ON journalDetail.RecordCount = #GLJournal.RecordCount
IF(@IsUpdateRequired = 1)
UPDATE  TD SET TD.PostDate = @PostDate, td.IsGLPosted = 1, td.UpdatedById = @CreatedById, td.UpdatedTime = @CreatedTime
FROM TaxDepEntities TD
JOIN @TaxDepEntityToUpdate TU ON TD.Id = TU.Id;
DROP TABLE #GLJournal
SET NOCOUNT OFF;
END

GO
