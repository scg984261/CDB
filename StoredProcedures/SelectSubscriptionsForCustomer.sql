CREATE PROCEDURE dbo.SelectSubscriptionsForCustomer
(
	@CustomerId INT
)
AS
BEGIN;
	SELECT cust.Id AS 'CustomerId', cust.CompanyName, cust.BusinessContact, serv.Id AS 'ServiceId', serv.Name AS 'ServiceName', serv.Price, serv.IsRecurring, sub.CreatedDateTime
	FROM dbo.Subscription sub
	JOIN dbo.Customer cust
	ON cust.Id = sub.CustomerId
	JOIN dbo.Service serv
	ON serv.Id = sub.ServiceId
	WHERE sub.CustomerId = @CustomerId;
END;

GO
