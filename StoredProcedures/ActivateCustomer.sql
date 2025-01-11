CREATE PROCEDURE dbo.ActivateCustomer
(
	@CustomerId INT
)
AS
BEGIN;
	UPDATE dbo.Customer
	SET IsActive = 1
	WHERE Id = @CustomerId;

	EXEC dbo.SelectCustomerById @CustomerId = @CustomerId;
END;