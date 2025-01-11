CREATE PROCEDURE dbo.DeactivateCustomer
(
	@CustomerId INT
)
AS
BEGIN;
	UPDATE dbo.Customer
	SET IsActive = 0
	WHERE Id = @CustomerId;

	EXEC dbo.SelectCustomerById @CustomerId = @CustomerId;
END;
