package com.restaurant.item.infrastructure.persistence;

import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.repository.ItemRepository;

import java.util.List;
import java.util.Optional;

public class ItemRepositoryImpl implements ItemRepository {
    @Override
    public Optional<Item> find(int id) {
        return Optional.empty();
    }

    @Override
    public List<Item> findAll() {
        return List.of();
    }

    @Override
    public void save(Item item) {

    }

    @Override
    public void remove(Item item) {

    }
}
