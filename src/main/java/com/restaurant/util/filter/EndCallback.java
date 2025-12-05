package com.restaurant.util.filter;

@FunctionalInterface
public interface EndCallback<T> {
    Filter<T> call();
}

