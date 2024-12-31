CREATE TABLE dbo.Customer
(
    Id                 INT IDENTITY (1, 1) CONSTRAINT CustomerIdPrimaryKey                   PRIMARY KEY
	                                       CONSTRAINT CustomerIdNotNull                      NOT NULL,
	FirstName          NVARCHAR(256)       CONSTRAINT CustomerFirstNameNotNull               NOT NULL,
	LastName           NVARCHAR(256)       CONSTRAINT CustomerLastNameNotNull                NOT NULL,
	CompanyName        NVARCHAR(256)       CONSTRAINT CompanyNameNotNull                     NOT NULL,
	EmailAddress       NVARCHAR(128)       CONSTRAINT CompanyEmailAddressNotNull             NOT NULL,
	ContactNumber      NVARCHAR(32)        CONSTRAINT CompanyContactNumberNotNull            NOT NULL,
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