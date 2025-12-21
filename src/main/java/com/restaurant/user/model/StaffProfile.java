package com.restaurant.user.model;

import com.restaurant.common.enumeration.*;
import com.restaurant.user.enumeration.Role;
import com.restaurant.user.enumeration.SalaryType;
import com.restaurant.user.enumeration.ShiftType;
import com.restaurant.user.enumeration.StaffStatus;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Represents the staff-specific domain profile associated with a core user identity,
 * encapsulating employment status, operational role, permissions, work scheduling,
 * and compensation details required for internal restaurant operations.
 */
@Data
@NoArgsConstructor
public class StaffProfile {

    /** Unique identifier linking this staff profile directly to the corresponding user identity within the system. */
    private UUID userId;

    /** Current employment and operational status of the staff member, reflecting availability and lifecycle state. */
    private StaffStatus status;

    /** Primary role assigned to the staff member, defining their functional responsibilities within the restaurant. */
    private Role role;

    /** Collection of fine-grained permissions granted to the staff member, controlling access to protected system actions. */
    private List<Permission> permissions;

    /** Designated physical or functional area within the restaurant where the staff member primarily operates. */
    private RestaurantArea workArea;

    /** Type of work shift assigned to the staff member, representing predefined scheduling categories. */
    private ShiftType shiftType;

    /** Local start time of the staff member's assigned shift, used for scheduling and attendance tracking. */
    private LocalTime shiftStartTime;

    /** Local end time of the staff member's assigned shift, indicating when the scheduled working period concludes. */
    private LocalTime shiftEndTime;

    /** Set of days of the week on which the staff member is scheduled to work, defining recurring availability. */
    private Set<DayOfWeek> workingDays;

    /** Flag indicating whether the staff member is currently on duty and actively working at the present time. */
    private boolean onDuty;

    /** Timestamp recording the most recent check-in event performed by the staff member for attendance purposes. */
    private LocalDateTime lastCheckInAt;

    /** Timestamp recording the most recent check-out event performed by the staff member at the end of a work period. */
    private LocalDateTime lastCheckOutAt;

    /** Date on which the staff member was officially hired, marking the start of their employment relationship. */
    private LocalDate hiredDate;

    /** Date on which the staff member's employment contract is scheduled to end, if applicable. */
    private LocalDate contractEndDate;

    /** Compensation structure indicating how the staff member is paid, such as hourly or monthly salary. */
    private SalaryType salaryType;

    /** Monetary rate associated with the staff member's compensation structure, stored with precision for financial accuracy. */
    private BigDecimal salaryRate;
}
