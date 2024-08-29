SELECT * FROM books 
					JOIN book_has_formats ON books.id = book_has_formats.book_id
                    JOIN formats ON formats.id = book_has_formats.format_id
                    where format LIKE "%paper%";
                    
SELECT title, formats.format FROM book_has_formats 
					JOIN books ON books.id = book_has_formats.book_id
                    JOIN formats ON formats.id = book_has_formats.format_id
                    where format LIKE "%paper%"