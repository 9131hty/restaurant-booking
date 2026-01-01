package com.restaurant.item.application;

import com.restaurant.item.domain.model.Item;
import com.restaurant.item.translate.Detail;
import com.restaurant.item.translate.Overview;
import com.restaurant.item.translate.MenuCard;

public class ItemTranslator {

    public static Overview overview(Item item) {
        Overview translation = new Overview();
        translation.setId(item.getId());
        translation.setName(item.getName());
        translation.setCategory(item.getCategory());
        translation.setSubCategory(item.getSubCategory());
        translation.setShortDescription(item.getShortDescription());
        translation.setPrice(item.getBasePrice());
        translation.setImage(item.getImage());
        return translation;
    }

    public static Detail detail(Item item) {
        Detail translation = new Detail();
        translation.setId(item.getId());
        translation.setName(item.getName());
        translation.setCuisine(item.getCuisine());
        translation.setCategory(item.getCategory());
        translation.setSubCategory(item.getSubCategory());
        translation.setTags(item.getTags());
        translation.setRating(item.getRating());
        translation.setDescription(item.getDescription());
        translation.setIngredients(item.getIngredients());
        translation.setImage(item.getImage());
        translation.setRecipe(item.getRecipe());
        return translation;
    }

    public static MenuCard menuCard(Item item) {
        MenuCard translation = new MenuCard();
        translation.setId(item.getId());
        translation.setName(item.getName());
        translation.setCategory(item.getCategory());
        translation.setSubCategory(item.getSubCategory());
        translation.setCuisine(item.getCuisine());
        translation.setShortDescription(item.getShortDescription());
        translation.setBasePrice(item.getBasePrice());
        translation.setDiscount(item.getDiscount());
        translation.setTags(item.getTags());
        return translation;
    }
}
