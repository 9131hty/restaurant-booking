package com.restaurant.user.model;

import com.restaurant.user.enumeration.UserStatus;
import com.restaurant.user.enumeration.UserType;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.UUID;

/**
 * Represents the core user identity within the restaurant system, serving as the central entity
 * for authentication, authorization, lifecycle management, and linkage to domain-specific profiles
 * such as customers and staff members.
 */
@Data
@NoArgsConstructor
public class User {

    /** Unique system-wide identifier that represents the immutable identity of the user across all related domains. */
    private UUID id;

    /** Unique username used for authentication and human-readable identification within the system. */
    private String username;

    /** Primary email address associated with the user, used for login, communication, and verification purposes. */
    private String email;

    /** Contact phone number stored in string format to preserve formatting, country codes, and leading zeros. */
    private String phone;

    /** Securely hashed representation of the user's password, never storing or exposing the raw credential value. */
    private String passwordHash;

    /** Timestamp of the most recent successful authentication event performed by the user. */
    private LocalDateTime lastLoginAt;

    /** Counter tracking consecutive failed authentication attempts to support brute-force protection mechanisms. */
    private int loginAttempts;

    /** Flag indicating whether the user account is currently locked due to security or policy enforcement rules. */
    private boolean isLocked;

    /** Timestamp marking when the user account was locked, providing traceability for security audits. */
    private LocalDateTime lockedAt;

    /** Human-readable reason explaining why the user account was locked, primarily for administrative visibility. */
    private String lockedReason;

    /** Timestamp indicating the most recent moment when the user's authentication credential was changed. */
    private LocalDateTime passwordChangedAt;

    /** Defines the high-level classification of the user within the system, such as customer or staff member. */
    private UserType userType;

    /** Represents the current lifecycle state of the user account, governing access and system behavior. */
    private UserStatus status;

    /** Indicates whether the user's identity has been fully verified according to business verification rules. */
    private boolean isVerified;

    /** Timestamp recording when the user account entered a suspended state, if applicable. */
    private LocalDateTime suspendedAt;

    /** Descriptive explanation detailing the business or policy reason for suspending the user account. */
    private String suspendedReason;

    /** Timestamp of the most recent detected activity performed by the user within the system. */
    private LocalDateTime lastActivityAt;

    /** User agent string captured during user interactions to assist with security monitoring and diagnostics. */
    private String userAgent;

    /** URL pointing to the user's profile avatar image, typically used for display purposes in user interfaces. */
    private String avatarUrl;

    /** Free-form textual description allowing the user to provide personal or contextual profile information. */
    private String bio;

    /** Flag indicating whether the user's email address has been successfully verified through a validation process. */
    private boolean emailVerified;

    /** Flag indicating whether the user's phone number has been verified through an approved verification mechanism. */
    private boolean phoneVerified;

    /** Timestamp representing when the user entity was initially created within the system. */
    private LocalDateTime createdAt;

    /** Timestamp capturing the most recent update applied to the user entity for auditing and synchronization. */
    private LocalDateTime updatedAt;

    /** Timestamp marking when the user account was logically deleted, if soft deletion is applied. */
    private LocalDateTime deletedAt;

    /** Identifier of the actor or system component responsible for creating this user record. */
    private String createdBy;

    /** Identifier of the actor or system component responsible for the most recent update to this user record. */
    private String updatedBy;

    /** Identifier of the actor or system component responsible for deleting this user record, if applicable. */
    private String deletedBy;
}
