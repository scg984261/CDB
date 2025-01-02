CREATE TABLE dbo.Service
(
	Id                 INT IDENTITY(1, 1) CONSTRAINT ServiceIdPrimaryKey                   PRIMARY KEY
	                                      CONSTRAINT ServiceIdNotNull                      NOT NULL,
	Name               NVARCHAR(256)      CONSTRAINT ServiceNameNotNull                    NOT NULL,
	Price              MONEY              CONSTRAINT ServicePriceNotNull                   NOT NULL,
	CreatedDateTime    DATETIME           CONSTRAINT ServiceCreatedDateTimeNotNull         NOT NULL
	                                      CONSTRAINT ServiceCreatedDateTimeDefaultValue    DEFAULT CURRENT_TIMESTAMP,
	LastUpdateDateTime DATETIME           CONSTRAINT ServiceLastUpdateDateTimeNotNull      NOT NULL
	                                      CONSTRAINT ServiceLastUpdateDateTimeDefaultValue DEFAULT CURRENT_TIMESTAMP
);

GO

CREATE TRIGGER dbo.ServiceAfterUpdateTrigger
ON dbo.Service
AFTER UPDATE
AS
BEGIN;
	DECLARE @CurrentDateTime DATETIME = GETDATE();

	UPDATE serv
	SET serv.LastUpdateDateTime = @CurrentDateTime
	FROM dbo.Service serv, inserted ins
	WHERE serv.Id = ins.Id;
END;


