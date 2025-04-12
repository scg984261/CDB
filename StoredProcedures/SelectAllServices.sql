CREATE PROCEDURE dbo.SelectAllServices
AS
BEGIN;
	SELECT Id, Name, Price, IsRecurring, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Service
	ORDER BY CreatedDateTime DESC;
END;

GO