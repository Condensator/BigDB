CREATE PROCEDURE uspTest1481   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1481  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;