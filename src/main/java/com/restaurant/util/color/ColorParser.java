package com.restaurant.util.color;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * Parses color strings into ColorValue.
 */
public final class ColorParser {

    private static final Pattern HEX =
            Pattern.compile("^#([0-9a-fA-F]{6})$");

    private static final Pattern RGB =
            Pattern.compile("^rgb\\s*\\((\\d{1,3}),\\s*(\\d{1,3}),\\s*(\\d{1,3})\\)$");

    private static final Pattern RGBA =
            Pattern.compile("^rgba\\s*\\((\\d{1,3}),\\s*(\\d{1,3}),\\s*(\\d{1,3}),\\s*([01]?\\.\\d+|[01])\\)$");

    private ColorParser() {
    }

    /**
     * Parses a color string into a ColorValue.
     *
     * @param input color string
     * @return parsed ColorValue
     */
    public static ColorValue parse(String input) {
        if (input == null) {
            throw new IllegalArgumentException("Color input cannot be null");
        }

        String value = input.trim();

        Matcher hex = HEX.matcher(value);
        if (hex.matches()) {
            return fromHex(hex.group(1));
        }

        Matcher rgb = RGB.matcher(value);
        if (rgb.matches()) {
            return new ColorValue(
                    Integer.parseInt(rgb.group(1)),
                    Integer.parseInt(rgb.group(2)),
                    Integer.parseInt(rgb.group(3)),
                    1.0
            );
        }

        Matcher rgba = RGBA.matcher(value);
        if (rgba.matches()) {
            return new ColorValue(
                    Integer.parseInt(rgba.group(1)),
                    Integer.parseInt(rgba.group(2)),
                    Integer.parseInt(rgba.group(3)),
                    Double.parseDouble(rgba.group(4))
            );
        }

        throw new IllegalArgumentException("Unsupported color format: " + input);
    }

    private static ColorValue fromHex(String hex) {
        int r = Integer.parseInt(hex.substring(0, 2), 16);
        int g = Integer.parseInt(hex.substring(2, 4), 16);
        int b = Integer.parseInt(hex.substring(4, 6), 16);
        return new ColorValue(r, g, b, 1.0);
    }
}
