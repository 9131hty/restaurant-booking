package com.restaurant.item.model;

import com.restaurant.common.model.Tag;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

import com.restaurant.item.enumeration.ItemType;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
    private int id;
    private String sku; // item code

    private String name;
    private String localName;
    private String cuisine;
    private String description;
    private String shortDescription;
    private String category;
    private String subCategory;

    private ItemType type;
    private List<Tag> tags;
    private boolean vegetarian;
    private boolean vegan;
    private boolean glutenFree;
    private boolean spicy;
    private boolean halal;
    private boolean containsAlcohol;

    private List<Ingredient> ingredients;
    private List<String> allergenInfo;

    private int calories;
    private double protein;
    private double fat;
    private double carbs;
    private double sugar;
    private double sodium;

    private double basePrice;
    private double discount;
    private double finalPrice;
    private boolean onSale;
    private String currency;

    private List<ItemSize> sizes;
    private List<Topping> toppings;
    private List<ModifierGroup> modifierGroups; // optional selected modifiers

    private boolean available; // still sale
    private boolean outOfStock; // currently
    private boolean seasonal;
    private int prepTime;
    private String kitchenStation; // grill, barista, fryer...
    private boolean requireCooking;

    private String image;
    private List<String> gallery;

    private double rating;
    private int ratingCount;
    private int viewCount;
    private int reviewCount;
    private int soldCount;
    private boolean isSignature;
    private boolean isFeatured;
    private boolean isTopRated;

    private int menuId;
    private List<Integer> comboIds;
    private List<Integer> relatedItemIds;
    private String brand;

    private boolean allowDelivery;
    private boolean allowPickup;
    private boolean allowDineIn;
    private boolean hidden;
    private boolean ageRestricted; // alcohol

    private String notes;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private String createdBy;
    private String updatedBy;
    private String deletedBy;
}
