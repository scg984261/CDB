CREATE TABLE dbo.Customer
(
    Id                 INT IDENTITY (1, 1) CONSTRAINT CustomerIdPrimaryKey                   PRIMARY KEY
	                                       CONSTRAINT CustomerIdNotNull                      NOT NULL,
	CompanyName        NVARCHAR(256)       CONSTRAINT CompanyNameNotNull                     NOT NULL,
	BusinessContact    NVARCHAR(256),
	EmailAddress       NVARCHAR(128),
	ContactNumber      NVARCHAR(32),
	IsActive           BIT                 CONSTRAINT CompanyIsActiveNotNull                 NOT NULL
	                                       CONSTRAINT CompanyIsActiveDefaultValue            DEFAULT 1,
	CreatedDateTime    DATETIME            CONSTRAINT CustomerCreatedDateTimeNotNull         NOT NULL
	                                       CONSTRAINT CustomerCreatedDateTimeDefaultValue    DEFAULT CURRENT_TIMESTAMP,
	LastUpdateDateTime DATETIME            CONSTRAINT CustomerLastUpdateDateTimeNotNull      NOT NULL
	                                       CONSTRAINT CustomerLastUpdateDateTimeDefaultValue DEFAULT CURRENT_TIMESTAMP
);

GO

CREATE TRIGGER dbo.CustomerAfterUpdateTrigger
ON dbo.Customer
AFTER UPDATE
AS
BEGIN;
	DECLARE @CurrentDateTime DATETIME = GETDATE();

	UPDATE cust
	SET LastUpdateDateTime = @CurrentDateTime
	FROM dbo.Customer cust, inserted ins
	WHERE cust.Id = ins.Id;
END;

GO