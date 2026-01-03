package com.restaurant.reservation.enumeration;

import com.restaurant.common.enumeration.CodeEnum;

/**
 * Represents different types of tables in the restaurant.
 * Each table type has a short code for storage or display purposes.
 */
public enum TableType implements CodeEnum {

    /** VIP table. */
    VIP("VIP"),

    /** Regular table. */
    REGULAR("REG"),

    /** Private room table. */
    PRIVATE_ROOM("PR"),

    /** Shared room table. */
    SHARED_ROOM("SR"),

    /** Outdoor table. */
    OUTDOOR("OUT");

    /** Short code representing the table type. */
    private final String code;

    /**
     * Constructor to assign a code to the table type.
     * @param code Short code for the table type
     */
    TableType(String code) {
        this.code = code;
    }

    /**
     * Returns the short code of the table type.
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * Converts a given code to the corresponding TableType enum.
     * @param code the short code of the table type
     * @return corresponding TableType enum
     * @throws IllegalArgumentException if no matching table type is found
     */
    public static TableType fromCode(String code) {
        for (TableType type : values()) {
            if (type.code.equals(code)) return type;
        }
        throw new IllegalArgumentException("Invalid code: " + code);
    }
}
