USE [CustomerLib_Bezslyozniy]
GO
CREATE PROCEDURE p_address_delete
	@id INT
AS
DELETE FROM [dbo].[Addresses]
WHERE [Addresses].[CustomerID] = @id;
