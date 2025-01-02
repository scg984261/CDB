CREATE PROCEDURE dbo.InsertService
(
	@Name  VARCHAR(256),
	@Price MONEY
)
AS
BEGIN;
	INSERT INTO dbo.Service
	(Name, Price)
	VALUES
	(@Name, @Price);

	DECLARE @NewlyInsertedServiceId INT = SCOPE_IDENTITY();

	EXEC dbo.SelectServiceById @ServiceId = @NewlyInsertedServiceId;
END;

GO
