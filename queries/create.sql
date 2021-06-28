USE [master];
CREATE DATABASE [CustomerLib_Bezslyozniy] COLLATE Cyrillic_General_CI_AS;
GO

USE [CustomerLib_Bezslyozniy];

GO

CREATE TABLE [dbo].[Customers](
	CustomerID int IDENTITY(1, 1) NOT NULL,
	FirstName nvarchar(50) NULL,
	LastName nvarchar(50) NOT NULL,
	PhoneNumber nvarchar(15) NULL,
	Email nvarchar(320) NULL,
	TotalPurchasesAmount money NULL,
	CONSTRAINT [PK_Customer] PRIMARY KEY ([CustomerID]),
	CONSTRAINT [CK_Customers_LastName] CHECK([LastName] LIKE '[A-Z]%[^0-9]%'),
	CONSTRAINT [CK_Customers_PhoneNumber] CHECK([PhoneNumber] LIKE '+%[^A-Z]%'),
	CONSTRAINT [CK_Customers_Email] CHECK([Email] LIKE '%_@__%.__%'AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', [Email]) = NULL),
	CONSTRAINT [CK_Customers_TotalPurchasesAmount] CHECK([TotalPurchasesAmount] >= 0)
	);

GO
CREATE TABLE [dbo].[Addresses]
 (
	[AddressID] int IDENTITY(1, 1) NOT NULL,
	[CustomerID] int NOT NULL,
	[AddressLine] nvarchar(100) NOT NULL,
	[AddressLine2] nvarchar(100) NULL,
	[AddressType] nvarchar(10) NOT NULL,
	[City] nvarchar(50) NOT NULL,
	[PostalCode] nvarchar(6) NOT NULL,
	[State] nvarchar(20) NOT NULL,
	[Country] nvarchar(15) NOT NULL,
	CONSTRAINT [FK_Addresses_Customer] FOREIGN KEY ([CustomerID]) 
	REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT [CK_Addresses_AddressType] CHECK([AddressType] in ('Billing', 'Shipping')),
	CONSTRAINT [CK_Addresses_City] CHECK([City] LIKE '[A-Z]%[^0-9,@,.,_,\]%'),
	CONSTRAINT [CK_Addresses_PostalCode] CHECK([PostalCode] LIKE '[0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT [CK_Addresses_State] CHECK([State] LIKE '[A-Z]%[^0-9,@,.,_,\]%'),
	CONSTRAINT [CK_Addresses_Country] CHECK([Country] in ('United States', 'Canada')) 
 );

 GO
 CREATE TABLE [dbo].[Notes]
 (
	[NoteID] int IDENTITY(1, 1) NOT NULL,
	[CustomerID] int NOT NULL,
	[Note] nvarchar(500) NOT NULL,
	CONSTRAINT [FK_Notes_CustomerID] FOREIGN KEY ([CustomerID])
	REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE CASCADE ON UPDATE CASCADE
 );