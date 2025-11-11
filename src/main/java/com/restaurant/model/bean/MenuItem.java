package com.restaurant.model.bean;

import java.util.List;

public class MenuItem {
    private int id;
    private String name;
    private String cuisine;
    private String description;
    private List<Product> products;

    public MenuItem() {}

    public MenuItem(int id, String name, String description, String cuisine, List<Product> products) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.cuisine = cuisine;
        this.products = products;
    }

    @Override
    public String toString() {
        return String.format("%s, %s, %s, %s, %s", id, name, cuisine, description, products);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCuisine() {
        return cuisine;
    }

    public void setCuisine(String cuisine) {
        this.cuisine = cuisine;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
