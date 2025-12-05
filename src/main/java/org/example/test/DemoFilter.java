package org.example.test;

import com.restaurant.util.filter.Filter;

import java.util.List;

public class DemoFilter {
    public static void main(String[] args) {
        List<Book> books = List.of(
                new Book("111", "Spring in Action", "Craig Walls", 2018),
                new Book("222", "Clean Code", "Robert C. Martin", 2008),
                new Book("333", "Effective Java", "Joshua Bloch", 2017),
                new Book("444", "Java Concurrency", "Brian Goetz", 2005),
                new Book("555", "The Pragmatic Programmer", "Andrew Hunt", 1999)
        );

        List<Book> result = new Filter<>(books)
                        .where(Book::getAuthor).contains("Bloch")
                        .or(Book::getYear).gt(2010)
                        .apply();

        result.forEach(System.out::println);
    }
}
