package com.restaurant.item.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ItemDisplayDTO {
    private int id;
    private String name;
    private String shortDescription;
    private String category;
    private String subCategory;
    private double price;
    private String image;
}
