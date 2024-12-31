CREATE PROCEDURE dbo.InsertCustomer
(
	@FirstName     NVARCHAR(256),
	@LastName      NVARCHAR(256),
	@CompanyName   NVARCHAR(256),
	@EmailAddress  NVARCHAR(128),
	@ContactNumber NVARCHAR(32)
)
AS
BEGIN;
	INSERT INTO dbo.Customer
	(FirstName, LastName, CompanyName, EmailAddress, ContactNumber)
	VALUES
	(@FirstName, @LastName, @CompanyName, @EmailAddress, @ContactNumber);

	DECLARE @NewlyInsertedCustomerId INT = SCOPE_IDENTITY(); 

	EXEC dbo.SelectCustomerById @CustomerId = @NewlyInsertedCustomerId;
END;

GO
