USE [CustomerLib_Bezslyozniy]
SELECT Customers.CustomerID, Customers.LastName,
	 Notes.Note, TotalPurchasesAmount,
	 Addresses.AddressLine, AddressType,
	 Addresses.City, Addresses.PostalCode,
	 Addresses.[State], Addresses.Country
FROM [dbo].[Customers], [dbo].[Addresses], [dbo].[Notes]
WHERE Addresses.CustomerID = Customers.CustomerID AND Notes.CustomerID = Customers.CustomerID
ORDER BY Customers.CustomerID;
