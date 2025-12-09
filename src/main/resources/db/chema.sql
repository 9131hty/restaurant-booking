PRAGMA foreign_keys = ON;

CREATE TABLE items (
    id INTEGER PRIMARY KEY,
    sku TEXT,

    name TEXT,
    localName TEXT,
    cuisine TEXT,
    description TEXT,
    shortDescription TEXT,
    category TEXT,
    subCategory TEXT,

    itemType TEXT,
    --<!> Tag relational mapping
    vegetarian INTEGER DEFAULT 0,
    vegan INTEGER DEFAULT 0,
    glutenFree INTEGER DEFAULT 0,
    spicy INTEGER DEFAULT 0,
    halal INTEGER DEFAULT 0,
    containsAlcohol INTEGER DEFAULT 0,

    --<!> Ingredient relational mapping
    --<?> Allergen string list

    calories INTEGER,
    protein REAL,
    fat REAL,
    carbs REAL,
    sugar REAL,
    sodium REAL,

    basePrice REAL,
    discount REAL,
    finalPrice REAL,
    onSale INTEGER DEFAULT 0,
    currency TEXT,

    --<?> ItemSize relational mapping
    --<?> Topping relational mapping
    --<?> Modifier relational mapping

    available INTEGER DEFAULT 1,
    outOfStock INTEGER DEFAULT 0,
    seasonal INTEGER DEFAULT 0,
    prepTime INTEGER,
    kitchenStation TEXT,
    requireCooking INTEGER DEFAULT 0,

    image TEXT,
    --<?> Gallery relational mapping

    rating REAL,
    ratingCount INTEGER,
    viewCount INTEGER,
    reviewCount INTEGER,
    soldCount INTEGER,
    isSignature INTEGER DEFAULT 0,
    isFeatured INTEGER DEFAULT 0,
    isTopRated INTEGER DEFAULT 0,

    menuId INTEGER,
    --<!> comboIds: List of id in INT
    --<!> relatedItemIds: List of id in INT
    brand TEXT,

    allowDelivery INTEGER DEFAULT 0,
    allowPickup INTEGER DEFAULT 1,
    allowDineIn INTEGER DEFAULT 1,
    hidden INTEGER DEFAULT 0,
    ageRestricted INTEGER DEFAULT 0,

    notes TEXT,

    createdAt TEXT,
    updatedAt TEXT,
    deletedAt TEXT,
    createdBy TEXT,
    updatedBy TEXT,
    deletedBy TEXT
);