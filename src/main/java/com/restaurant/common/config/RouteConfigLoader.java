package com.restaurant.common.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.restaurant.common.model.route.RouteConfig;
import jakarta.servlet.ServletContext;

import java.io.InputStream;

public final class RouteConfigLoader {

    private static final String ATTR_NAME = "ROUTE_CONFIG";

    private RouteConfigLoader() {}

    public static void load(ServletContext context) {
        try (InputStream is = context
                .getResourceAsStream("/WEB-INF/config/routes.json")) {

            ObjectMapper mapper = new ObjectMapper();
            mapper.registerModule(new JavaTimeModule());

            RouteConfig config = mapper.readValue(is, RouteConfig.class);
            context.setAttribute(ATTR_NAME, config);

        } catch (Exception e) {
            throw new IllegalStateException("Cannot load routes.json", e);
        }
    }

    public static RouteConfig get(ServletContext context) {
        return (RouteConfig) context.getAttribute(ATTR_NAME);
    }
}
