-- Question 4
-- You are working with a database table that contains data about music artists. The table is named artist.
-- You want to review all the columns in the table.
-- You write the SQL query below. Add a FROM clause that will retrieve the data from the artist table.
SELECT *
FROM artist;
-- Question 5 You are working with a database table that contains data about music albums. You are only interested in data related to the album with ID number 277. The album IDs are listed in the album_id column from the album table.
-- You write the SQL query below. Add a WHERE clause that will return only data about the album with ID number 277.
SELECT *
FROM album
WHERE album_id = '277';
