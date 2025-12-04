package org.example.test;

import com.restaurant.util.sort.SortBuilder;

import java.util.Arrays;
import java.util.List;

public class DemoSortBuilder {
    public static void main(String[] args) {
        List<Book> books = Arrays.asList(
                new Book("Java Programming", 2020),
                new Book("Algorithms", 2018),
                new Book("Java Programming", 2015)
        );

        new SortBuilder<>(books)
                .by(Book::getTitle).asc()
                .then(Book::getYear).desc()
                .build();
        books.forEach(System.out::println);
    }
}

