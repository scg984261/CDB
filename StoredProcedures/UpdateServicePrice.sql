CREATE PROCEDURE dbo.UpdateServicePrice
(
	@ServiceId INT,
	@NewPrice  MONEY
)
AS
BEGIN;
	UPDATE dbo.Service
	SET Price = @NewPrice
	WHERE Id = @ServiceId;

	EXEC dbo.SelectServiceById @ServiceId = @ServiceId;
END;

GO
