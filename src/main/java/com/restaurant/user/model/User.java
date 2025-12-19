package com.restaurant.user.model;


import com.restaurant.common.enumeration.Role;
import com.restaurant.common.enumeration.Status;
import com.restaurant.common.model.Address;
import com.restaurant.common.model.Metric;
import com.restaurant.menu.enumeration.UserStatus;


import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;


public class User {
    private UUID id;
    private String username;
    private String email;
    private int phone;


    private String password;
    private LocalDateTime lastLoginAt;
    private int loginAttempts;
    private boolean isLocked;
    private LocalDateTime lockedAt;
    private String lockedReason;
    private LocalDateTime passwordChangedAt;


    private Role role; // (admin, user, manager…)
    private UserStatus status; // (active, inactive, suspended, deleted)
    private boolean isActive;
    private boolean isDeleted;
    private boolean isVerified;
    private boolean isSuspended;
    private boolean suspendedAt;
    private String suspendedReason;


    private LocalDateTime lastActivityAt;
    private String userAgent;


    private String avatarUrl;
    private String bio;


    private boolean emailVerified;
    private boolean phoneVerified;


    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private String createdBy;
    private String updatedBy;
    private String deletedBy;
}

