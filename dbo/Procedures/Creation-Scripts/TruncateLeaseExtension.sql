SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TruncateLeaseExtension]
AS
BEGIN
TRUNCATE TABLE LeaseExtensions
END

GO
