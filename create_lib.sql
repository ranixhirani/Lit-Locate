CREATE TABLE libraries (
    library_id INT PRIMARY KEY,
    library_name VARCHAR(255),
    pincode VARCHAR(10)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(255),
    author_name VARCHAR(255),
    library_id INT,
    FOREIGN KEY (library_id) REFERENCES libraries(library_id)
);

INSERT INTO libraries (library_id, library_name, pincode) VALUES
    (1, 'City Library', '500001'),  -- Pin code for Hyderabad, India
    (2, 'County Library', '500002'),
    (3, 'Central Library', '500003'),
    (4, 'Town Library', '500004'),
    (5, 'Village Library', '500005');

INSERT INTO books (book_id, book_title, author_name, library_id) VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1),
    (2, 'To Kill a Mockingbird', 'Harper Lee', 1),
    (3, '1984', 'George Orwell', 2),
    (4, 'Pride and Prejudice', 'Jane Austen', 3),
    (5, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 4),
    (6, 'The Catcher in the Rye', 'J.D. Salinger', 5),
    (7, 'The Hobbit', 'J.R.R. Tolkien', 5);
