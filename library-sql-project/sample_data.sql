
-- sample_data.sql: Sample Data for Library Management

INSERT INTO Authors (Name) VALUES ('J.K. Rowling'), ('George Orwell'), ('Jane Austen');

INSERT INTO Books (Title, AuthorID, Genre, YearPublished, CopiesAvailable) VALUES
('Harry Potter and the Philosopher's Stone', 1, 'Fantasy', 1997, 5),
('1984', 2, 'Dystopian', 1949, 3),
('Pride and Prejudice', 3, 'Classic', 1813, 4);

INSERT INTO Members (FullName, Email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

INSERT INTO IssuedBooks (BookID, MemberID, IssueDate) VALUES
(1, 1, '2025-08-01'),
(2, 2, '2025-08-03');
