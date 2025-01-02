CREATE PROCEDURE dbo.SelectCustomerById
(
	@CustomerId INT
)
AS
BEGIN;
	SELECT Id, CompanyName, BusinessContact, EmailAddress, ContactNumber, IsActive, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Customer
	WHERE Id = @CustomerId;
END;

GO
