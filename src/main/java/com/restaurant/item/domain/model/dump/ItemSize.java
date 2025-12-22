package com.restaurant.item.domain.model.dump;

import com.restaurant.common.enumeration.MeasurementUnit;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a specific size variant of an item.
 * Each size can have its own pricing, volume, and measurement unit.
 *
 * <p>This class is commonly used for menu items that offer multiple size
 * options such as beverages (Small/Medium/Large), packaged foods with
 * different weight options, or dishes available in various portion sizes.</p>
 */
@Data
@NoArgsConstructor
public class ItemSize {

    /**
     * Unique identifier for the size option.
     * This ID is used to manage the size record across database operations
     * and ensures consistent reference throughout the system.
     */
    private int id;

    /**
     * Display name of the size (e.g., "Small", "Medium", "Large").
     * This value is typically shown to customers in menus and during ordering.
     */
    private String name;

    /**
     * Price associated with this particular size.
     * The price may be higher or lower depending on the size value.
     */
    private double price;

    /**
     * Numerical representation of the size, such as volume or weight.
     * Examples: 350 (ml), 500 (g), 1 (portion).
     */
    private double volume;

    /**
     * Unit of measurement used for the size value, such as milliliters (ml),
     * grams (g), or portion counts. This helps define what the volume represents.
     */
    private MeasurementUnit measurementUnit;
}