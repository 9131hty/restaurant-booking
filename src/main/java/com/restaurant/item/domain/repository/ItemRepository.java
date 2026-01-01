package com.restaurant.item.domain.repository;

import com.restaurant.item.domain.model.Item;

import java.util.List;
import java.util.Optional;

public interface ItemRepository {
    Optional<Item> find(int id);
    List<Item> findAll();
    void save(Item item);
    void remove(int id);
}
