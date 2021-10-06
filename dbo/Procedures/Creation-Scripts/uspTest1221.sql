CREATE PROCEDURE uspTest1221   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1221  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;