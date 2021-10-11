CREATE PROCEDURE uspTest1498   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1498  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;