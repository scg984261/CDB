CREATE PROCEDURE dbo.SelectAllCustomers
AS
BEGIN;
	SELECT Id, FirstName, LastName, EmailAddress, ContactNumber, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Customer
	ORDER BY CreatedDateTime DESC
END;

GO
