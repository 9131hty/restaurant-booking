package com.restaurant.model.bean;

public class Food extends Product {
    private boolean vegetarian;
    private boolean spicy;
    private boolean allergens;

    public Food() {}

    public boolean isVegetarian() {
        return vegetarian;
    }

    public void setVegetarian(boolean vegetarian) {
        this.vegetarian = vegetarian;
    }

    public boolean isSpicy() {
        return spicy;
    }

    public void setSpicy(boolean spicy) {
        this.spicy = spicy;
    }

    public boolean isAllergens() {
        return allergens;
    }

    public void setAllergens(boolean allergens) {
        this.allergens = allergens;
    }
}
