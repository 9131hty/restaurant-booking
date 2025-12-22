package com.restaurant.tag.domain.model;

import com.restaurant.common.enumeration.Status;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * Represents a classification or label that can be attached to various entities,
 * such as menu items, categories, or promotional elements. Tags help enhance
 * searchability, filtering, and content organization within the system.
 *
 * <p>Common examples include "Spicy", "Vegan", "New", or "Recommended".
 * Tags may also be used for analytics and personalization features.</p>
 */
@Data
@NoArgsConstructor
public class Tag {

    /**
     * Unique identifier for the tag.
     * Used for database reference, API communication, and consistent linking.
     */
    private int id;

    /**
     * Display name of the tag shown to users.
     * Examples: "Spicy", "Gluten-Free", "Popular".
     */
    private String name;

    /**
     * URL-friendly version of the tag name.
     * Commonly used in SEO, routing, or generating clean, readable URLs.
     */
    private String slug;

    /**
     * Short explanation of the tag's purpose, describing what it represents
     * or how it should be interpreted by users or system components.
     */
    private String description;

    /**
     * Current state of the tag, indicating whether it is active or inactive.
     * Inactive tags may be hidden from UI while still preserved for history.
     */
    private Status status;

    /**
     * Number of entities currently associated with this tag.
     * Useful for analytics, pruning unused tags, or ranking tag popularity.
     */
    private int usageCount;

    /**
     * Timestamp indicating when the tag record was created.
     */
    private LocalDateTime createdAt;

    /**
     * Timestamp indicating when the tag record was last updated.
     */
    private LocalDateTime updatedAt;
}
