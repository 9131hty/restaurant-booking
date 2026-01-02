package com.restaurant.item.infrastructure.persistence;

import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.model.ItemIngredient;
import com.restaurant.item.domain.repository.ItemRepository;
import com.restaurant.tag.domain.model.Tag;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;
import java.util.Optional;

public class ItemRepositoryImpl implements ItemRepository {
    private final SqlSessionFactory factory;

    public ItemRepositoryImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public Optional<Item> find(int id) {
        try (SqlSession session = factory.openSession()) {
            Item item = session.getMapper(ItemMapper.class).selectById(id);
            return Optional.ofNullable(item);
        }
    }

    @Override
    public List<Item> all() {
        try (SqlSession session = factory.openSession()) {
            return session.getMapper(ItemMapper.class).selectAllActive();
        }
    }

    @Override
    public List<Tag> getTags(int itemId) {
        try (SqlSession session = factory.openSession()) {
            return session.getMapper(ItemMapper.class).selectTagsByItemId(itemId);
        }
    }

    @Override
    public List<Ingredient> getIngredients(int itemId) {
        try (SqlSession session = factory.openSession()) {
            return session.getMapper(ItemMapper.class).selectIngredientsByItemId(itemId);
        }
    }

    @Override
    public void save(Item item) {
        try (SqlSession session = factory.openSession(false)) {
            ItemMapper mapper = session.getMapper(ItemMapper.class);

            if (item.getId() == 0) {
                mapper.insert(item);
            } else {
                mapper.update(item);
            }

            session.commit();
        }
    }

    @Override
    public void remove(int id) {
        try (SqlSession session = factory.openSession(false)) {
            session.getMapper(ItemMapper.class).softDelete(id);
            session.commit();
        }
    }

    @Override
    public void addTag(int itemId, int tagId) {
        try (SqlSession session = factory.openSession(false)) {
            ItemMapper mapper = session.getMapper(ItemMapper.class);
            mapper.insertItemTag(itemId, tagId);
            session.commit();
        }
    }

    @Override
    public void addTags(int itemId, List<Integer> tagIds) {
        if (tagIds == null || tagIds.isEmpty()) {
            return;
        }

        try (SqlSession session = factory.openSession(false)) {
            ItemMapper mapper = session.getMapper(ItemMapper.class);
            mapper.insertItemTags(itemId, tagIds);
            session.commit();
        }
    }

    @Override
    public void addIngredient(ItemIngredient itemIngredient) {
        try (SqlSession session = factory.openSession(false)) {
            ItemMapper mapper = session.getMapper(ItemMapper.class);
            mapper.insertItemIngredient(itemIngredient);
            session.commit();
        }
    }

    @Override
    public void addIngredients(int itemId, List<ItemIngredient> ingredients) {
        if (ingredients == null || ingredients.isEmpty()) {
            return;
        }

        try (SqlSession session = factory.openSession(false)) {
            ItemMapper mapper = session.getMapper(ItemMapper.class);
            mapper.insertItemIngredients(itemId, ingredients);
            session.commit();
        }
    }
}
