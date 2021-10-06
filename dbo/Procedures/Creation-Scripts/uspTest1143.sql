CREATE PROCEDURE uspTest1143   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1143  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;