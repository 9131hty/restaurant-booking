package com.restaurant.util.criterion;

import java.util.Comparator;
import java.util.function.Function;

public record Criterion<T, R>(
        Function<T, R> field,
        Comparator<R> comparator
) {}
