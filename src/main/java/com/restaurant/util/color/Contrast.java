package com.restaurant.util.color;

/**
 * WCAG contrast calculations.
 */
public final class Contrast {

    private Contrast() {
    }

    public static double ratio(ColorValue a, ColorValue b) {
        double l1 = luminance(a);
        double l2 = luminance(b);
        double lighter = Math.max(l1, l2);
        double darker = Math.min(l1, l2);
        return (lighter + 0.05) / (darker + 0.05);
    }

    private static double luminance(ColorValue c) {
        return 0.2126 * linear(c.r())
                + 0.7152 * linear(c.g())
                + 0.0722 * linear(c.b());
    }

    private static double linear(int v) {
        double c = v / 255.0;
        return c <= 0.03928 ? c / 12.92 : Math.pow((c + 0.055) / 1.055, 2.4);
    }
}
