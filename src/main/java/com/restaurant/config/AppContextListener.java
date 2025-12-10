package com.restaurant.config;

import com.restaurant.hikaricp.HikariCP;
import com.zaxxer.hikari.HikariDataSource;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.flywaydb.core.Flyway;

/**
 * Initializes and shuts down the connection pool when the web application
 * starts or stops.
 */
@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        HikariDataSource dataSource = HikariCP.getDataSource();

        Flyway flyway = Flyway.configure()
                .dataSource(dataSource)
                .locations("classpath:db/migration")
                .baselineOnMigrate(true)
                .load();

        flyway.migrate();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        HikariCP.shutdown();
    }
}