package com.restaurant.menu.model;

import com.restaurant.common.enumeration.Currency;
import com.restaurant.common.enumeration.Role;
import com.restaurant.common.enumeration.TableType;
import com.restaurant.common.model.Tag;
import com.restaurant.common.model.Range;
import com.restaurant.menu.enumeration.MenuType;
import com.restaurant.menu.enumeration.WorkflowStatus;

import java.time.LocalDateTime;
import java.util.List;

public class Menu {
    private int id;
    private String code;
    private String title;
    private String subtitle;
    private String description;

    private MenuType menuType; // À la carte, Tasting menu, Buffet, Seasonal, Chef’s Special...
    private String cuisine;
    private String theme; // Valentine, Wine Pairing, Summer Collection...

    private List<Tag> tags; // premium, vegetarian-friendly, luxury, signature...
    private String serviceStyle; // Fine dining, tasting experience, set menu, private dining

    private List<Integer> itemIds;
    private List<Integer> recommendedItemIds;
    private List<Integer> featuredItemIds;
    private List<Integer> chefSpecialItemIds;

    private boolean isLimitedEdition;
    private LocalDateTime availableFrom;
    private LocalDateTime availableUntil;

    private String chefInCharge;
    private String culinaryConcept;

    private Currency currency;

    private List<String> dietaryLabels; // vegan, gluten-free, halal...
    private List<String> allergenWarnings; // nuts, dairy, shellfish...
    private Range calorieRange;

    private String featuredImage;
    private List<String> gallery;
    private String chefMessage;

    private boolean highlightedForSeason;
    private List<Tag> promotionTags;

    private List<String> branchAvailability;

    private String status; // active / deprecated / hidden...
    private List<TableType> tableTypeAvailability; // VIP room, outdoor terrace...
    private int preparationLeadTime;

    private String approvedByChef;
    private String approvedByManager;
    private String version;

    private List<Role> visibleToRoles; // staff, chef, manager...
    private List<Role> editableByRoles;
    private WorkflowStatus workflowStatus; // draft / pending approval / published...

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private String createdBy;
    private String updatedBy;
    private String deletedBy;
}
