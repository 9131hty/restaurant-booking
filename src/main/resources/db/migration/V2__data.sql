-- ================================
-- V2_data.sql – Seed data for items + ingredients
-- ================================

-- 1. Ingredients
INSERT INTO ingredient (id, name, image, measurement_unit, cost_per_unit, stock_quantity, min_stock_quantity, category, allergen, description, status)
VALUES
(1, '00 Flour', '00_flour.png', 'G', 0.01, 10000, 1000, 'GRAIN', 0, 'All-purpose flour', 'ACTIVE'),
(2, 'Tomato Sauce', 'tomato_sauce.png', 'ML', 0.05, 5000, 500, 'SAUCE', 0, 'Fresh tomato sauce', 'ACTIVE'),
(3, 'Mozzarella', 'mozzarella_di_bufala_campana.png', 'G', 0.08, 2000, 200, 'DAIRY', 1, 'Mozzarella cheese', 'ACTIVE'),
(4, 'Basil', 'basil.png', 'G', 0.10, 500, 50, 'HERB', 0, 'Fresh basil leaves', 'ACTIVE'),
(5, 'Pepperoni', 'pepperoni.png', 'G', 0.12, 1000, 100, 'MEAT', 1, 'Spicy pepperoni slices', 'ACTIVE'),
(6, 'Pork Rinds', 'pork_rinds.png', 'G', 0.09, 1000, 100, 'MEAT', 1, 'Sliced ham', 'ACTIVE'),
(7, 'Ricotta', 'ricotta.png', 'G', 0.07, 800, 80, 'DAIRY', 1, 'Ricotta cheese', 'ACTIVE'),
(8, 'Flour', 'flour.png', 'G', 0.01, 10000, 1000, 'GRAIN', 0, 'Alternative flour', 'ACTIVE'),
(9, 'Olive Oil', 'olive_oil.png', 'ML', 0.15, 2000, 200, 'OIL', 0, 'Extra virgin olive oil', 'ACTIVE'),
(10, 'Oregano', 'oregano.png', 'G', 0.05, 500, 50, 'HERB', 0, 'Dried oregano', 'ACTIVE'),
(11, 'Parmigiano Reggiano', 'parmigiano_reggiano.png', 'G', 0.20, 500, 50, 'DAIRY', 1, 'Italian parmesan cheese', 'ACTIVE'),
(12, 'Salame Napoli', 'salame_napoli.png', 'G', 0.18, 300, 30, 'MEAT', 1, 'Napoli-style salami', 'ACTIVE'),
(13, 'Salt', 'salt.png', 'G', 0.01, 2000, 200, 'SEASONING', 0, 'Fine sea salt', 'ACTIVE'),
(14, 'Tomato', 'tomato.png', 'G', 0.03, 1500, 150, 'VEGETABLE', 0, 'Fresh tomatoes', 'ACTIVE'),
(15, 'Yeast', 'yeast.png', 'G', 0.04, 1000, 100, 'BAKING', 0, 'Active dry yeast', 'ACTIVE'),
(16, 'Lard', 'lard.png', 'G', 0.10, 500, 50, 'FAT', 0, 'Rendered pork fat', 'ACTIVE');

-- 2. Items
INSERT INTO item (
    name, cuisine, description, short_description,
    category, sub_category, item_type,
    base_price, discount, on_sale, currency,
    available, out_of_stock, seasonal,
    image, recipe,
    rating, rating_count, view_count, sold_count,
    is_signature, is_featured, is_top_rated,
    menu_id, hidden, notes,
    created_at, created_by,
    updated_at, updated_by
) VALUES
('Pizza Napoletana', 'IT', 'Traditional Neapolitan pizza with tomato sauce, mozzarella di bufala, and basil.', 'Classic Neapolitan pizza.', 'Pizza', 'Pizza', 'FOOD', 12.00, 0, 0, 'USD', 1, 0, 0, 'pizza-napoletana.jpg', 'pizza-napoletana.pdf', 4.6, 120, 500, 300, 1, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Pizza Margherita', 'IT', 'Fresh tomato sauce, mozzarella, basil, and olive oil.', 'Simple and iconic.', 'Pizza', 'Pizza', 'FOOD', 10.00, 0, 0, 'USD', 1, 0, 0, 'pizza-margherita.jpg', 'pizza-margherita.pdf', 4.7, 200, 700, 450, 1, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Pepperoni Pizza', 'IT', 'Mozzarella cheese and spicy pepperoni slices.', 'Best-selling classic.', 'Pizza', 'Pizza', 'FOOD', 11.50, 0, 0, 'USD', 1, 0, 0, 'pepperoni-pizza.jpg', NULL, 4.8, 300, 900, 650, 0, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Calzone Pizza', 'IT', 'Folded pizza stuffed with mozzarella, ricotta, and ham.', 'Stuffed Italian calzone.', 'Pizza', 'Pizza', 'FOOD', 13.00, 0, 0, 'USD', 1, 0, 0, 'calzone-pizza.jpg', 'calzone-pizza.pdf', 4.4, 80, 300, 200, 0, 0, 0, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system');

-- 3. Item <-> Ingredient
-- Item 1: Pizza Napoletana
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot) VALUES
(1, 1, 200, 'G', 0.01),        -- Flour
(1, 14, 150, 'G', 0.03),       -- Tomato
(1, 3, 100, 'G', 0.08),        -- Mozzarella
(1, 4, 5, 'G', 0.10),          -- Basil
(1, 9, 10, 'ML', 0.15),        -- Olive Oil
(1, 10, 2, 'G', 0.05),         -- Oregano
(1, 15, 5, 'G', 0.04),         -- Yeast
(1, 13, 1, 'G', 0.01);         -- Salt

-- Item 2: Pizza Margherita
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot) VALUES
(2, 1, 180, 'G', 0.01),        -- Flour
(2, 14, 120, 'G', 0.03),       -- Tomato
(2, 3, 90, 'G', 0.08),         -- Mozzarella
(2, 4, 4, 'G', 0.10);          -- Basil

-- Item 3: Pepperoni Pizza
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot) VALUES
(3, 8, 200, 'G', 0.01),        -- Flour (alt)
(3, 2, 80, 'ML', 0.05),        -- Tomato Sauce
(3, 5, 50, 'G', 0.12),         -- Pepperoni
(3, 3, 80, 'G', 0.08);         -- Mozzarella

-- Item 4: Calzone Pizza
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot) VALUES
(4, 8, 220, 'G', 0.01),        -- Flour (alt)
(4, 13, 2, 'G', 0.01),         -- Salt
(4, 12, 40, 'G', 0.18),        -- Salame Napoli
(4, 7, 50, 'G', 0.07),         -- Ricotta
(4, 3, 90, 'G', 0.08),         -- Mozzarella
(4, 11, 20, 'G', 0.20),        -- Parmigiano Reggiano
(4, 16, 15, 'G', 0.10),        -- Lard
(4, 6, 60, 'G', 0.09);         -- Ham
