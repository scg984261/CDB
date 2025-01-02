CREATE PROCEDURE dbo.SelectSubscriptionById
(
	@SubscriptionId INT
)
AS
BEGIN;
	SELECT sub.Id AS 'SubscriptionId', sub.CustomerId, sub.ServiceId, cust.CompanyName, cust.BusinessContact, serv.Name, serv.Price
	FROM Subscription sub
	JOIN Customer cust
	ON cust.Id = sub.CustomerId
	JOIN Service serv
	ON serv.Id = sub.ServiceId
	WHERE sub.Id = @SubscriptionId
END;

GO