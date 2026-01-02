package com.restaurant.common.time;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;

/**
 * Abstraction for providing the current time.
 * <p>
 * This interface decouples time retrieval from system time,
 * allowing deterministic testing and consistent time handling
 * across the application.
 */
public interface TimeProvider {

    /**
     * Returns the current instant in time.
     *
     * @return the current {@link Instant}
     */
    Instant nowInstant();

    /**
     * Returns the current local date-time using the provider's time source.
     *
     * @return the current {@link LocalDateTime}
     */
    LocalDateTime now();

    /**
     * Returns the time zone used by this provider.
     *
     * @return the {@link ZoneId} of the time source
     */
    ZoneId zone();
}
