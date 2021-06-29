USE [CustomerLib_Bezslyozniy]

GO
CREATE PROCEDURE p_customer_delete
	@id INT
AS
DELETE FROM [dbo].[Customers]
WHERE [Customers].[CustomerID] = @id;