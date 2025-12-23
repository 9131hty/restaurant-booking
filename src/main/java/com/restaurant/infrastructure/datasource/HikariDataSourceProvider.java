package com.restaurant.infrastructure.datasource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.io.InputStream;
import java.net.URL;
import java.nio.file.Path;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Manages a singleton HikariCP connection pool for a SQLite database.
 * <p>
 * The pool lifecycle is explicitly controlled through {@link #init()} and
 * {@link #shutdown()} and is intended to be integrated with the web
 * application lifecycle.
 * </p>
 */
public final class HikariDataSourceProvider {

    private static volatile HikariDataSource dataSource;

    private HikariDataSourceProvider() {
    }

    /**
     * Initializes the HikariCP connection pool using configuration loaded
     * from {@code hikaricp/hikaricp.properties}.
     *
     * @throws IllegalStateException if the pool is already initialized
     * @throws RuntimeException      if configuration loading or pool initialization fails
     */
    public static synchronized void init() {
        if (dataSource != null) {
            throw new IllegalStateException("HikariCP is already initialized");
        }

        try {
            Properties props = new Properties();
            InputStream in = HikariDataSourceProvider.class.getClassLoader()
                    .getResourceAsStream("hikaricp/hikaricp.properties");

            if (in == null) {
                throw new RuntimeException("hikaricp.properties not found in classpath");
            }

            props.load(in);

            int maxPool = Integer.parseInt(props.getProperty("pool.max", "10"));
            int minPool = Integer.parseInt(props.getProperty("pool.min", "2"));
            long idleTimeout = Long.parseLong(props.getProperty("pool.idleTimeout", "600000"));
            long maxLifetime = Long.parseLong(props.getProperty("pool.maxLifetime", "1800000"));
            long connectionTimeout = Long.parseLong(props.getProperty("pool.connectionTimeout", "30000"));

            URL dbUrl = HikariDataSourceProvider.class.getClassLoader()
                    .getResource("restaurant.sqlite3");

            if (dbUrl == null) {
                throw new RuntimeException("restaurant.sqlite3 not found in WEB-INF/classes");
            }

            Path dbPath = Path.of(dbUrl.toURI());

            HikariConfig config = new HikariConfig();
            config.setJdbcUrl("jdbc:sqlite:" + dbPath.toAbsolutePath());
            config.setDriverClassName("org.sqlite.JDBC");
            config.setMaximumPoolSize(maxPool);
            config.setMinimumIdle(minPool);
            config.setIdleTimeout(idleTimeout);
            config.setMaxLifetime(maxLifetime);
            config.setConnectionTimeout(connectionTimeout);

            dataSource = new HikariDataSource(config);

        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize HikariCP", e);
        }
    }

    /**
     * Returns the active {@link HikariDataSource}.
     *
     * @return the initialized data source
     * @throws IllegalStateException if the pool has not been initialized
     */
    public static HikariDataSource getDataSource() {
        if (dataSource == null) {
            throw new IllegalStateException("HikariCP has not been initialized");
        }
        return dataSource;
    }

    /**
     * Retrieves a connection from the connection pool.
     *
     * @return an active database connection
     * @throws SQLException          if a connection cannot be obtained
     * @throws IllegalStateException if the pool has not been initialized
     */
    public static Connection getConnection() throws SQLException {
        return getDataSource().getConnection();
    }

    /**
     * Shuts down the connection pool and releases all associated resources.
     * <p>
     * This method is idempotent and may be safely called multiple times.
     * </p>
     */
    public static synchronized void shutdown() {
        if (dataSource != null) {
            dataSource.close();
            dataSource = null;
        }
    }
}
