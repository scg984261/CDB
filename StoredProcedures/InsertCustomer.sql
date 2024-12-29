CREATE PROCEDURE dbo.InsertCustomer
(
	@FirstName NVARCHAR(256),
	@LastName  NVARCHAR(256)
)
AS
BEGIN;
	INSERT INTO dbo.Customer
	(FirstName, LastName)
	VALUES
	(@FirstName, @LastName);

	DECLARE @NewlyInsertedCustomerId INT = SCOPE_IDENTITY(); 

	EXEC dbo.SelectCustomerById @CustomerId = @NewlyInsertedCustomerId;
END;

GO
