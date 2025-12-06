// package org.example.test;

// import com.restaurant.util.filter.FilterBuilder;

// import java.util.List;
// import java.util.function.Predicate;

// public class DemoFilterBuilder {
//     public static void main(String[] args) {
//         List<Book> books = List.of(
//                 new Book("111", "Spring in Action", "Craig Walls", 2018),
//                 new Book("222", "Clean Code", "Robert C. Martin", 2008),
//                 new Book("333", "Effective Java", "Joshua Bloch", 2017),
//                 new Book("444", "Java Concurrency", "Brian Goetz", 2005),
//                 new Book("555", "The Pragmatic Programmer", "Andrew Hunt", 1999)
//         );

//         Predicate<Book> pred =
//                 new FilterBuilder<Book>()
//                         .where(Book::getAuthor).contains("Martin")
//                         .and(Book::getYear).gte(2005)
//                         .or(Book::getTitle).startsWith("The")
//                         .build();

//         books.stream().filter(pred).forEach(System.out::println);
//     }
// }
