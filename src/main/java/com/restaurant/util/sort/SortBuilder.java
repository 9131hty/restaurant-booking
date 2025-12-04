package com.restaurant.util.sort;

import com.restaurant.util.criterion.Criterion;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public class SortBuilder<T> {
    private final List<Criterion<T, ?>> criteria = new ArrayList<>();
    private final List<T> targetList;

    public SortBuilder(List<T> targetList) {
        this.targetList = targetList;
    }

    public <R extends Comparable<R>> SortBuilder<T> by(Function<T, R> field) {
        Criterion<T, R> criterion = new Criterion<>(field);
        criteria.add(criterion);
        return this;
    }

    public SortBuilder<T> asc() {
        if (!criteria.isEmpty()) {
            criteria.get(criteria.size() - 1).setAscending(true);
        }
        return this;
    }

    public SortBuilder<T> desc() {
        if (!criteria.isEmpty()) {
            criteria.get(criteria.size() - 1).setAscending(false);
        }
        return this;
    }

    public <R extends Comparable<R>> SortBuilder<T> then(Function<T, R> field) {
        return by(field);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public void build() {
        Comparator<T> comparator = null;
        for (Criterion<T, ?> criterion : criteria) {
            Comparator<T> c = Comparator.comparing((Function) criterion.getField());
            if (!criterion.isAscending()) c = c.reversed();
            comparator = (comparator == null) ? c : comparator.thenComparing(c);
        }
        if (comparator != null) {
            targetList.sort(comparator);
        }
    }
}

