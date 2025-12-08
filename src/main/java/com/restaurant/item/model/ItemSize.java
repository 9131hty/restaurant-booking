package com.restaurant.item.model;

import com.restaurant.common.enumeration.MeasurementUnit;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a size option for an item, applicable to both food and beverages.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ItemSize {
    /** Display name of the size (e.g., Small, Medium, Large). */
    private String name;
    /** Price associated with this size. */
    private double price;
    /** Numeric value representing the size amount (e.g., 350). */
    private double volume;
    /** Unit of measurement for the volume (e.g., ml, g, portion). */
    private MeasurementUnit measurementUnit;
}