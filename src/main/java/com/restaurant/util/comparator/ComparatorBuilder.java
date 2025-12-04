package com.restaurant.util.comparator;

import com.restaurant.util.criterion.Criterion;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public class ComparatorBuilder<T> {
    private final List<Criterion<T, ?>> criteria = new ArrayList<>();

    public <R extends Comparable<R>> ComparatorBuilder<T> by(Function<T, R> field) {
        criteria.add(new Criterion<>(field));
        return this;
    }

    public ComparatorBuilder<T> asc() {
        if (!criteria.isEmpty()) {
            criteria.get(criteria.size() - 1).setAscending(true);
        }
        return this;
    }

    public ComparatorBuilder<T> desc() {
        if (!criteria.isEmpty()) {
            criteria.get(criteria.size() - 1).setAscending(false);
        }
        return this;
    }

    public <R extends Comparable<R>> ComparatorBuilder<T> then(Function<T, R> field) {
        return by(field);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public Comparator<T> build() {
        Comparator<T> comparator = null;
        for (Criterion<T, ?> criterion : criteria) {
            Comparator<T> c = Comparator.comparing((Function) criterion.getField());
            if (!criterion.isAscending()) c = c.reversed();
            comparator = (comparator == null) ? c : comparator.thenComparing(c);
        }
        return comparator;
    }
}


