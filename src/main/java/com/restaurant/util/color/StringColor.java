package com.restaurant.util.color;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/**
 * Generates deterministic colors from arbitrary strings.
 */
public final class StringColor {

    private static final double MIN_SATURATION = 0.45;
    private static final double MAX_SATURATION = 0.75;

    private static final double MIN_LIGHTNESS = 0.35;
    private static final double MAX_LIGHTNESS = 0.65;

    private StringColor() {
    }

    /**
     * Generates a color from any input string.
     * The same input will always produce the same color.
     *
     * @param input source string
     * @return generated ColorValue
     */
    public static ColorValue fromString(String input) {
        if (input == null || input.isEmpty()) {
            throw new IllegalArgumentException("Input string cannot be null or empty");
        }

        byte[] hash = sha256(input);

        double hue = unsignedByte(hash[0]) * 360.0 / 255.0;
        double saturation = lerp(
                MIN_SATURATION,
                MAX_SATURATION,
                unsignedByte(hash[1]) / 255.0
        );
        double lightness = lerp(
                MIN_LIGHTNESS,
                MAX_LIGHTNESS,
                unsignedByte(hash[2]) / 255.0
        );

        return ColorSpace.hslToRgb(hue, saturation, lightness, 1.0);
    }

    private static byte[] sha256(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            return md.digest(input.getBytes(StandardCharsets.UTF_8));
        } catch (Exception e) {
            throw new IllegalStateException("Hash algorithm not available", e);
        }
    }

    private static int unsignedByte(byte b) {
        return b & 0xFF;
    }

    private static double lerp(double min, double max, double t) {
        return min + (max - min) * t;
    }
}
