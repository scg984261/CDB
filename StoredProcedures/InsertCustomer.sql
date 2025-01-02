CREATE PROCEDURE dbo.InsertCustomer
(
	@CompanyName     NVARCHAR(256),
	@BusinessContact NVARCHAR(256),
	@EmailAddress    NVARCHAR(128),
	@ContactNumber   NVARCHAR(32)
)
AS
BEGIN;
	INSERT INTO dbo.Customer
	(CompanyName, BusinessContact, EmailAddress, ContactNumber)
	VALUES
	(@CompanyName, @BusinessContact, @EmailAddress, @ContactNumber);

	DECLARE @NewlyInsertedCustomerId INT = SCOPE_IDENTITY(); 

	EXEC dbo.SelectCustomerById @CustomerId = @NewlyInsertedCustomerId;
END;

GO
