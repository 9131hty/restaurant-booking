package com.restaurant.inventory.domain.repository;

import com.restaurant.inventory.domain.model.Ingredient;

import java.util.List;
import java.util.Optional;

public interface IngredientRepository {
    Optional<Ingredient> find(int id);
    List<Ingredient> findAll();
    void save(Ingredient ingredient);
    void restock(int id, int quantity);
    void consume(int id, int quantity);
    void activate(int id);
    void deactivate(int id);
}
