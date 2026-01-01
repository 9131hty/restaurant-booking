package com.restaurant.inventory.infrastructure.persistence;

import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.inventory.domain.model.IngredientStock;

import java.util.List;

public interface IngredientMapper {
    Ingredient selectById(int id);
    List<Ingredient> selectAll();
    List<Ingredient> selectAllActive();
    int selectStockById(int id);
    IngredientStock selectStockInfoById(int id);
    void increaseStock(int id, int quantity);
    int consumeStock(int id, int quantity);
    void insert(Ingredient ingredient);
    void update(Ingredient ingredient);
    void updateStock(int id, int newStockQuantity);
    void activate(int id);
    void deactivate(int id);
}