package com.restaurant.db;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Provides a connection pool for SQLite using HikariCP.
 * Configuration values are loaded from an external dbcp.properties file.
 */
public class DBCP {

    private static HikariDataSource dataSource;

    static {
        try {
            Properties props = new Properties();
            InputStream in = DBCP.class.getClassLoader()
                    .getResourceAsStream("db/dbcp.properties");

            if (in == null) {
                throw new RuntimeException("dbcp.properties not found in resources/db/");
            }

            props.load(in);

            String relativePath = props.getProperty("db.path");
            int maxPool = Integer.parseInt(props.getProperty("pool.max", "10"));
            int minPool = Integer.parseInt(props.getProperty("pool.min", "2"));
            long idleTimeout = Long.parseLong(props.getProperty("pool.idleTimeout", "600000"));
            long maxLifetime = Long.parseLong(props.getProperty("pool.maxLifetime", "1800000"));
            long connectionTimeout = Long.parseLong(props.getProperty("pool.connectionTimeout", "30000"));

            String dbAbsolutePath = new File(relativePath).getAbsolutePath();

            HikariConfig config = new HikariConfig();
            config.setJdbcUrl("jdbc:sqlite:" + dbAbsolutePath);

            config.setMaximumPoolSize(maxPool);
            config.setMinimumIdle(minPool);
            config.setIdleTimeout(idleTimeout);
            config.setMaxLifetime(maxLifetime);
            config.setConnectionTimeout(connectionTimeout);

            dataSource = new HikariDataSource(config);

        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize DBCP", e);
        }
    }

    /**
     * Returns a connection from the pool.
     *
     * @return a valid SQLite database connection
     * @throws SQLException if a connection cannot be retrieved
     */
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    /**
     * Shuts down the connection pool and releases all allocated resources.
     */
    public static void shutdown() {
        if (dataSource != null) {
            dataSource.close();
        }
    }
}