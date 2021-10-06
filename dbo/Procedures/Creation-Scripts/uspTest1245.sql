CREATE PROCEDURE uspTest1245   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table1245  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;