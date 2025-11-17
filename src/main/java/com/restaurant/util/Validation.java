package com.restaurant.util;

import jakarta.validation.*;
import java.util.*;

public class Validation {
    private static final ValidatorFactory factory = jakarta.validation.Validation.buildDefaultValidatorFactory();
    private static final Validator validator = factory.getValidator();

    /**
     * Validate any object dynamically
     * @param obj: any POJO with Bean Validation annotations
     * @return Map<String, String> where key = field name, value = error message
     */
    public static Map<String, String> validate(Object obj) {
        Map<String, String> errors = new LinkedHashMap<>();

        if (obj == null) {
            errors.put("Object", "The object to validate is null");
            return errors;
        }

        Set<ConstraintViolation<Object>> violations = validator.validate(obj);

        for (ConstraintViolation<Object> violation : violations) {
            String property = violation.getPropertyPath().toString();
            String message = violation.getMessage();
            errors.put(property, message);
        }

        return errors;
    }

    /**
     * Check if object is valid
     * @param obj: any POJO
     * @return true if valid, false otherwise
     */
    public static boolean isValid(Object obj) {
        return validate(obj).isEmpty();
    }

    /**
     * Print all validation errors to console
     * @param obj: any POJO
     */
    public static void printErrors(Object obj) {
        Map<String, String> errors = validate(obj);
        if (errors.isEmpty()) {
            System.out.println("Object is valid!");
        } else {
            errors.forEach((field, msg) -> System.out.println(field + ": " + msg));
        }
    }
}
