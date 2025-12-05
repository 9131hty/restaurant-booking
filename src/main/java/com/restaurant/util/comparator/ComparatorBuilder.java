package com.restaurant.util.comparator;

import com.restaurant.util.criterion.Criterion;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public class ComparatorBuilder<T> {

    private final List<Criterion<T, ?>> criteria = new ArrayList<>();

    public <R extends Comparable<? super R>> ComparatorOrderStep<T, R> by(Function<T, R> field) {
        return new ComparatorOrderStep<>(this, field);
    }

    public <R> ComparatorCustomStep<T, R> by(Function<T, R> field, Comparator<R> comparator) {
        return new ComparatorCustomStep<>(this, field, comparator);
    }

    public <R extends Comparable<? super R>> ComparatorOrderStep<T, R> then(Function<T, R> field) {
        return by(field);
    }

    public <R> ComparatorCustomStep<T, R> then(Function<T, R> field, Comparator<R> comparator) {
        return by(field, comparator);
    }

    void addCriterion(Criterion<T, ?> criterion) {
        criteria.add(criterion);
    }

    @SuppressWarnings("unchecked")
    public Comparator<T> build() {
        return criteria.stream()
                .map(criterion ->
                        Comparator.comparing(
                                (Function<T, Object>) criterion.field(),
                                (Comparator<Object>) criterion.comparator()
                        )
                )
                .reduce(Comparator::thenComparing)
                .orElse((a, b) -> 0);
    }

    public static class ComparatorOrderStep<T, R extends Comparable<? super R>> {
        private final ComparatorBuilder<T> builder;
        private final Function<T, R> field;

        ComparatorOrderStep(ComparatorBuilder<T> builder, Function<T, R> field) {
            this.builder = builder;
            this.field = field;
        }

        public ComparatorBuilder<T> asc() {
            builder.addCriterion(new Criterion<>(
                    field,
                    Comparator.nullsFirst(Comparator.naturalOrder())
            ));
            return builder;
        }

        public ComparatorBuilder<T> desc() {
            builder.addCriterion(new Criterion<>(
                    field,
                    Comparator.nullsFirst(Comparator.reverseOrder())
            ));
            return builder;
        }
    }

    public static class ComparatorCustomStep<T, R> {
        private final ComparatorBuilder<T> builder;
        private final Function<T, R> field;
        private final Comparator<R> comparator;

        ComparatorCustomStep(ComparatorBuilder<T> builder,
                             Function<T, R> field,
                             Comparator<R> comparator) {
            this.builder = builder;
            this.field = field;
            this.comparator = comparator;
        }

        public ComparatorBuilder<T> asc() {
            builder.addCriterion(new Criterion<>(
                    field,
                    Comparator.nullsFirst(comparator)
            ));
            return builder;
        }

        public ComparatorBuilder<T> desc() {
            builder.addCriterion(new Criterion<>(
                    field,
                    Comparator.nullsFirst(comparator.reversed())
            ));
            return builder;
        }
    }
}
