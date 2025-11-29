package org.example.temp;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class I {
    private String id;
    private String name;
    private String description;
    private String category;
    private double price;
    private int quantity;
    private double weight;
    private Dimensions dimensions;
    private String image;
    private String SKU;
    private String barcode;
    private String status;
    private String color;
    private String material;
    private String brand;
    private String modelNumber;
    private Date manufactureDate;
    private Date expiryDate;
    private String originCountry;
    private int warrantyPeriod;
    private double rating;
    private List<String> reviews;
    private List<String> tags;
    private double discount;
    private double tax;
    private int levelRequirement;
    private int power;
    private int durability;
    private String effect;
    private String rarity;
    private List<String> skills;
    private int experiencePoints;
    private String unlockConditions;
    private Date createdAt;
    private Date updatedAt;
    private Date deletedAt;
    private String ownerId;
    private String location;
    private Map<Date, String> history;
    private List<String> permissions;
    private Map<String, String> customFields;
    private Map<String, String> metadata;
    private List<String> attachments;
    private String notes;
    private List<I> linkedIS;


    public static class Dimensions {
        private double length;
        private double width;
        private double height;

        public Dimensions(double length, double width, double height) {
            this.length = length;
            this.width = width;
            this.height = height;
        }

        public double getLength() { return length; }
        public void setLength(double length) { this.length = length; }

        public double getWidth() { return width; }
        public void setWidth(double width) { this.width = width; }

        public double getHeight() { return height; }
        public void setHeight(double height) { this.height = height; }
    }
}
