package com.restaurant.menu.model;

import com.restaurant.common.enumeration.*;
import com.restaurant.tag.domain.model.Tag;
import com.restaurant.menu.enumeration.MenuType;
import com.restaurant.menu.enumeration.ServiceStyle;
import com.restaurant.menu.enumeration.Theme;
import com.restaurant.menu.enumeration.WorkflowStatus;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Represents a restaurant menu containing curated items, metadata,
 * operational settings, availability rules, and workflow attributes.
 * This model is designed specifically for high-end restaurants that
 * manage multiple cuisines, seasonal collections, limited editions,
 * and role-based content visibility.
 */
@Data
@NoArgsConstructor
public class Menu {
    /** Unique numeric identifier for the menu. */
    private int id;
    /** Internal or public-facing code used for referencing the menu. */
//    private String code;
    /** Main title displayed on digital or printed menu presentations. */
    private String title;
    /** Secondary title used for stylistic or descriptive enhancement. */
    private String subtitle;
    /** General description summarizing the menu's purpose or concept. */
    private String description;

    /** Classification of the menu, such as À la carte, Tasting menu, Buffet, Seasonal, or Chef’s Special. */
    private MenuType menuType;
    /** Primary cuisine associated with the menu. Can represent a dominant culinary style even if items vary. */
    private Cuisine cuisine;
    /** Theme applied to the menu, such as Valentine, Wine Pairing, Summer Collection, or Holiday Feast. */
    private Theme theme;

    /** Tags used to categorize the menu, such as premium, vegetarian-friendly, luxury, or signature. */
    private List<Tag> tags;
    /** Describes the service style, e.g., fine dining, tasting experience, set menu, or private dining. */
    private ServiceStyle serviceStyle;

    /** List of item IDs included in the menu, referencing the Item domain model. */
    private List<Integer> itemIds;
    /** IDs of items recommended for highlighting or upselling. */
//    private List<Integer> recommendedItemIds;
    /** IDs of featured items intended to appear prominently in marketing or presentation. */
//    private List<Integer> featuredItemIds;
    /** IDs of items specially curated or prepared by the head chef. */
//    private List<Integer> chefSpecialItemIds;

    /** Indicates whether the menu is a limited-edition offering. */
    private boolean isLimitedEdition;
    /** Date and time from which the menu becomes available. */
    private LocalDateTime availableFrom;
    /** Date and time until which the menu remains available. */
    private LocalDateTime availableUntil;

    /** Name of the chef responsible for designing or overseeing the menu. */
    private String chefInCharge;
    /** A conceptual explanation of the culinary direction, philosophy, or experience behind the menu. */
//    private String culinaryConcept;
    /** Labels indicating dietary suitability, such as vegan, gluten-free, or halal. */
//    private List<String> dietaryLabels;
    /** Allergen warnings relevant to items within the menu, such as nuts, dairy, or shellfish. */
//    private List<String> allergenWarnings;
    /** Calorie range describing the approximate nutritional scope of the menu. */
//    private Range calorieRange;

    /** Main image used for featuring or representing the menu visually. */
    private String featuredImage;
    /** List of image URLs or paths forming a visual gallery for the menu. */
//    private List<String> gallery;
    /** Personalized message or culinary introduction written by the chef. */
    private String chefMessage;

    /** Indicates whether the menu is specially highlighted for seasonal promotions. */
//    private boolean highlightedForSeason;
    /** Tags related to promotions, events, or campaigns associated with the menu. */
//    private List<Tag> promotionTags;

    /** Branches or restaurant locations where the menu is available. */
//    private List<String> branchAvailability;

    /** Current status of the menu, such as active, deprecated, or hidden. */
    private Status status;
    /** Types of tables or dining areas where the menu is applicable, such as VIP rooms or outdoor terraces. */
//    private List<TableType> tableTypeAvailability;
    /** Expected preparation lead time (in minutes) for items within the menu. */
//    private int preparationLeadTime;

    /** Person or chef who approved the final composition of the menu. */
    private String approvedByChef;
    /** Manager who reviewed and approved the menu for operational release. */
    private String approvedByManager;
    /** Version identifier used for version control across menu iterations. */
    private String version;

    /** Roles that are allowed to view the menu within administrative systems. */
//    private List<Role> visibleToRoles;
    /** Roles that are authorized to edit the menu's content or metadata. */
//    private List<Role> editableByRoles;
    /** Workflow status representing the menu's lifecycle, such as draft, pending approval, or published. */
    private WorkflowStatus workflowStatus;

    /** Timestamp of when the menu was originally created. */
    private LocalDateTime createdAt;
    /** Timestamp for the most recent update to the menu. */
    private LocalDateTime updatedAt;
    /** Timestamp marking when the menu was logically deleted, if applicable. */
    private LocalDateTime deletedAt;
    /** Identifier of the user who created the menu. */
    private String createdBy;
    /** Identifier of the user who last updated the menu. */
    private String updatedBy;
    /** Identifier of the user who deleted the menu. */
    private String deletedBy;
}