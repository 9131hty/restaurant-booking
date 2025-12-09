package com.restaurant.common.enumeration;

/**
 * Represents different types of cuisines.
 * Each cuisine has a unique short code that can be used for storage or display.
 */
public enum Cuisine {
    /** Italian cuisine. */
    ITALY("IT"),

    /** French cuisine. */
    FRANCE("FR"),

    /** International / mixed cuisine. */
    INTERNATIONAL("INTER");

    /** Short code representing the cuisine (e.g., IT for Italy). */
    private final String code;

    /**
     * Constructor to assign a code to the cuisine.
     * @param code Short code for the cuisine
     */
    Cuisine(String code) {
        this.code = code;
    }

    /**
     * Returns the short code of the cuisine.
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * Converts a given code to the corresponding Cuisine enum.
     * @param code the short code of the cuisine
     * @return corresponding Cuisine enum
     * @throws IllegalArgumentException if no matching cuisine is found
     */
    public static Cuisine fromCode(String code) {
        for (Cuisine c : values()) {
            if (c.code.equals(code)) return c;
        }
        throw new IllegalArgumentException("Invalid code: " + code);
    }
}
