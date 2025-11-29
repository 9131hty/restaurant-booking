package org.example.temp;

public abstract class Product {
	private int id;
	private String name;
    private String cuisine;
	private double price;
	private String description;
	
	public Product() {}

    public Product(int id, String name, String cuisine, double price, String description) {
        this.id = id;
        this.name = name;
        this.cuisine = cuisine;
        this.price = price;
        this.description = description;
    }

    public String getInfo() {
        return (String.format("%s, %s, %s, %.2f, %s", id, name, cuisine, price, description));
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

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
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
}
