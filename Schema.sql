CREATE DATABASE lms_database;
USE lms_database;

CREATE TABLE books (
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(30) NOT NULL,
    book_isbn VARCHAR(20) PRIMARY KEY,
    book_genre VARCHAR(30) NOT NULL,
    book_pubdate DATE NOT NULL,
    numbooks_available INTEGER NOT NULL
);

CREATE TABLE members (
    member_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(30) NOT NULL,
    member_phone VARCHAR(15) NOT NULL,
    member_email VARCHAR(50) NOT NULL,
    membership_type VARCHAR(50) NOT NULL
);

CREATE TABLE loans (
    loan_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    book_id VARCHAR(20) NOT NULL,
    member_id INTEGER NOT NULL,
    loan_date DATE NOT NULL,
    loan_due_date DATE NOT NULL,
    loan_return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_isbn),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);


