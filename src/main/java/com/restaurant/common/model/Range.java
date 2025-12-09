package com.restaurant.common.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a numeric range with a minimum and maximum value.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Range {
    /** Minimum value of the range. */
    private double min;

    /** Maximum value of the range. */
    private double max;
}

