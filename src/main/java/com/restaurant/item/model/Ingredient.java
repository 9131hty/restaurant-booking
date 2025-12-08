package com.restaurant.item.model;

import com.restaurant.common.enumeration.MeasurementUnit;
import com.restaurant.common.enumeration.Status;
import com.restaurant.item.enumeration.IngredientCategory;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a raw material used to produce food or beverages.
 */
@Data
@NoArgsConstructor
public class Ingredient {
    /** Unique identifier of the ingredient. */
    private int id;
    /** Ingredient name (e.g., Sugar, Milk, Beef). */
    private String name;
    /** Base unit used for inventory tracking (e.g., g, ml, piece). */
    private MeasurementUnit measurementUnit;
    /** Cost per base unit, used for calculating item cost. */
    private double costPerUnit;
    /** Current stock quantity in the inventory. */
    private int stockQuantity;
    /** Minimum quantity before triggering low-stock alerts. */
    private int minStockQuantity;
    /** Ingredient category (e.g., Dairy, Meat, Vegetable, Syrup). */
    private IngredientCategory category;
    /** Indicates whether the ingredient contains allergens. */
    private boolean allergen;
    /** Notes or additional information about the ingredient. */
    private String description;
    /** Whether this ingredient is active or not. */
    private Status status;
}