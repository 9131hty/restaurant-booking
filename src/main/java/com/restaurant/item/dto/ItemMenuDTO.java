package com.restaurant.item.dto;

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
    private String shortDescription;
    private double price;
    private List<Tag> tags;
}
