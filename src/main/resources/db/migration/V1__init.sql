CREATE TABLE IF NOT EXISTS "item" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "cuisine" TEXT,
    "description" TEXT,
    "short_description" TEXT,
    "category" TEXT,
    "sub_category" TEXT,
    "item_type" TEXT,
    "base_price" REAL,
    "discount" REAL,
    "on_sale" INTEGER DEFAULT 0,
    "currency" TEXT,
    "available" INTEGER DEFAULT 1,
    "out_of_stock" INTEGER DEFAULT 0,
    "seasonal" INTEGER DEFAULT 0,
    "image" TEXT,
    "recipe" TEXT,
    "rating" REAL,
    "rating_count" INTEGER,
    "view_count" INTEGER,
    "sold_count" INTEGER,
    "is_signature" INTEGER DEFAULT 0,
    "is_featured" INTEGER DEFAULT 0,
    "is_top_rated" INTEGER DEFAULT 0,
    "menu_id" INTEGER,
    "hidden" INTEGER DEFAULT 0,
    "notes" TEXT,
    "created_at" TEXT,
    "updated_at" TEXT,
    "deleted_at" TEXT,
    "created_by" TEXT,
    "updated_by" TEXT,
    "deleted_by" TEXT
);


CREATE TABLE IF NOT EXISTS "menu_item" (
    "menu_id" INTEGER NOT NULL,
    "item_id" INTEGER NOT NULL,
    PRIMARY KEY ("menu_id", "item_id"),
    FOREIGN KEY("item_id") REFERENCES "item"("id"),
    FOREIGN KEY("menu_id") REFERENCES "menu"("id")
);


CREATE TABLE IF NOT EXISTS "menu_tag" (
    "menu_id" INTEGER NOT NULL,
    "tag_id" INTEGER NOT NULL,
    PRIMARY KEY ("menu_id", "tag_id"),
    FOREIGN KEY("menu_id") REFERENCES "menu"("id"),
    FOREIGN KEY("tag_id") REFERENCES "tag"("id")
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


CREATE TABLE IF NOT EXISTS "menu" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "title" TEXT NOT NULL,
    "subtitle" TEXT,
    "description" TEXT,
    "menu_type" TEXT,
    "cuisine" TEXT,
    "theme" TEXT,
    "service_style" TEXT,
    "is_limitedEdition" INTEGER DEFAULT 0,
    "available_from" TEXT,
    "available_until" TEXT,
    "chef_in_charge" TEXT,
    "featured_image" TEXT,
    "chef_message" TEXT,
    "status" TEXT,
    "approved_by_chef" TEXT,
    "approved_by_manager" TEXT,
    "version" TEXT,
    "workflow_status" TEXT,
    "created_at" TEXT,
    "updated_at" TEXT,
    "deleted_at" TEXT,
    "created_by" TEXT,
    "updated_by" TEXT,
    "deleted_by" TEXT
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
