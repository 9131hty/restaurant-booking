package com.restaurant.item.model.dump;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Represents a group of modifier options that can be applied to an item.
 * A modifier group is commonly used in restaurant menu systems to define
 * optional or mandatory selections — for example, choosing a drink size,
 * selecting extra toppings, or customizing ingredients.
 *
 * <p>The group can enforce minimum and maximum selection rules, ensuring that
 * customers choose within the allowed range (e.g., “Pick at least 1 sauce” or
 * “Choose up to 3 toppings”).</p>
 */
@Data
@NoArgsConstructor
public class ModifierGroup {

    /**
     * Unique identifier for the modifier group.
     * This ID is used to reference the group in database operations,
     * API communication, and item-configuration mappings.
     */
    private int id;

    /**
     * Display name of the modifier group, shown to customers.
     * Example: "Choose Your Size", "Select Toppings", "Extra Options".
     */
    private String groupName;

    /**
     * Minimum number of modifier options that the customer must select.
     * A value of 0 indicates the group is optional.
     */
    private int min;

    /**
     * Maximum number of modifier options that the customer is allowed to select.
     * This helps prevent excessive or invalid selections.
     */
    private int max;

    /**
     * List of available modifier options within this group. Each option
     * typically represents an add-on, customization, or variant, possibly
     * with its own pricing.
     */
    private List<ModifierOption> options;
}
