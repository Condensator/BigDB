CREATE PROCEDURE uspTest1821   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1821  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;