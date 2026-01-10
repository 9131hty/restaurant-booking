package com.restaurant.util.color;

/**
 * Generates perceptual inverse colors safe for UI usage.
 */
public final class AccessibleColor {

    private static final double MIN_L = 0.15;
    private static final double MAX_L = 0.85;
    private static final double TARGET_CONTRAST = 4.5;

    private AccessibleColor() {
    }

    public static ColorValue invert(ColorValue base) {
        double[] hsl = ColorSpace.rgbToHsl(base.r(), base.g(), base.b());
        double invertedL = clamp(1.0 - hsl[2]);
        ColorValue candidate = ColorSpace.hslToRgb(
                hsl[0], hsl[1], invertedL, base.a()
        );

        if (Contrast.ratio(base, candidate) >= TARGET_CONTRAST) {
            return candidate;
        }

        return adjustUntilReadable(base, hsl, invertedL);
    }

    private static ColorValue adjustUntilReadable(
            ColorValue base,
            double[] hsl,
            double startL
    ) {
        double step = 0.01;
        double l = startL;

        boolean darken = Contrast.ratio(
                base,
                ColorSpace.hslToRgb(hsl[0], hsl[1], MIN_L, base.a())
        ) >
                Contrast.ratio(
                        base,
                        ColorSpace.hslToRgb(hsl[0], hsl[1], MAX_L, base.a())
                );

        while (l >= MIN_L && l <= MAX_L) {
            ColorValue c = ColorSpace.hslToRgb(hsl[0], hsl[1], l, base.a());
            if (Contrast.ratio(base, c) >= TARGET_CONTRAST) {
                return c;
            }
            l += darken ? -step : step;
        }

        return ColorSpace.hslToRgb(
                hsl[0],
                hsl[1],
                darken ? MIN_L : MAX_L,
                base.a()
        );
    }

    private static double clamp(double v) {
        return Math.max(MIN_L, Math.min(MAX_L, v));
    }
}
