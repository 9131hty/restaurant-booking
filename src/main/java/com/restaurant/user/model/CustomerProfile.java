package com.restaurant.user.model;

import com.restaurant.common.enumeration.LoyaltyTier;
import com.restaurant.common.enumeration.OrderChannel;
import com.restaurant.common.model.dump.Address;
import com.restaurant.user.enumeration.CustomerType;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

/**
 * Represents the customer-specific domain profile associated with a core user identity,
 * capturing behavioral summaries, preferences, loyalty information, and segmentation data
 * relevant to restaurant operations and customer experience management.
 */
@Data
@NoArgsConstructor
public class CustomerProfile {

    /** Unique identifier linking this customer profile to its corresponding user identity within the system. */
    private UUID userId;

    /** Historical list of reservation identifiers associated with the customer, typically managed in a separate persistence structure. */
//    private List<Integer> reservationHistoryIds;

    /** List of upcoming reservation identifiers scheduled for the customer, usually resolved through reservation services. */
//    private List<Integer> upcomingReservationIds;

    /** Timestamp of the most recent reservation made by the customer, used for engagement and recency analysis. */
    private LocalDateTime lastReservationAt;

    /** Historical list of order identifiers placed by the customer, generally stored and queried from an order history table. */
//    private List<Integer> orderHistoryIds;

    /** Aggregated monetary value representing the total amount spent by the customer across all completed orders. */
    private BigDecimal totalSpent;

    /** Calculated average monetary value per order, derived from historical purchasing behavior. */
    private BigDecimal averageOrderValue;

    /** List of dish identifiers frequently ordered or marked as favorites by the customer for personalization purposes. */
    private List<Integer> favoriteDishesIds;

    /** Preferred ordering channel indicating how the customer most commonly places orders, such as dine-in or delivery. */
    private OrderChannel orderChannel;

    /** Collection of payment methods historically used by the customer, typically maintained as a separate relational structure. */
//    private Set<PaymentMethod> paymentMethodsUsed;

    /** Internal loyalty membership identifier assigned to the customer for reward tracking and program integration. */
    private int loyaltyMemberId;

    /** Loyalty tier classification reflecting the customer's engagement level within the loyalty program. */
    private LoyaltyTier loyaltyTier;

    /** Current number of loyalty points accumulated by the customer and available for redemption. */
    private int loyaltyPoints;

    /** Timestamp indicating when the customer's current loyalty points balance is scheduled to expire. */
    private LocalDateTime pointsExpiredAt;

    /** Timestamp marking the start date of the customer's participation in the loyalty membership program. */
    private LocalDateTime membershipStartAt;

    /** Historical list of review identifiers submitted by the customer, typically stored outside of the core profile entity. */
//    private List<Integer> reviewsSubmittedIds;

    /** Average rating value given by the customer across submitted reviews, used as a behavioral sentiment indicator. */
    private double averageRatingGiven;

    /** Timestamp representing the most recent feedback or review submission made by the customer. */
    private LocalDateTime lastFeedbackAt;

    /** Collection of delivery address identifiers associated with the customer, usually managed in a dedicated address table. */
//    private List<Integer> deliveryAddressIds;

    /** Default delivery address object used when the customer places delivery orders without selecting an alternative address. */
    private Address defaultDeliveryAddress;

    /** Additional instructions provided by the customer to assist delivery personnel during order fulfillment. */
    private String deliveryInstructions;

    /** High-level customer segmentation classification based on engagement and purchasing behavior. */
    private CustomerType customerType;

    /** Frequency model describing how often the customer visits or places orders within a defined time period. */
//    private Frequency visitFrequency;

    /** Total number of successful login events performed by the customer, primarily used for analytics and monitoring. */
//    private int loginCount;

    /** Total number of user sessions initiated by the customer, typically tracked for analytical purposes. */
//    private int sessionCount;

    /** Timestamp indicating the last moment the customer was seen or interacted with the system. */
    private LocalDateTime lastSeenAt;

    /** Collection of usage metrics capturing detailed behavioral analytics, usually stored in a separate analytical model. */
//    private List<Metric> usageMetrics;
}
