package com.restaurant.item.domain.repository;

import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.model.ItemIngredient;
import com.restaurant.tag.domain.model.Tag;

import java.util.List;
import java.util.Optional;

public interface ItemRepository {
    Optional<Item> find(int id);
    List<Item> all();
    List<Tag> getTags(int itemId);
    List<Ingredient> getIngredients(int itemId);
    void save(Item item);
    void remove(int id);
    void addTag(int itemId, int tagId);
    void addTags(int itemId, List<Integer> tagIds);
    void addIngredient(ItemIngredient itemIngredient);
    void addIngredients(int itemId, List<ItemIngredient> ingredients);
}
