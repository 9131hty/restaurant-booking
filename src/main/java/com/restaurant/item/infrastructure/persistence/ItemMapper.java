package com.restaurant.item.infrastructure.persistence;

import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.model.ItemIngredient;
import com.restaurant.tag.domain.model.Tag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemMapper {
    Item selectById(int id);
    List<Item> selectAll();
    List<Item> selectAllActive();
    List<Tag> selectTagsByItemId(int itemId);
    List<Ingredient> selectIngredientsByItemId(int itemId);
    void insert(Item item);
    void update(Item item);
    void softDelete(int id);
    void insertItemTag(@Param("itemId") int itemId, @Param("tagId") int tagId);
    void insertItemTags(@Param("itemId") int itemId, @Param("tagIds") List<Integer> tagIds);
    void insertItemIngredient(ItemIngredient itemIngredient);
    void insertItemIngredients(@Param("itemId") int itemId, @Param("ingredients") List<ItemIngredient> ingredients);
}
