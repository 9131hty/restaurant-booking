package com.restaurant.item.domain.model;

import java.time.LocalDateTime;
import java.util.List;

import com.restaurant.common.enumeration.Cuisine;
import com.restaurant.common.enumeration.Currency;
import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.tag.domain.model.Tag;
import com.restaurant.item.domain.enumeration.ItemType;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Represents a menu item in the restaurant system. This class includes
 * complete information about the item's identity, classification, pricing,
 * nutrition details, availability settings, and metadata related to sales
 * and customer interactions.
 *
 * <p>It is used across ordering, menu display, inventory management, and
 * recommendation modules.</p>
 */
@Data
@NoArgsConstructor
public class Item {
    /** Unique identifier for the item. */
    private int id;
    /** Stock Keeping Unit (SKU) code for the item. */
//    private String sku;

    /** Name of the item in the main language. */
    private String name;
    /** Localized name of the item. */
//    private String localName;
    /** Cuisine type. */
    private Cuisine cuisine;
    /** Full description of the item. */
    private String description;
    /** Short description for quick display. */
    private String shortDescription;
    /** Main category (e.g., Food, Beverage, Dessert). */
    private String category;
    /** Sub-category (e.g., Coffee, Noodle, Cake). */
    private String subCategory;

    /** Type of the item as defined in ItemType enum. */
    private ItemType itemType;
    /** Tags associated with the item (e.g., Spicy, Vegan). */
    private List<Tag> tags;
    /** Whether the item is vegetarian. */
//    private boolean vegetarian;
    /** Whether the item is vegan. */
//    private boolean vegan;
    /** Whether the item is gluten-free. */
//    private boolean glutenFree;
    /** Whether the item is spicy. */
//    private boolean spicy;
    /** Whether the item is halal. */
//    private boolean halal;
    /** Whether the item contains alcohol. */
//    private boolean containsAlcohol;

    /** List of ingredients used in the item. */
    private List<Ingredient> ingredients;
    /** List of allergen information (e.g., peanuts, milk). */
//    private List<String> allergenInfo;

    /** Caloric value of the item. */
//    private int calories;
    /** Protein content in grams. */
//    private double protein;
    /** Fat content in grams. */
//    private double fat;
    /** Carbohydrate content in grams. */
//    private double carbs;
    /** Sugar content in grams. */
//    private double sugar;
    /** Sodium content in milligrams. */
//    private double sodium;

    /** Base price of the item before discount. */
    private double basePrice;
    /** Discount percentage applied to the base price. */
    private double discount;
    /** Final price after applying discount. */
//    private double finalPrice;
    /** Whether the item is currently on sale. */
    private boolean onSale;
    /** Currency code (e.g., USD, EUR). */
    private Currency currency;

    /** Available size options for the item (e.g., S, M, L). */
//    private List<ItemSize> sizes;
    /** List of optional toppings for the item. */
//    private List<Topping> toppings;
    /** List of modifier groups for optional selection (e.g., extra cheese). */
//    private List<ModifierGroup> modifierGroups;

    /** Whether the item is currently available for sale. */
    private boolean available;
    /** Whether the item is currently out of stock. */
    private boolean outOfStock;
    /** Whether the item is seasonal. */
    private boolean seasonal;
    /** Preparation time in minutes. */
//    private int prepTime;
    /** Kitchen station responsible for preparing the item (e.g., grill, barista, fryer). */
//    private String kitchenStation;
    /** Whether the item requires cooking before serving. */
//    private boolean requireCooking;

    /** Main image URL of the item. */
    private String image;
    /** List of additional images for the item. */
//    private List<String> gallery;

    /** Average rating of the item. */
    private double rating;
    /** Total number of ratings received. */
    private int ratingCount;
    /** Number of times the item has been viewed. */
    private int viewCount;
    /** Total number of reviews received. */
//    private int reviewCount;
    /** Total number of units sold. */
    private int soldCount;
    /** Whether the item is a signature item. */
    private boolean isSignature;
    /** Whether the item is featured in promotions or menus. */
    private boolean isFeatured;
    /** Whether the item is top-rated among customers. */
    private boolean isTopRated;
    /** Whether the item is specially curated or prepared by the head chef. */
//    private boolean chefSpecial;

    /** ID of the menu this item belongs to. */
    private int menuId;
    /** List of combo IDs that include this item. */
//    private List<Integer> comboIds;
    /** List of related item IDs for recommendations. */
//    private List<Integer> relatedItemIds;
    /** Brand associated with the item (e.g., Starbucks, KFC). */
//    private String brand;

    /** Whether the item is available for delivery. */
//    private boolean allowDelivery;
    /** Whether the item is available for pickup. */
//    private boolean allowPickup;
    /** Whether the item is available for dine-in. */
//    private boolean allowDineIn;
    /** Whether the item is hidden from the menu or UI. */
    private boolean hidden;
    /** Whether the item is age-restricted (e.g., alcoholic beverages). */
//    private boolean ageRestricted;

    /** Additional notes for internal or customer information. */
    private String notes;

    /** Timestamp when the item was created. */
    private LocalDateTime createdAt;
    /** Timestamp when the item was last updated. */
    private LocalDateTime updatedAt;
    /** Timestamp when the item was deleted (soft delete). */
    private LocalDateTime deletedAt;
    /** User who created the item record. */
    private String createdBy;
    /** User who last updated the item record. */
    private String updatedBy;
    /** User who deleted the item record. */
    private String deletedBy;
}
