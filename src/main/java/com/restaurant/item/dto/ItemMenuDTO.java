package com.restaurant.item.dto;

import com.restaurant.common.enumeration.Cuisine;
import com.restaurant.tag.domain.model.Tag;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class ItemMenuDTO {
    private int id;
    private String name;
    private String category;
    private String subCategory;
    private Cuisine cuisine;
    private String shortDescription;
    private double basePrice;
    private double discount;
    private List<Tag> tags;
}
