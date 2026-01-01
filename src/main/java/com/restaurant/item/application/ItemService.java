package com.restaurant.item.application;

import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.repository.ItemRepository;

import java.util.List;

public class ItemService {
    private final ItemRepository repository;

    public ItemService(ItemRepository repository) {
        this.repository = repository;
    }

    public Item get(int id) {
        return repository.find(id).orElseThrow(() -> new RuntimeException("Item not found"));
    }

    public List<Item> getAll() {
        return repository.findAll();
    }

    public void create(Item item) {
        repository.save(item);
    }

    public void remove(int id) {
        repository.remove(id);
    }
}
