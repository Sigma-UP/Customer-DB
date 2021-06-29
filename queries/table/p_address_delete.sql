USE [CustomerLib_Bezslyozniy]
GO
CREATE PROCEDURE p_address_delete
	@AddressId INT,
	@CustomerId INT
AS
DELETE FROM [dbo].[Addresses]
WHERE [Addresses].[CustomerID] = @CustomerId AND
	[Addresses].[AddressID] = @AddressId;
	Go
	EXEC p_address_delete 1, 1;