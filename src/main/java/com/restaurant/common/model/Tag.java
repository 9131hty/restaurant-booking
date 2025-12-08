package com.restaurant.common.model;

import com.restaurant.common.enumeration.Status;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * Represents a tag used to categorize or label entities within the system.
 * A tag typically provides metadata for search, filtering, and content organization.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Tag {
    /** Unique identifier for the tag. */
    private int id;
    /** Display name of the tag. */
    private String name;
    /** URL-friendly version of the tag name. */
    private String slug;
    /** Brief description of the tag's purpose. */
    private String description;
    /** Current status indicating whether the tag is active or inactive. */
    private Status status;
    /** Number of entities associated with this tag. */
    private int usageCount;
    /** Timestamp when the tag was created. */
    private LocalDateTime createdAt;
    /** Timestamp when the tag was last updated. */
    private LocalDateTime updatedAt;
}