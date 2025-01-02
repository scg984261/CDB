CREATE PROCEDURE dbo.SelectServiceById
(
	@ServiceId INT
)
AS
BEGIN;
	SELECT Id, Name, Price, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Service
	WHERE Id = @ServiceId;
END;

GO
