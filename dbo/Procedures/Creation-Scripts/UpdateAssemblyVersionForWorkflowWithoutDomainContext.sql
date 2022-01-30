SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateAssemblyVersionForWorkflowWithoutDomainContext]
(
@NewVersion NVARCHAR(50)
)
AS   
BEGIN

SELECT Id,
CHARINDEX('z:Assembly="Lw.System, Version=', WorkflowInstanceData) + 31 as StartNum,
CHARINDEX(', Culture', WorkflowInstanceData,CHARINDEX('z:Assembly="Lw.System, Version=', WorkflowInstanceData) + 31 ) as EndNum
INTO #WorkflowVersionTemp
FROM TransactionInstances WHERE (Status = 'Active' or Status = 'OnHold') and Workflowsource is not null AND  WorkflowInstanceData LIKE '%z:Assembly="Lw.System, Version=%'

DECLARE @OldVersion nvarchar(50);
DECLARE loop_Cursor  CURSOR FOR 

SELECT DISTINCT SUBSTRING(tranIns.WorkflowInstanceData,workflowVerion.StartNum, workflowVerion.EndNum - workflowVerion.StartNum) AS oldVersion 
FROM TransactionInstances tranIns JOIN #WorkflowVersionTemp workflowVerion ON tranIns.Id = workflowVerion.id

OPEN loop_Cursor
FETCH NEXT FROM loop_Cursor INTO @OldVersion

WHILE @@FETCH_STATUS = 0
BEGIN

UPDATE [TransactionInstances] 
SET [WorkflowInstanceData] = replace([WorkflowInstanceData], 
'z:Assembly="Lw.System, Version='+ @OldVersion +', Culture=neutral, PublicKeyToken=0f11a760a682ca2d', 
'z:Assembly="Lw.System, Version='+ @NewVersion +', Culture=neutral, PublicKeyToken=0f11a760a682ca2d') 
WHERE (Status = 'Active' or Status = 'OnHold') and workflowsource IS NOT NULL AND  WorkflowInstanceData LIKE '%z:Assembly="Lw.System, Version=%'

FETCH NEXT FROM loop_Cursor INTO @OldVersion
END

CLOSE loop_Cursor;
DEALLOCATE loop_Cursor;

END

GO
