package com.restaurant.config;

import com.restaurant.db.DBCP;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

/**
 * Initializes and shuts down the connection pool when the web application
 * starts or stops.
 */
@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        DBCP.shutdown();
    }
}