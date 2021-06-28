USE CustomerLib_Bezslyozniy;
GO

CREATE PROCEDURE p_customer_update
	@customer_id int,
	@first_name nvarchar(50),
	@last_name nvarchar(50),
	@phone_number nvarchar(15) NULL,
	@email nvarchar(320) NULL,
	@total_purchases_amount money NULL
AS
UPDATE [dbo].[Customers]
SET	[dbo].[Customers].[FirstName] = @first_name,
    [dbo].[Customers].[LastName] =  @last_name,
    [dbo].[Customers].[PhoneNumber] = @phone_number,
    [dbo].[Customers].[Email] = @email,
    [dbo].[Customers].[TotalPurchasesAmount] = @total_purchases_amount
WHERE	dbo.Customers.CustomerID = @customer_id;

Go
EXEC p_customer_update 1, 'Alex', 'LlL', '+380989700213', 'lennyyyy@gmail.com', 29.9;
