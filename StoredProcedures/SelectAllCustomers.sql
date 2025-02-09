CREATE PROCEDURE dbo.SelectAllCustomers
AS
BEGIN;
	SELECT Id, SageRef, CompanyName, BusinessContact, EmailAddress, ContactNumber, IsActive, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Customer
	ORDER BY CreatedDateTime DESC
END;

GO
