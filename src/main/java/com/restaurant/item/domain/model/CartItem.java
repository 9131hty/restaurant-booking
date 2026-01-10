package com.restaurant.item.domain.model;

import com.restaurant.util.color.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartItem {
    private String id;
    private String name;
    private double price;
    private int qty;
    private String category;
    private String subCategory;
    private String image;

    private String text;
    private String bg;

    /**
     * Automatically assigns background and text colors
     * based on subCategory. Colors share the same hue,
     * differ in lightness, and meet WCAG contrast requirements.
     */
    public void autoColor() {
        if (subCategory == null || subCategory.isBlank()) {
            return;
        }

        ColorValue base = StringColor.fromString(subCategory);
        ColorValue inverse = AccessibleColor.invert(base);

        boolean baseIsBg =
                Contrast.ratio(base, inverse) >=
                        Contrast.ratio(inverse, base);

        ColorValue bgColor = baseIsBg ? base : inverse;
        ColorValue textColor = baseIsBg ? inverse : base;

        this.bg = ColorFormatter.toHex(bgColor);
        this.text = ColorFormatter.toHex(textColor);
    }
}

