package com.restaurant.common.time;

import java.time.Clock;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;

/**
 * System implementation of {@link TimeProvider} backed by {@link Clock}.
 * <p>
 * This implementation delegates all time retrieval to the provided
 * {@link Clock}, making it suitable for both production and test
 * environments.
 */
public class SystemTimeProvider implements TimeProvider {

    private final Clock clock;

    /**
     * Creates a {@code SystemTimeProvider} using the given clock.
     *
     * @param clock the clock used as the time source
     * @throws NullPointerException if {@code clock} is {@code null}
     */
    public SystemTimeProvider(Clock clock) {
        this.clock = clock;
    }

    /**
     * Creates a {@code SystemTimeProvider} using the system default clock.
     */
    public SystemTimeProvider() {
        this(Clock.systemDefaultZone());
    }

    @Override
    public Instant nowInstant() {
        return Instant.now(clock);
    }

    @Override
    public LocalDateTime now() {
        return LocalDateTime.now(clock);
    }

    @Override
    public ZoneId zone() {
        return clock.getZone();
    }
}
