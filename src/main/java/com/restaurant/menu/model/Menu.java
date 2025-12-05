package com.restaurant.menu.model;

import com.restaurant.common.enumeration.Currency;
import com.restaurant.common.model.Range;
import com.restaurant.common.model.Tag;

import java.time.LocalDateTime;
import java.util.List;

public class Menu {
    private int id;
    private String code;
    private String name;
    private String displayName;
    private String description;
    private String subtitle;
    private String menuType; // À la carte, Tasting menu, Buffet, Seasonal, Chef’s Special...
    private String cuisineType;
    private String theme; // Valentine, Wine Pairing, Summer Collection...

    private String category; // breakfast, lunch, dinner...
    private String subCategory; // main, dessert..
    private List<Tag> tags; // premium, vegetarian-friendly, luxury, signature...
    private String serviceStyle; // Fine dining, tasting experience, set menu, private dining

    private List<Integer> itemIds;
    private List<Integer> recommendedItemIds;
    private List<Integer> featuredItemIds;
    private List<Integer> chefSpecialItemIds;

    private String cuisineOrigin; // Italian Riviera, Japanese Kaiseki...

    private LocalDateTime availableFrom;
    private LocalDateTime availableUntil;
    private String dailyAvailableHours;
    private String daysOfWeekAvailable;
    private String specialHours;
    private String season;
    private LocalDateTime eventDate;
    private boolean isLimitedEdition;

    private String chefInCharge;
    private String culinaryConcept;
    private String platingStyle; // presentation concept
    private String presentationNotes;

    private Currency currency;

    private List<String> dietaryLabels; // vegan, gluten-free, halal...
    private List<String> allergenWarnings; // nuts, dairy, shellfish...
    private Range calorieRange;
    private int healthLevel;

    private String featuredImage;
    private List<String> gallery;
    private String chefMessage;

    private String brandTone; // high-end, artistic, luxury
    private boolean highlightedForSeason;
    private List<Tag> promotionTags;
    private int signatureScore;

    private String status; // active / deprecated / hidden...
    private List<String> tableTypeAvailability; // VIP room, outdoor terrace...

    private List<String> customerSegments; // VIP, membership gold...
    private List<String> targetAudience; // couple, business, tourists...

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private String createdBy;
    private String updatedBy;
    private String deletedBy;

    private String approvedByChef;
    private String approvedByManager;
    private String version;

    private String visibleToRoles; // staff, chef, manager...
    private String editableByRoles;
    private String workflowStatus; // draft / pending approval / published...

    private String menuPhilosophy;
    private String culinaryJourneyDescription;
    private String specialInstructions;
    private String historicalOriginNotes;
    private String luxuryLevel; // standard / premium / haute cuisine...
}
