
-- queries.sql: Useful SQL Queries

-- List all books with author names
SELECT b.Title, a.Name AS Author, b.Genre, b.YearPublished
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- Count of books by genre
SELECT Genre, COUNT(*) AS TotalBooks FROM Books GROUP BY Genre;

-- List all currently issued books with member names
SELECT b.Title, m.FullName, i.IssueDate, i.ReturnDate
FROM IssuedBooks i
JOIN Books b ON i.BookID = b.BookID
JOIN Members m ON i.MemberID = m.MemberID;

-- Members who have not returned books yet
SELECT m.FullName, b.Title
FROM IssuedBooks i
JOIN Members m ON i.MemberID = m.MemberID
JOIN Books b ON i.BookID = b.BookID
WHERE i.ReturnDate IS NULL;
