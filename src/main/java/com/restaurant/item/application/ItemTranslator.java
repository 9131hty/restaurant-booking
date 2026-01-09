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
        translation.setImage(item.getImage());
        translation.setCategory(format(item.getCategory()));
        translation.setSubCategory(item.getSubCategory());
        translation.setShortDescription(item.getShortDescription());
        translation.setPrice(item.getBasePrice());
        translation.setCurrency(item.getCurrency());
        return translation;
    }

    public static Detail detail(Item item) {
        Detail translation = new Detail();
        translation.setId(item.getId());
        translation.setName(item.getName());
        translation.setCuisine(item.getCuisine());
        translation.setCategory(format(item.getCategory()));
        translation.setSubCategory(format(item.getSubCategory()));
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
        translation.setCategory(format(item.getCategory()));
        translation.setSubCategory(format(item.getSubCategory()));
        translation.setCuisine(item.getCuisine());
        translation.setShortDescription(item.getShortDescription());
        translation.setBasePrice(item.getBasePrice());
        translation.setDiscount(item.getDiscount());
        translation.setTags(item.getTags());
        translation.setImage(item.getImage());
        translation.setIcon(resolveIcon(item.getCategory()));
        return translation;
    }

    private static String resolveIcon(String category) {
        if (category == null) return null;

        switch (category.toLowerCase()) {
            case "food":
                return "hamburger.svg";
            case "bavarage":
                return "wine.svg";
            case "dessert":
                return "cake-slice.svg";
            default:
                return "hand-platter.svg";
        }
    }

    private static String format(String category) {
        if (category == null || category.isBlank()) {
            return category;
        }

        String[] words = category
                .toLowerCase()
                .split("[\\s_-]+");

        StringBuilder formatted = new StringBuilder();

        for (String word : words) {
            if (word.isEmpty()) continue;

            formatted
                    .append(Character.toUpperCase(word.charAt(0)))
                    .append(word.substring(1))
                    .append(" ");
        }

        return formatted.toString().trim();
    }
}
