package com.restaurant.user.enumeration;

/**
 * Represents different user roles in the restaurant system.
 * Each role has a short code for storage or display purposes.
 */
public enum Role {

    /** Administrator role. */
    ADMIN("AD"),

    /** Restaurant owner role. */
    OWNER("OWN"),

    /** Manager role. */
    MANAGER("MGR"),

    /** Head chef role. */
    HEAD_CHEF("HC"),

    /** General staff role. */
    STAFF("STF"),

    /** Waiter role */
    WAITER("WT"),

    /** Cashier role */
    CASHIER("CAS"),

    /** Regular user/customer role. */
    USER("U");

    /** Short code representing the role. */
    private final String code;

    /**
     * Constructor to assign a code to the role.
     * @param code Short code for the role
     */
    Role(String code) {
        this.code = code;
    }

    /**
     * Returns the short code of the role.
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * Converts a given code to the corresponding Role enum.
     * @param code the short code of the role
     * @return corresponding Role enum
     * @throws IllegalArgumentException if no matching role is found
     */
    public static Role fromCode(String code) {
        for (Role role : values()) {
            if (role.code.equals(code)) return role;
        }
        throw new IllegalArgumentException("Invalid code: " + code);
    }
}
