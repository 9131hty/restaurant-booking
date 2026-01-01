package com.restaurant.inventory.infrastructure.persistence;

import com.restaurant.inventory.domain.model.Ingredient;
import com.restaurant.inventory.domain.repository.IngredientRepository;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;
import java.util.Optional;

public class IngredientRepositoryImpl implements IngredientRepository {
    private final SqlSessionFactory factory;

    public IngredientRepositoryImpl(SqlSessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public Optional<Ingredient> find(int id) {
        try (SqlSession session = factory.openSession()) {
            Ingredient ingredient = session.getMapper(IngredientMapper.class).selectById(id);
            return Optional.ofNullable(ingredient);
        }
    }

    @Override
    public List<Ingredient> findAll() {
        try (SqlSession session = factory.openSession()) {
            return session.getMapper(IngredientMapper.class).selectAllActive();
        }
    }

    @Override
    public void save(Ingredient ingredient) {
        try (SqlSession session = factory.openSession(false)) {
            IngredientMapper mapper = session.getMapper(IngredientMapper.class);

            if (ingredient.getId() == 0) {
                mapper.insert(ingredient);
            } else {
                mapper.update(ingredient);
            }

            session.commit();
        }
    }

    @Override
    public void restock(int id, int quantity) {
        if (quantity <= 0) {
            throw new IllegalArgumentException("Restock quantity must be positive");
        }

        try (SqlSession session = factory.openSession(false)) {
            session.getMapper(IngredientMapper.class).increaseStock(id, quantity);
            session.commit();
        }
    }

    @Override
    public void consume(int id, int quantity) {
        if (quantity <= 0) {
            throw new IllegalArgumentException("Consume quantity must be positive");
        }

        try (SqlSession session = factory.openSession(false)) {
            int affectedRows = session.getMapper(IngredientMapper.class).consumeStock(id, quantity);

            if (affectedRows == 0) {
                session.rollback();
                throw new IllegalStateException("Insufficient stock or ingredient not found");
            }

            session.commit();
        }
    }

    @Override
    public void activate(int id) {
        try (SqlSession session = factory.openSession(false)) {
            session.getMapper(IngredientMapper.class).activate(id);
            session.commit();
        }
    }

    @Override
    public void deactivate(int id) {
        try (SqlSession session = factory.openSession(false)) {
            session.getMapper(IngredientMapper.class).deactivate(id);
            session.commit();
        }
    }
}
