CREATE PROCEDURE dbo.SelectSubscriptionsForCustomer
(
	@CustomerId INT
)
AS
BEGIN;
	SELECT sub.Id AS 'SubscriptionId', cust.CompanyName, cust.BusinessContact, serv.Name AS 'ServiceName', serv.Price, sub.CreatedDateTime
	FROM dbo.Subscription sub
	JOIN dbo.Customer cust
	ON cust.Id = sub.CustomerId
	JOIN dbo.Service serv
	ON serv.Id = sub.ServiceId
	WHERE sub.CustomerId = @CustomerId;
END;

GO
