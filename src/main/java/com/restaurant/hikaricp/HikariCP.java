package com.restaurant.hikaricp;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import lombok.Getter;

import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Provides a connection pool for SQLite using HikariCP.
 * Configuration values are loaded from an external hikaricp.properties file.
 */
public class HikariCP {

    @Getter
    private static HikariDataSource dataSource;

    static {
        try {
            Properties props = new Properties();
            InputStream in = HikariCP.class.getClassLoader()
                    .getResourceAsStream("config/hikaricp.properties");

            if (in == null) {
                throw new RuntimeException("hikaricp.properties not found in resources/config/");
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