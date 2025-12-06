// package org.example.test;

// import com.restaurant.util.sort.SortBuilder;

// import java.util.ArrayList;
// import java.util.List;

// public class DemoSort {
//     public static void main(String[] args) {
//         List<Book> books = new ArrayList<>(List.of(
//                 new Book("111", "Spring in Action", "Craig Walls", 2018),
//                 new Book("222", "Clean Code", "Robert C. Martin", 2008),
//                 new Book("333", "Effective Java", "Joshua Bloch", 2017),
//                 new Book("444", "Java Concurrency", "Brian Goetz", 2005),
//                 new Book("555", "The Pragmatic Programmer", "Andrew Hunt", 1999)
//         ));

//         new SortBuilder<>(books)
//                 .by(Book::getYear).desc()
//                 .then(Book::getTitle).asc()
//                 .build();

//         books.forEach(System.out::println);
//     }
// }
