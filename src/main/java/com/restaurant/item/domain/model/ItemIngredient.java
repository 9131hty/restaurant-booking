package com.restaurant.item.domain.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents the association between an Item and an Ingredient,
 * describing how much of a specific ingredient is used in the item.
 * This class is typically mapped to a junction table in the database
 * to model a many-to-many relationship with additional attributes.
 */
@Data
@NoArgsConstructor
public class ItemIngredient {

    /**
     * Identifier of the Ingredient referenced by the item.
     * This is part of the composite primary key in the relational mapping.
     */
    private int ingredientId;

    /**
     * Amount of the ingredient required for this item.
     * The unit of measurement may follow the item's override unit
     * or fall back to the Ingredient's base measurement unit.
     */
    private double quantity;

    /**
     * Optional unit override used specifically for this item.
     * If null, the ingredient's base measurement unit is assumed.
     * Useful when items consume the same ingredient using different units.
     */
    private String unit;

    /**
     * Cost per unit of the ingredient at the time this record was created.
     * This value is stored as a historical snapshot to avoid discrepancies
     * when ingredient prices change over time.
     */
    private Double costSnapshot;
}
