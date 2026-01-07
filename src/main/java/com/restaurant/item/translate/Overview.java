package com.restaurant.item.translate;

import com.restaurant.common.enumeration.Currency;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Overview {
    private int id;
    private String name;
    private String image;
    private String shortDescription;
    private String category;
    private String subCategory;
    private double price;
    private Currency currency;
}
