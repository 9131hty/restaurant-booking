package com.restaurant.item.model.dump;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a single selectable option within a modifier group.
 * A modifier option typically allows customers to customize their item
 * by adding ingredients, choosing variations, or selecting enhancements.
 *
 * <p>Each option may carry an additional cost, which is applied on top of
 * the base price of the item when selected.</p>
 */
@Data
@NoArgsConstructor
public class ModifierOption {

    /**
     * Unique identifier for the modifier option.
     * This allows the system to accurately track, update, and store
     * individual options even if their names or prices change.
     */
    private int id;

    /**
     * Display name of the modifier option.
     * Examples: "Large", "Extra Cheese", "No Ice", "Caramel Syrup".
     */
    private String name;

    /**
     * Additional price applied when this option is selected.
     * If the value is 0, the option is free.
     */
    private double price;
}
