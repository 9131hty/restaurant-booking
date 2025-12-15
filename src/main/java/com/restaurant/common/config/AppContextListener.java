package com.restaurant.common.config;

import com.restaurant.common.hikaricp.HikariCP;
import com.zaxxer.hikari.HikariDataSource;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.flywaydb.core.Flyway;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;

/**
 * Controls application startup and shutdown behavior.
 * <p>
 * Initializes the database connection pool and executes database migrations
 * during application startup, and ensures graceful shutdown of resources
 * during application termination.
 * </p>
 */
@WebListener
public class AppContextListener implements ServletContextListener {

    /**
     * Initializes the application context, sets up the connection pool,
     * and executes Flyway database migrations.
     *
     * @param sce the servlet context initialization event
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            HikariCP.init();

            HikariDataSource dataSource = HikariCP.getDataSource();

            Flyway flyway = Flyway.configure()
                    .dataSource(dataSource)
                    .locations("classpath:db/migration")
                    .baselineOnMigrate(true)
                    .load();

            flyway.migrate();

        } catch (Exception e) {
            System.err.println("Application startup error:");
            e.printStackTrace();
        }
    }

    /**
     * Cleans up application resources and shuts down the connection pool.
     *
     * @param sce the servlet context destruction event
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        HikariCP.shutdown();
    }
}
