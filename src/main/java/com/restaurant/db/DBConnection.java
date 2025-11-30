package com.restaurant.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Utility class for managing SQLite database connection.
 * This class provides a singleton Connection instance to be shared across the application.
 */
public class DBConnection {

    /** JDBC URL pointing to the SQLite database file */
    private static final String URL = "jdbc:sqlite:db/restaurant.sqlite3";

    /** Singleton Connection instance */
    private static Connection connection = null;

    /**
     * Returns the singleton Connection to the SQLite database.
     * If the connection is not established yet, it will create a new one.
     *
     * @return Connection object
     * @throws DatabaseException if a database access error occurs
     */
    public synchronized Connection getConnection() throws DatabaseException {
        try {
            if (connection == null || connection.isClosed()) {
                connection = DriverManager.getConnection(URL);
                connection.createStatement().execute("PRAGMA foreign_keys = ON");
                System.out.println("Connected to SQLite database.");
            }
            return connection;
        } catch (SQLException e) {
            throw new DatabaseException("Failed to connect to the database.", e);
        }
    }

    /**
     * Closes the singleton Connection if it is open.
     *
     * @throws DatabaseException if closing the connection fails
     */
    public synchronized static void closeConnection() throws DatabaseException {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException e) {
            throw new DatabaseException("Failed to close the database connection.", e);
        }
    }

    public static void main(String[] args) throws DatabaseException {
        DBConnection db = new DBConnection();
        db.getConnection();
    }
}
