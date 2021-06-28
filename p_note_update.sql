USE CustomerLib_Bezslyozniy;
GO

CREATE PROCEDURE p_note_update
	@customer_id int,
	@note_id int,
	@note nvarchar(500)
AS
UPDATE Notes
SET	dbo.Notes.Note = @note
WHERE	Notes.CustomerID = @customer_id AND
		Notes.NoteID = @note_id;

GO
EXEC p_note_update 22, 1, 'changed_note';