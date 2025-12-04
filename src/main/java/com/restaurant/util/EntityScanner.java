package com.restaurant.util;

import jakarta.persistence.Entity;
import org.reflections.Reflections;

import java.util.Set;
import java.util.stream.Collectors;

/**
 * Utility class to scan Java packages for JPA @Entity classes.
 * <p>
 * This allows automatic registration of all entities without
 * manually calling addAnnotatedClass() for each class.
 * </p>
 */
public class EntityScanner {

    /**
     * Scans the given package(s) and returns all classes annotated with @Entity.
     *
     * @param packagesToScan Package names to scan, comma separated
     * @return Set of entity classes
     */
    public static Set<Class<?>> scanPackages(String... packagesToScan) {
        Reflections reflections = new Reflections((Object[]) packagesToScan);
        Set<Class<?>> entities = reflections.getTypesAnnotatedWith(Entity.class)
                .stream()
                .collect(Collectors.toSet());
        return entities;
    }
}
