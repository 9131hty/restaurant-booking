package org.example.temp;

public class Drink extends Product {
    private double volume;
    private boolean alcoholic;
    private boolean carbonated;

    public Drink() {}

    public Drink(int id, String cuisine, String name, double price, String description, double volume, boolean alcoholic, boolean carbonated) {
        super(id, cuisine, name, price, description);
        this.volume = volume;
        this.alcoholic = alcoholic;
        this.carbonated = carbonated;
    }

    @Override
    public String getInfo() {
        return super.getInfo() + ", " + volume + ", " + (alcoholic ? "alcoholic" : "non-alcoholic") + ", " + (carbonated ? "carbonated" : "non-carbonated");
    }

    public double getVolume() {
        return volume;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public boolean isAlcoholic() {
        return alcoholic;
    }

    public void setAlcoholic(boolean alcoholic) {
        this.alcoholic = alcoholic;
    }

    public boolean isCarbonated() {
        return carbonated;
    }

    public void setCarbonated(boolean carbonated) {
        this.carbonated = carbonated;
    }
}
