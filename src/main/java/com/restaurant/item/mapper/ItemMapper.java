package com.restaurant.item.mapper;

import com.restaurant.item.dto.ItemDisplayDTO;
import com.restaurant.item.dto.ItemMenuDTO;
import com.restaurant.item.model.Item;

public class ItemMapper {
    public static ItemDisplayDTO toItemDisplay(Item item) {
        ItemDisplayDTO itemDisplay = new ItemDisplayDTO();
        itemDisplay.setId(item.getId());
        itemDisplay.setName(item.getName());
        itemDisplay.setShortDescription(item.getShortDescription());
        itemDisplay.setPrice(itemDisplay.getPrice());
        return itemDisplay;
    }

    public static ItemMenuDTO itemMenuDTO(Item item) {
        ItemMenuDTO itemMenu = new ItemMenuDTO();
        itemMenu.setId(item.getId());
        itemMenu.setName(item.getName());
        itemMenu.setShortDescription(item.getShortDescription());
        itemMenu.setPrice(itemMenu.getPrice());
        itemMenu.setTags(item.getTags());
        return itemMenu;
    }
}
