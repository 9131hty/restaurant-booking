package com.restaurant.tag.domain.repository;

import com.restaurant.tag.domain.model.Tag;

import java.util.List;
import java.util.Optional;

public interface TagRepository {
    Optional<Tag> find(int id);
    List<Tag> findAll();
    void save(Tag tag);
    void remove(Tag tag);

    void activate(int id);
    void deactivate(int id);
}
