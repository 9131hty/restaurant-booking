package com.restaurant.item.domain.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartItem {
    private String id;
    private String name;
    private double price;
    private int qty;
    private String image;
}

