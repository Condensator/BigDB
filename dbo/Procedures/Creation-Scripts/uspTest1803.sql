CREATE PROCEDURE uspTest1803   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1803  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;