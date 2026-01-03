package com.restaurant.common.config;

import com.restaurant.infrastructure.datasource.HikariDataSourceProvider;
import com.restaurant.infrastructure.mybatis.SqlSessionFactoryProvider;
import com.zaxxer.hikari.HikariDataSource;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.flywaydb.core.Flyway;

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

            String dbPath = sce.getServletContext()
                    .getRealPath("/WEB-INF/db/restaurant.sqlite3");
            HikariDataSourceProvider.init(dbPath);

            HikariDataSource dataSource = HikariDataSourceProvider.getDataSource();
            SqlSessionFactoryProvider.init(dataSource);

            Flyway flyway = Flyway.configure()
                    .dataSource(dataSource)
                    .locations("classpath:db/migration")
                    .baselineOnMigrate(true)
                    .load();

            flyway.repair();
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
        HikariDataSourceProvider.shutdown();
    }
}