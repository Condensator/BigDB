SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMaxValue]
(
@v1 DECIMAL(24,2)
,@V2 DECIMAL(24,2)
) RETURNS DECIMAL(24,2)
AS
BEGIN
IF @v1 > @v2
return @V1
ELSE IF @V1<@V2
RETURN @V2
RETURN @V1
END

GO
