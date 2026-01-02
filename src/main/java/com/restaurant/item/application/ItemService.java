package com.restaurant.item.application;

import com.restaurant.common.time.TimeProvider;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.repository.ItemRepository;

import java.util.List;

/**
 * Application service responsible for item-related use cases.
 * <p>
 * This service coordinates domain behavior, persistence,
 * and audit concerns such as time and user attribution.
 */
public class ItemService {

    private final ItemRepository repository;
    private final TimeProvider timeProvider;

    /**
     * Creates an {@code ItemService}.
     *
     * @param repository   the item repository
     * @param timeProvider the time provider used for audit operations
     */
    public ItemService(ItemRepository repository, TimeProvider timeProvider) {
        this.repository = repository;
        this.timeProvider = timeProvider;
    }

    /**
     * Retrieves an item by its identifier.
     *
     * @param id the item identifier
     * @return the found item
     * @throws RuntimeException if the item does not exist
     */
    public Item get(int id) {
        return repository.find(id).orElseThrow(() -> new RuntimeException("Item not found"));
    }

    /**
     * Retrieves all active items.
     *
     * @return a list of items
     */
    public List<Item> getAll() {
        return repository.all();
    }

    /**
     * Creates a new item and applies creation audit metadata.
     *
     * @param item the item to create
     * @param user the user performing the operation
     */
    public void create(Item item, String user) {
        item.markCreated(timeProvider.now(), user);
        repository.save(item);
    }

    /**
     * Updates an existing item and applies update audit metadata.
     *
     * @param item the item to update
     * @param user the user performing the operation
     */
    public void update(Item item, String user) {
        item.markUpdated(timeProvider.now(), user);
        repository.save(item);
    }

    /**
     * Softly deletes an item and applies deletion audit metadata.
     *
     * @param id   the item identifier
     * @param user the user performing the operation
     */
    public void remove(int id, String user) {
        Item item = repository.find(id).orElseThrow(() -> new RuntimeException("Item not found"));
        item.markDeleted(timeProvider.now(), user);
        repository.save(item);
    }
}
