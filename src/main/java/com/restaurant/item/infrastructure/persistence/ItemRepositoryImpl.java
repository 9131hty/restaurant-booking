package com.restaurant.item.infrastructure.persistence;

import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.repository.ItemRepository;
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
    public List<Item> findAll() {
        try (SqlSession session = factory.openSession()) {
            return session.getMapper(ItemMapper.class).selectAll();
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
}
