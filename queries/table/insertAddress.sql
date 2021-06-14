USE CustomerLib_Bezslyozniy;

INSERT INTO [dbo].[Addresses](CustomerID, AddressLine, AddressLine2, 
AddressType, City, PostalCode, [State], Country)
VALUES
(1, 'Some str.', null, 'Billing', 'Vivec', '000234', 'FIRST STATE', 'United States'),
(2, 'Some2 str.', null, 'Shipping', 'Balmora', '000235', 'SECOND STATE', 'Canada'),
(3, 'Some3 str.', null, 'Billing', 'Sheogorath', '000236', 'THIRD STATE', 'United States')