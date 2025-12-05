package com.restaurant.util.filter;

import java.util.function.Predicate;

public record Condition<T>(Predicate<T> predicate) {}