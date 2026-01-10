package com.restaurant.util.color;

/**
 * Color space conversion utilities.
 */
public final class ColorSpace {

    private ColorSpace() {
    }

    public static double[] rgbToHsl(int r, int g, int b) {
        double rd = r / 255.0;
        double gd = g / 255.0;
        double bd = b / 255.0;

        double max = Math.max(rd, Math.max(gd, bd));
        double min = Math.min(rd, Math.min(gd, bd));
        double l = (max + min) / 2.0;

        double h;
        double s;

        if (max == min) {
            h = 0.0;
            s = 0.0;
        } else {
            double d = max - min;
            s = l > 0.5 ? d / (2.0 - max - min) : d / (max + min);

            if (max == rd) {
                h = (gd - bd) / d + (gd < bd ? 6.0 : 0.0);
            } else if (max == gd) {
                h = (bd - rd) / d + 2.0;
            } else {
                h = (rd - gd) / d + 4.0;
            }

            h *= 60.0;
        }

        return new double[]{h, s, l};
    }

    public static ColorValue hslToRgb(double h, double s, double l, double a) {
        double c = (1.0 - Math.abs(2.0 * l - 1.0)) * s;
        double x = c * (1.0 - Math.abs((h / 60.0) % 2 - 1.0));
        double m = l - c / 2.0;

        double r1;
        double g1;
        double b1;

        if (h < 60) {
            r1 = c; g1 = x; b1 = 0;
        } else if (h < 120) {
            r1 = x; g1 = c; b1 = 0;
        } else if (h < 180) {
            r1 = 0; g1 = c; b1 = x;
        } else if (h < 240) {
            r1 = 0; g1 = x; b1 = c;
        } else if (h < 300) {
            r1 = x; g1 = 0; b1 = c;
        } else {
            r1 = c; g1 = 0; b1 = x;
        }

        return new ColorValue(
                (int) Math.round((r1 + m) * 255),
                (int) Math.round((g1 + m) * 255),
                (int) Math.round((b1 + m) * 255),
                a
        );
    }
}
