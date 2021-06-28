USE CustomerLib_Bezslyozniy;

GO
EXEC p_customer_insert 'Lenny', 'Summers', '+380989700213', 'lennyyyy@gmail.com', 29.9;
GO
EXEC p_customer_insert 'Arthur', 'Morgan', '+380950213', 'tahiti@boah.com', 29.9;
GO
EXEC p_customer_insert 'Dutch', 'van der Linde', '+38043897013', 'mooooney@plan.com', 29.9;

GO
EXEC p_address_insert 1, 'Summer str.', 'l2', 'Billing', 'Blackwater', '221232', 'California', 'United States';
GO
EXEC p_address_insert 2, 'Tahiti', 'l2', 'Shipping', 'Blackwater', '231232', 'California', 'United States';
GO
EXEC p_address_insert 3, 'Plan-n-Money', null, 'Billing', 'Blackwater', '421232', 'TAHITI', 'United States';

GO
EXEC p_note_insert 1, 'Dont give him to drink.';
GO
EXEC p_note_insert 1, 'You`re alright BOAAAAAAAH!';
GO
EXEC p_note_insert 1, 'I HAVE A GODDAMN PLAN!';

GO
EXEC p_note_update 3, 1, 'WE NEEEED SOME MUNEEEEEEEH!!!!';

GO
EXEC p_note_insert 3, 'LETS GO TO TAHITI BOYS';

GO
EXEC p_note_delete 3, 2;

GO
EXEC p_customer_select 1;