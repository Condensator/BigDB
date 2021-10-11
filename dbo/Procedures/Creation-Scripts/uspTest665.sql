CREATE PROCEDURE uspTest665   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Address  
    FROM table665  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND City IS NULL;