package com.restaurant.db;

/**
 * Custom exception to handle database-related errors.
 */
public class DatabaseException extends Exception {

    /**
     * Constructs a new DatabaseException with the specified detail message.
     *
     * @param message the detail message
     */
    public DatabaseException(String message) {
        super(message);
    }

    /**
     * Constructs a new DatabaseException with the specified cause.
     *
     * @param cause the underlying cause of the exception
     */
    public DatabaseException(Throwable cause) {
        super(cause);
    }

    /**
     * Constructs a new DatabaseException with the specified detail message and cause.
     *
     * @param message the detail message
     * @param cause the underlying cause of the exception
     */
    public DatabaseException(String message, Throwable cause) {
        super(message, cause);
    }
}
