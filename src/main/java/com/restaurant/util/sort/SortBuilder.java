package com.restaurant.util.sort;

import com.restaurant.util.comparator.ComparatorBuilder;

import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public class SortBuilder<T> {

    private final List<T> list;
    private final ComparatorBuilder<T> comparatorBuilder = new ComparatorBuilder<>();

    public SortBuilder(List<T> list) {
        this.list = list;
    }

    public <R extends Comparable<? super R>> ComparatorBuilder.ComparatorOrderStep<T, R> by(Function<T, R> field) {
        return comparatorBuilder.by(field);
    }

    public <R> ComparatorBuilder.ComparatorCustomStep<T, R> by(
            Function<T, R> field,
            Comparator<R> comparator
    ) {
        return comparatorBuilder.by(field, comparator);
    }

    public <R extends Comparable<? super R>> ComparatorBuilder.ComparatorOrderStep<T, R> then(Function<T, R> field) {
        return comparatorBuilder.then(field);
    }

    public <R> ComparatorBuilder.ComparatorCustomStep<T, R> then(
            Function<T, R> field,
            Comparator<R> comparator
    ) {
        return comparatorBuilder.then(field, comparator);
    }

    public void build() {
        list.sort(comparatorBuilder.build());
    }
}
