CREATE PROCEDURE dbo.InsertSubscription
(
	@CustomerId INT,
	@ServiceId  INT
)
AS
BEGIN;
	INSERT INTO dbo.Subscription
	(CustomerId, ServiceId)
	VALUES
	(@CustomerId, @ServiceId);

	EXEC dbo.SelectSubscriptionById @CustomerId=@CustomerId, @ServiceId=@ServiceId;
END;

GO