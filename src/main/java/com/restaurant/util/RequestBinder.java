package com.restaurant.util;

import java.lang.reflect.Field;

import jakarta.servlet.http.HttpServletRequest;

public class RequestBinder {
    public static <T> T bind(HttpServletRequest req, Class<T> clazz) {
        try {
            T obj = clazz.getDeclaredConstructor().newInstance();

            Field[] fields = clazz.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                String name = field.getName();
                String value = req.getParameter(name);

                if (value == null) continue;

                Class<?> type = field.getType();

                if (type == String.class) field.set(obj, value);
                else if (type == String[].class) {
                    String[] values = req.getParameterValues(name);
                    field.set(obj, values);
                }
                else if (type == int.class || type == Integer.class) field.set(obj, Integer.parseInt(value));
                else if (type == boolean.class || type == Boolean.class) {field.set(obj, Boolean.parseBoolean(value));
                }

            }
            return obj;

        } catch (Exception e) {
            throw new RuntimeException("Bind request failed!", e);
        }
    }
}


