DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS book;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE review (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    book_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES user (id),
    FOREIGN KEY (book_id) REFERENCES book (id)
)

CREATE TABLE book (
    id INTERGER PRIMARY KEY AUTOINCREMENT
    isbn TEXT NOT NULL,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    year INTEGER NOT NULL
)