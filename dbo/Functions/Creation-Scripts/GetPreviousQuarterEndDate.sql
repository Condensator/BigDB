SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetPreviousQuarterEndDate]
(
@Date DATETIME
)
RETURNS DATETIME
AS
BEGIN
DECLARE @AnyDate DATETIME
SET @AnyDate=DATEADD(d, -1, DATEADD(q, DATEDIFF(q, 0, @Date), 0))
RETURN @AnyDate
END

GO
