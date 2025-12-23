package com.restaurant.inventory.domain.repository;

import com.restaurant.inventory.domain.model.Ingredient;

import java.util.List;
import java.util.Optional;

public interface IngredientRepository {
    Optional<Ingredient> find(int id);
    List<Ingredient> findAll();
    void save(Ingredient ingredient);
    void remove(Ingredient ingredient);
}
