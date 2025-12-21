package com.restaurant.user.enumeration;

public enum StaffStatus {

    WORKING("WORKING", "Currently performing assigned duties"),
    PROBATION("PROBATION", "In probation period"),
    ON_LEAVE("ON_LEAVE", "On approved leave"),
    SUSPENDED("SUSPENDED", "Suspended from work duties"),
    TRANSFERRED("TRANSFERRED", "Transferred to another unit"),
    RESIGNED("RESIGNED", "Resigned from employment"),
    TERMINATED("TERMINATED", "Employment contract terminated"),
    RETIRED("RETIRED", "Retired from employment");

    private final String code;
    private final String description;

    StaffStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public String getCode() {
        return code;
    }

    public String getDescription() {
        return description;
    }

    public static StaffStatus fromCode(String code) {
        for (StaffStatus status : values()) {
            if (status.code.equals(code)) {
                return status;
            }
        }
        throw new IllegalArgumentException("Invalid StaffStatus code: " + code);
    }
}
