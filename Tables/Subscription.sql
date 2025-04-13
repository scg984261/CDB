CREATE TABLE dbo.Subscription
(
	 CustomerId      INT                CONSTRAINT SubscriptionCustomerIdForeignKey FOREIGN KEY REFERENCES dbo.Customer(Id)
	                                    CONSTRAINT SubscriptionCustomerIdNotNull    NOT NULL,
     ServiceId       INT                CONSTRAINT SubscriptionServiceIdForeignKey  FOREIGN KEY REFERENCES dbo.Service(Id)
	                                    CONSTRAINT SubscriptionServiceIdNotNull     NOT NULL,
	 CreatedDateTime DATETIME           CONSTRAINT SubscriptionDateTimeDefaultValue DEFAULT CURRENT_TIMESTAMP
	                                    CONSTRAINT SubscriptionDateTimeNotNull      NOT NULL,
										CONSTRAINT SubscriptionPrimaryKey           PRIMARY KEY (CustomerId, ServiceId)
);

GO
