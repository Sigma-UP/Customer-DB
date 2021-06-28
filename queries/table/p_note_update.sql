USE CustomerLib_Bezslyozniy;
GO

CREATE PROCEDURE p_note_update
	@customer_id int,
	@note_id int,
	@note nvarchar(500)
AS
UPDATE [dbo].[Notes]
SET	[dbo].[Notes].[Note] = @note
WHERE	[dbo].[Notes].[CustomerID] = @customer_id AND
		[dbo].[Notes].[NoteID] = @note_id;

