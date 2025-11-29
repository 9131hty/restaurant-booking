package org.example.temp;

import java.util.List;

public class Menu {
    private int id;
    private String name;
    private String description;
    private List<MenuItem> menuItems;

    public Menu() {}

    public Menu(int id, String name, String description, List<MenuItem> menuItems) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.menuItems = menuItems;
    }

    @Override
    public String toString() {
        return String.format("%s, %s, %s, %s", id, name, description, menuItems);
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

    public List<MenuItem> getMenuItems() {
        return menuItems;
    }

    public void setMenuItems(List<MenuItem> menuItems) {
        this.menuItems = menuItems;
    }
}
