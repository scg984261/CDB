CREATE PROCEDURE dbo.SelectSubscriptionById
(
	@CustomerId INT,
	@ServiceId  INT
)
AS
BEGIN;
	SELECT cust.Id AS 'CustomerId', cust.CompanyName, cust.BusinessContact, cust.EmailAddress, cust.ContactNumber, serv.Id AS 'ServiceId', serv.Name AS 'ServiceName', serv.Price, serv.IsRecurring
	FROM Subscription sub
	JOIN Customer cust
	ON cust.Id = sub.CustomerId
	JOIN Service serv
	ON serv.Id = sub.ServiceId
	WHERE cust.Id = @CustomerId
	AND serv.Id = @ServiceId;
END;

GO