CREATE PROCEDURE uspTest1365   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1365  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;