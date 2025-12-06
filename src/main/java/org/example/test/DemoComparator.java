package org.example.test;

import java.util.Comparator;
import java.util.List;

import com.restaurant.util.comparator.ComparatorBuilder;

public class DemoComparator {
    public static void main(String[] args) {
        List<Book> books = List.of(
                new Book("111", "Spring in Action", "Craig Walls", 2018),
                new Book("222", "Clean Code", "Robert C. Martin", 2008),
                new Book("333", "Effective Java", "Joshua Bloch", 2017),
                new Book("444", "Java Concurrency", "Brian Goetz", 2005),
                new Book("555", "The Pragmatic Programmer", "Andrew Hunt", 1999)
        );

        Comparator<Book> comparator =
                new ComparatorBuilder<Book>()
                        .by(Book::getAuthor).asc()
                        .then(Book::getYear).desc()
                        .build();

        books.stream().sorted(comparator).forEach(System.out::println);
    }
}
