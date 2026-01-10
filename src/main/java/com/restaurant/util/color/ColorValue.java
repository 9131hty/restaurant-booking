package com.restaurant.util.color;

/**
 * Immutable RGBA color model used as the canonical representation.
 */
public final class ColorValue {

    private final int r;
    private final int g;
    private final int b;
    private final double a;

    public ColorValue(int r, int g, int b, double a) {
        validate(r, g, b, a);
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }

    public int r() {
        return r;
    }

    public int g() {
        return g;
    }

    public int b() {
        return b;
    }

    public double a() {
        return a;
    }

    private static void validate(int r, int g, int b, double a) {
        if (r < 0 || r > 255 || g < 0 || g > 255 || b < 0 || b > 255) {
            throw new IllegalArgumentException("RGB values must be between 0 and 255");
        }
        if (a < 0.0 || a > 1.0) {
            throw new IllegalArgumentException("Alpha must be between 0.0 and 1.0");
        }
    }
}
