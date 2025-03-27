CREATE PROCEDURE dbo.InsertService
(
	@Name  VARCHAR(256),
	@Price MONEY,
	@IsRecurring BIT
)
AS
BEGIN;
	INSERT INTO dbo.Service
	(Name, Price, IsRecurring)
	VALUES
	(@Name, @Price, @IsRecurring);

	DECLARE @NewlyInsertedServiceId INT = SCOPE_IDENTITY();

	EXEC dbo.SelectServiceById @ServiceId = @NewlyInsertedServiceId;
END;

GO
