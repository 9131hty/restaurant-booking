package com.restaurant.util.color;

/**
 * Converts ColorValue into UI and CSS color formats.
 */
public final class ColorFormatter {

    private ColorFormatter() {
    }

    public static String toHex(ColorValue c) {
        return String.format("#%02X%02X%02X", c.r(), c.g(), c.b());
    }

    public static String toRgb(ColorValue c) {
        return String.format("rgb(%d, %d, %d)", c.r(), c.g(), c.b());
    }

    public static String toRgba(ColorValue c) {
        return String.format(
                "rgba(%d, %d, %d, %.3f)",
                c.r(), c.g(), c.b(), c.a()
        );
    }
}
