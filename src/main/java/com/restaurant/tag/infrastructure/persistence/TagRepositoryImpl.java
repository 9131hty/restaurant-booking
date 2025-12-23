package com.restaurant.tag.infrastructure.persistence;

import com.restaurant.tag.domain.model.Tag;
import com.restaurant.tag.domain.repository.TagRepository;

import java.util.List;
import java.util.Optional;

public class TagRepositoryImpl implements TagRepository {
    @Override
    public Optional<Tag> find(int id) {
        return Optional.empty();
    }

    @Override
    public List<Tag> findAll() {
        return List.of();
    }

    @Override
    public void save(Tag tag) {

    }

    @Override
    public void remove(Tag tag) {

    }

    @Override
    public void activate(int id) {

    }

    @Override
    public void deactivate(int id) {

    }
}
