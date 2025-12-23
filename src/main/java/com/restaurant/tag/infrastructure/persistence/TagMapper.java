package com.restaurant.tag.infrastructure.persistence;

import com.restaurant.tag.domain.model.Tag;

import java.util.List;

public interface TagMapper {
    Tag selectById(int id);
    List<Tag> selectAll();
    void insert(Tag tag);
    void update(Tag tag);
    void deleteById(int id);

    void activate(int id);
    void deactivate(int id);
}
