CREATE PROCEDURE uspTest1834   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1834  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;