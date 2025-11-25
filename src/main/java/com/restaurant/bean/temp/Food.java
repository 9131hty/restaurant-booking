package com.restaurant.bean.temp;

public class Food extends Product {
    private boolean vegetarian;
    private boolean spicy;
    private boolean allergens;

    public Food() {}

    public Food(int id, String cuisine, String name, double price, String description, boolean vegetarian, boolean spicy, boolean allergens) {
        super(id, cuisine, name, price, description);
        this.vegetarian = vegetarian;
        this.spicy = spicy;
        this.allergens = allergens;
    }

    @Override
    public String getInfo() {
        return super.getInfo() + ", " + (vegetarian ? "vegetarian" : "non-vegetarian") + ", " + (spicy ? "spicy" : "non-spicy") + ", " + (allergens ? "allergens" : "non-allergens");
    }

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
