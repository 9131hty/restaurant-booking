package com.restaurant.user.model;


import com.restaurant.common.model.Address;
import com.restaurant.common.model.Frequency;
import com.restaurant.common.model.Metric;
import com.restaurant.common.model.Review;


import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;


public class Customer {
    private UUID userId;


    private List<Integer> reservationHistoryIds;
    private List<Integer> upcomingReservationIds;
    private LocalDateTime lastReservationAt;


    private List<Integer> orderHistoryIds;
    private double totalSpent;
    private double averageOrderValue;
    private List<Integer> favoriteDishesIds;
    private String orderChannel; // (dine-in, takeaway, delivery)
    private String paymentMethodsUsed;


    private int loyaltyMemberId;
    private String loyaltyTier; // (Silver, Gold, VIP)
    private int loyaltyPoints;
    private LocalDateTime pointsExpiredAt;
    private LocalDateTime membershipStartAt;


    private List<Integer> reviewsSubmittedIds;
    private double averageRatingGiven;
    private String lastFeedbackAt;


    private List<Integer> deliveryAddressIds;
    private Address defaultDeliveryAddress;
    private String deliveryInstructions;


    private String customerType; // (new, returning, VIP)
    private Frequency visitFrequency;


    private int loginCount;
    private int sessionCount;
    private String lastSeenAt;
    private List<Metric> usageMetrics;


}

