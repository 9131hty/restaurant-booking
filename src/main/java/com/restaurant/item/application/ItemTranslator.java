package com.restaurant.item.application;

import com.restaurant.item.domain.model.Item;
import com.restaurant.item.dto.ItemDetailDTO;
import com.restaurant.item.dto.ItemDisplayDTO;
import com.restaurant.item.dto.ItemMenuDTO;

public class ItemTranslator {

    public static ItemDisplayDTO toItemDisplay(Item item) {
        ItemDisplayDTO dto = new ItemDisplayDTO();
        dto.setId(item.getId());
        dto.setName(item.getName());
        dto.setCategory(item.getCategory());
        dto.setSubCategory(item.getSubCategory());
        dto.setShortDescription(item.getShortDescription());
        dto.setPrice(item.getBasePrice());
        dto.setImage(item.getImage());
        return dto;
    }

    public static ItemDetailDTO toItemDetail(Item item) {
        ItemDetailDTO dto = new ItemDetailDTO();
        dto.setId(item.getId());
        dto.setName(item.getName());
        dto.setCuisine(item.getCuisine());
        dto.setCategory(item.getCategory());
        dto.setSubCategory(item.getSubCategory());
        dto.setTags(item.getTags());
        dto.setRating(item.getRating());
        dto.setDescription(item.getDescription());
        dto.setIngredients(item.getIngredients());
        dto.setImage(item.getImage());
        dto.setRecipe(item.getRecipe());
        return dto;
    }

    public static ItemMenuDTO toItemMenu(Item item) {
        ItemMenuDTO dto = new ItemMenuDTO();
        dto.setId(item.getId());
        dto.setName(item.getName());
        dto.setCategory(item.getCategory());
        dto.setSubCategory(item.getSubCategory());
        dto.setCuisine(item.getCuisine());
        dto.setShortDescription(item.getShortDescription());
        dto.setBasePrice(item.getBasePrice());
        dto.setDiscount(item.getDiscount());
        dto.setTags(item.getTags());
        return dto;
    }
}
