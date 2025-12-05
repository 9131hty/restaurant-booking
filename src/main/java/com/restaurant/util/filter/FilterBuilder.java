package com.restaurant.util.filter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public class FilterBuilder<T> {

    private Predicate<T> combinedPredicate = t -> true;

    public <R> FieldStep<T, R> where(Function<T, R> field) {
        return new FieldStep<>(this, field, LogicalOp.AND, false);
    }

    public <R> FieldStep<T, R> and(Function<T, R> field) {
        return new FieldStep<>(this, field, LogicalOp.AND, false);
    }

    public <R> FieldStep<T, R> or(Function<T, R> field) {
        return new FieldStep<>(this, field, LogicalOp.OR, false);
    }

    public FilterBuilder<T> not(Predicate<T> predicate) {
        combinedPredicate = combinedPredicate.and(predicate.negate());
        return this;
    }

    void appendPredicate(Predicate<T> pred, LogicalOp op) {
        combinedPredicate =
                (op == LogicalOp.AND)
                        ? combinedPredicate.and(pred)
                        : combinedPredicate.or(pred);
    }

    public Predicate<T> build() {
        return combinedPredicate;
    }

    public static class FieldStep<T, R> {

        private final FilterBuilder<T> parent;
        private final Function<T, R> field;
        private final LogicalOp op;
        private final boolean negate;

        FieldStep(FilterBuilder<T> parent,
                  Function<T, R> field,
                  LogicalOp op,
                  boolean negate) {
            this.parent = parent;
            this.field = field;
            this.op = op;
            this.negate = negate;
        }

        public FieldStep<T, R> not() {
            return new FieldStep<>(parent, field, op, true);
        }

        private void accept(Predicate<R> predicate) {
            Predicate<R> finalPred = negate ? predicate.negate() : predicate;

            parent.appendPredicate(
                    t -> finalPred.test(field.apply(t)),
                    op
            );
        }

        public FilterBuilder<T> eq(R value) {
            accept(r -> r != null && r.equals(value));
            return parent;
        }

        public FilterBuilder<T> ne(R value) {
            accept(r -> r == null || !r.equals(value));
            return parent;
        }

        public FilterBuilder<T> isNull() {
            accept(r -> r == null);
            return parent;
        }

        public FilterBuilder<T> notNull() {
            accept(r -> r != null);
            return parent;
        }

        @SuppressWarnings("unchecked")
        public FilterBuilder<T> gt(R value) {
            accept(r -> r != null && ((Comparable<R>) r).compareTo(value) > 0);
            return parent;
        }

        @SuppressWarnings("unchecked")
        public FilterBuilder<T> gte(R value) {
            accept(r -> r != null && ((Comparable<R>) r).compareTo(value) >= 0);
            return parent;
        }

        @SuppressWarnings("unchecked")
        public FilterBuilder<T> lt(R value) {
            accept(r -> r != null && ((Comparable<R>) r).compareTo(value) < 0);
            return parent;
        }

        @SuppressWarnings("unchecked")
        public FilterBuilder<T> lte(R value) {
            accept(r -> r != null && ((Comparable<R>) r).compareTo(value) <= 0);
            return parent;
        }

        public FilterBuilder<T> contains(String str) {
            accept(r -> r != null && r.toString().contains(str));
            return parent;
        }

        public FilterBuilder<T> startsWith(String str) {
            accept(r -> r != null && r.toString().startsWith(str));
            return parent;
        }

        public FilterBuilder<T> endsWith(String str) {
            accept(r -> r != null && r.toString().endsWith(str));
            return parent;
        }

        public FilterBuilder<T> isTrue() {
            accept(r -> Boolean.TRUE.equals(r));
            return parent;
        }

        public FilterBuilder<T> isFalse() {
            accept(r -> Boolean.FALSE.equals(r));
            return parent;
        }

        public FilterBuilder<T> matches(Predicate<R> customPredicate) {
            accept(customPredicate);
            return parent;
        }

        public FilterBuilder<T> in(List<R> list) {
            accept(list::contains);
            return parent;
        }

        public FilterBuilder<T> notIn(List<R> list) {
            accept(r -> !list.contains(r));
            return parent;
        }
    }

    private enum LogicalOp { AND, OR }
}
