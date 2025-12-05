package org.example.test;

import lombok.Getter;

@Getter
public class Book {
    private String isbn;
    private String title;
    private String author;
    private int year;

    public Book() {}

    public Book(String isbn, String title, String author, int year) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.year = year;
    }
}
