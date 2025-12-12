-- SQLite database export
PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "item" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "sku" TEXT,
    "name" TEXT NOT NULL,
    "local_name" TEXT,
    "cuisine" TEXT,
    "description" TEXT,
    "short_description" TEXT,
    "category" TEXT,
    "sub_category" TEXT,
    "item_type" TEXT,
    "vegetarian" INTEGER DEFAULT 0,
    "vegan" INTEGER DEFAULT 0,
    "gluten_free" INTEGER DEFAULT 0,
    "spicy" INTEGER DEFAULT 0,
    "halal" INTEGER DEFAULT 0,
    "contains_alcohol" INTEGER DEFAULT 0,
    "calories" INTEGER,
    "protein" REAL,
    "fat" REAL,
    "carbs" REAL,
    "sugar" REAL,
    "sodium" REAL,
    "base_price" REAL,
    "discount" REAL,
    "final_price" REAL,
    "on_sale" INTEGER DEFAULT 0,
    "currency" TEXT,
    "image" TEXT,
    "rating" REAL,
    "rating_count" INTEGER,
    "view_count" INTEGER,
    "review_count" INTEGER,
    "sold_count" INTEGER,
    "is_signature" INTEGER DEFAULT 0,
    "is_featured" INTEGER DEFAULT 0,
    "is_top_rated" INTEGER DEFAULT 0,
    "menu_id" INTEGER,
    "brand" TEXT,
    "allow_delivery" INTEGER DEFAULT 0,
    "allow_pickup" INTEGER DEFAULT 1,
    "allow_dineIn" INTEGER DEFAULT 1,
    "hidden" INTEGER DEFAULT 0,
    "age_restricted" INTEGER DEFAULT 0,
    "notes" TEXT,
    "created_at" TEXT,
    "updated_at" TEXT,
    "deleted_at" TEXT,
    "created_by" TEXT,
    "updated_by" TEXT,
    "deleted_by" TEXT
);


CREATE TABLE IF NOT EXISTS "ingredient" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "measurement_unit" TEXT NOT NULL,
    "cost_per_unit" REAL NOT NULL,
    "stock_quantity" INTEGER DEFAULT 0,
    "min_stock_quantity" INTEGER DEFAULT 0,
    "category" TEXT,
    "allergen" INTEGER DEFAULT 0,
    "description" TEXT,
    "status" TEXT
);


CREATE TABLE IF NOT EXISTS "tag" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL UNIQUE,
    "description" TEXT,
    "status" TEXT NOT NULL,
    "usage_count" INTEGER DEFAULT 0,
    "created_at" TEXT NOT NULL,
    "updated_at" TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS "item_tag" (
    "item_id" INTEGER NOT NULL,
    "tag_id" INTEGER NOT NULL,
    PRIMARY KEY ("item_id", "tag_id"),
    FOREIGN KEY("item_id") REFERENCES "item"("id"),
    FOREIGN KEY("tag_id") REFERENCES "tag"("id")
);


CREATE TABLE IF NOT EXISTS "item_ingredient" (
    "item_id" INTEGER NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    "quantity" REAL NOT NULL,
    "unit" TEXT,
    "cost_snapshot" REAL,
    PRIMARY KEY ("item_id", "ingredient_id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredient"("id"),
    FOREIGN KEY("item_id") REFERENCES "item"("id")
);


COMMIT;