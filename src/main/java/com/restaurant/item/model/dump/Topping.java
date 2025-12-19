package com.restaurant.item.model.dump;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents an additional topping or add-on that can be included with an item.
 * Toppings allow customers to customize their order by selecting extra ingredients,
 * adjusting portion sizes, or adding flavor enhancements.
 *
 * <p>This class is typically used for items such as pizzas, beverages, desserts,
 * or customizable dishes where multiple topping choices may be available.</p>
 */
@Data
@NoArgsConstructor
public class Topping {

    /**
     * Display name of the topping (e.g., "Cheese", "Boba", "Whipped Cream").
     */
    private String name;

    /**
     * Quantity of the topping to be added. This may represent units,
     * servings, scoops, or any predefined portion size depending on the item.
     */
    private int quantity;

    /**
     * Category or classification of the topping (e.g., "Dairy", "Sauce", "Fruit").
     * Useful for grouping toppings in UI or filtering options.
     */
    private String category;

    /**
     * Description providing additional details about the topping, such as taste,
     * preparation notes, or any relevant customer-facing information.
     */
    private String description;

    /**
     * Additional cost associated with adding this topping.
     * A value of 0 indicates that the topping is free.
     */
    private double price;

    /**
     * Indicates whether the topping is included by default with the item.
     * If true, customers do not need to manually add it unless removing or modifying.
     */
    private boolean defaultIncluded;
}

