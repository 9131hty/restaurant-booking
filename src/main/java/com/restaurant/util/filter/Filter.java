package com.restaurant.util.filter;

import java.util.List;
import java.util.function.Function;

public class Filter<T> {

    private final List<T> targetList;
    private final FilterBuilder<T> builder = new FilterBuilder<>();

    public Filter(List<T> targetList) {
        this.targetList = targetList;
    }

    public <R> FieldStep<T, R> where(Function<T, R> field) {
        return new FieldStep<>(builder.where(field), this);
    }

    public <R> FieldStep<T, R> and(Function<T, R> field) {
        return new FieldStep<>(builder.and(field), this);
    }

    public <R> FieldStep<T, R> or(Function<T, R> field) {
        return new FieldStep<>(builder.or(field), this);
    }

    public List<T> apply() {
        return targetList.stream()
                .filter(builder.build())
                .toList();
    }

    public static class FieldStep<T, R> {

        private final FilterBuilder.FieldStep<T, R> delegate;
        private final Filter<T> parent;

        FieldStep(FilterBuilder.FieldStep<T, R> delegate, Filter<T> parent) {
            this.delegate = delegate;
            this.parent = parent;
        }

        public FieldStep<T, R> not() {
            return new FieldStep<>(delegate.not(), parent);
        }

        public Filter<T> eq(R value) { delegate.eq(value); return parent; }
        public Filter<T> ne(R value) { delegate.ne(value); return parent; }
        public Filter<T> isNull() { delegate.isNull(); return parent; }
        public Filter<T> notNull() { delegate.notNull(); return parent; }
        public Filter<T> gt(R value) { delegate.gt(value); return parent; }
        public Filter<T> gte(R value) { delegate.gte(value); return parent; }
        public Filter<T> lt(R value) { delegate.lt(value); return parent; }
        public Filter<T> lte(R value) { delegate.lte(value); return parent; }
        public Filter<T> contains(String value) { delegate.contains(value); return parent; }
        public Filter<T> startsWith(String value) { delegate.startsWith(value); return parent; }
        public Filter<T> endsWith(String value) { delegate.endsWith(value); return parent; }
        public Filter<T> isTrue() { delegate.isTrue(); return parent; }
        public Filter<T> isFalse() { delegate.isFalse(); return parent; }
        public Filter<T> matches(java.util.function.Predicate<R> p) { delegate.matches(p); return parent; }
        public Filter<T> in(List<R> list) { delegate.in(list); return parent; }
        public Filter<T> notIn(List<R> list) { delegate.notIn(list); return parent; }
    }
}
