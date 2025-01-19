CREATE PROCEDURE dbo.UpdateCustomer
(
	@CustomerId      INT,
	@CompanyName     NVARCHAR(256),
	@BusinessContact NVARCHAR(256),
	@EmailAddress    NVARCHAR(128),
	@ContactNumber   NVARCHAR(32),
	@IsActive        BIT
)
AS
BEGIN;
	UPDATE dbo.Customer
	SET CompanyName = @CompanyName,
	BusinessContact = @BusinessContact,
	EmailAddress = @EmailAddress,
	ContactNumber = @ContactNumber,
	IsActive = @IsActive
	WHERE Id = @CustomerId;
END;
