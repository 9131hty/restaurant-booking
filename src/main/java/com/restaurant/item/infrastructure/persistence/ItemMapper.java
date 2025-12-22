package com.restaurant.item.infrastructure.persistence;

import com.restaurant.item.domain.model.Item;

import java.util.List;

public interface ItemMapper {
    Item selectById(int id);
    List<Item> selectAll();
    void insert(Item item);
    void update(Item item);
    void deleteById(int id);
}
