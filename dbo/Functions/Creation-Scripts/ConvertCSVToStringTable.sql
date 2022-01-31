SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ConvertCSVToStringTable]
(
	@List NVARCHAR(MAX),
	@Delim CHAR
)
RETURNS
	@ParsedList TABLE
	(
		Item NVARCHAR(200) not null INDEX IX_Item UNIQUE CLUSTERED
	)
AS
BEGIN
	INSERT INTO @ParsedList (Item)  
	SELECT DISTINCT VALUE FROM string_split(@List,@Delim)
	RETURN  
END

GO