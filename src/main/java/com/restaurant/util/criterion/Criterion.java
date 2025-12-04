package com.restaurant.util.criterion;

import lombok.Getter;
import lombok.Setter;

import java.util.function.Function;

public class Criterion<T, R extends Comparable<R>> {
    private final Function<T, R> field;
    @Getter @Setter
    private boolean ascending;

    public Criterion(Function<T, R> field) {
        this.field = field;
        this.ascending = true;
    }

    public Criterion(Function<T, R> field, boolean ascending) {
        this.field = field;
        this.ascending = ascending;
    }

    @SuppressWarnings("unchecked")
    public Function<T, R> getField() {
        return field;
    }
}


