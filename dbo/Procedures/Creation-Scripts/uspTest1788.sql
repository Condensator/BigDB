CREATE PROCEDURE uspTest1788   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1788  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;