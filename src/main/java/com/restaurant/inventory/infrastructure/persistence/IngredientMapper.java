package com.restaurant.inventory.infrastructure.persistence;

import com.restaurant.inventory.domain.model.Ingredient;
import java.util.List;

public interface IngredientMapper {
    Ingredient selectById(int id);
    List<Ingredient> selectAll();
    List<Ingredient> selectAllActive();
    void insert(Ingredient ingredient);
    void update(Ingredient ingredient);
    void updateStock(int id, int newStockQuantity);
    void activate(int id);
    void deactivate(int id);
}