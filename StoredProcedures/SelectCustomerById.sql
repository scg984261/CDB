CREATE PROCEDURE dbo.SelectCustomerById
(
	@CustomerId INT
)
AS
BEGIN;
	SELECT Id, FirstName, LastName, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Customer
	WHERE Id = @CustomerId;
END;

GO
