SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SubmitPayablesForApprovalProcess]
(
@BatchSize INT,
@UpdatedById BIGINT,
@TaskChunkServiceInstanceId BIGINT = NULL,
@UpdatedTime DATETIMEOFFSET,
@JobStepInstanceId BIGINT
) AS
BEGIN
UPDATE TOP (@BatchSize) PayableExtracts
SET TaskChunkServiceInstanceId = @TaskChunkServiceInstanceId,
UpdatedById = @UpdatedById,
UpdatedTime = @UpdatedTime,
IsSubmitted = 1
OUTPUT Deleted.PayableId as Id
WHERE TaskChunkServiceInstanceId IS NULL AND IsSubmitted = 0
AND JobStepInstanceId = @JobStepInstanceId
END

GO
