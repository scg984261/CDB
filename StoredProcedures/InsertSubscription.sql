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

	DECLARE @NewlyInsertedSubscriptionId INT = SCOPE_IDENTITY();

	EXEC dbo.SelectSubscriptionById @SubscriptionId = @NewlyInsertedSubscriptionId
END;

GO