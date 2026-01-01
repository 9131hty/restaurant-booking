package com.restaurant.item.translate;

import com.restaurant.common.enumeration.Cuisine;
import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.tag.domain.model.Tag;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class Detail {
    private int id;
    private String name;
    private Cuisine cuisine;
    private String category;
    private String subCategory;
    private List<Tag> tags;
    private double rating;
    private String description;
    private List<Ingredient> ingredients;
    private String image;
    private String recipe;
}
