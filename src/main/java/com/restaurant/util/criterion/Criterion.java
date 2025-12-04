package com.restaurant.util.criterion;

import lombok.Setter;

import java.util.function.Function;

public class Criterion<T, R extends Comparable<R>> {
    private final Function<T, R> field;
    @Setter
    private boolean ascending;

    public Criterion(Function<T, R> field) {
        this.field = field;
        this.ascending = true; // default
    }

    public Function<T, R> getField() {
        return field;
    }

    public boolean isAscending() {
        return ascending;
    }
}


