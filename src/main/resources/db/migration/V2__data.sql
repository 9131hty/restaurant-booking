-- ================================
-- V2_data.sql – Seed data for items + ingredients
-- ================================

-- 1. Ingredients
INSERT INTO ingredient (id, name, measurement_unit, cost_per_unit, stock_quantity, min_stock_quantity, category, allergen, description, status)
VALUES
(1, 'Flour', 'G', 0.01, 10000, 1000, 'GRAIN', 0, 'All-purpose flour', 'ACTIVE'),
(2, 'Tomato Sauce', 'ML', 0.05, 5000, 500, 'SAUCE', 0, 'Fresh tomato sauce', 'ACTIVE'),
(3, 'Mozzarella', 'G', 0.08, 2000, 200, 'DAIRY', 1, 'Mozzarella cheese', 'ACTIVE'),
(4, 'Basil', 'G', 0.10, 500, 50, 'HERB', 0, 'Fresh basil leaves', 'ACTIVE'),
(5, 'Pepperoni', 'G', 0.12, 1000, 100, 'MEAT', 1, 'Spicy pepperoni slices', 'ACTIVE'),
(6, 'Ham', 'G', 0.09, 1000, 100, 'MEAT', 1, 'Sliced ham', 'ACTIVE'),
(7, 'Ricotta', 'G', 0.07, 800, 80, 'DAIRY', 1, 'Ricotta cheese', 'ACTIVE');

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
('Pizza Napoletana', 'IT', 'Traditional Neapolitan pizza with tomato sauce, mozzarella di bufala, and basil.', 'Classic Neapolitan pizza.', 'Food', 'Pizza', 'FOOD', 12.00, 0, 0, 'USD', 1, 0, 0, 'pizza-napoletana.jpg', 'pizza-napoletana.pdf', 4.6, 120, 500, 300, 1, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Pizza Margherita', 'IT', 'Fresh tomato sauce, mozzarella, basil, and olive oil.', 'Simple and iconic.', 'Food', 'Pizza', 'FOOD', 10.00, 0, 0, 'USD', 1, 0, 0, 'pizza-margherita.jpg', 'pizza-margherita.pdf', 4.7, 200, 700, 450, 1, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Pepperoni Pizza', 'IT', 'Mozzarella cheese and spicy pepperoni slices.', 'Best-selling classic.', 'Food', 'Pizza', 'FOOD', 11.50, 0, 0, 'USD', 1, 0, 0, 'pepperoni-pizza.jpg', NULL, 4.8, 300, 900, 650, 0, 1, 1, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'),
('Calzone Pizza', 'IT', 'Folded pizza stuffed with mozzarella, ricotta, and ham.', 'Stuffed Italian calzone.', 'Food', 'Pizza', 'FOOD', 13.00, 0, 0, 'USD', 1, 0, 0, 'calzone-pizza.jpg', 'calzone-pizza.pdf', 4.4, 80, 300, 200, 0, 0, 0, 1, 0, NULL, CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system');

-- 3. Item <-> Ingredient
-- Pizza Napoletana (item_id = 1)
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot)
VALUES
(1, 1, 200, 'g', 0.01),
(1, 2, 100, 'ml', 0.05),
(1, 3, 150, 'g', 0.08),
(1, 4, 5, 'g', 0.10);

-- Pizza Margherita (item_id = 2)
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot)
VALUES
(2, 1, 200, 'g', 0.01),
(2, 2, 100, 'ml', 0.05),
(2, 3, 150, 'g', 0.08),
(2, 4, 5, 'g', 0.10);

-- Pepperoni Pizza (item_id = 3)
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot)
VALUES
(3, 1, 200, 'g', 0.01),
(3, 2, 100, 'ml', 0.05),
(3, 3, 150, 'g', 0.08),
(3, 5, 50, 'g', 0.12);

-- Calzone Pizza (item_id = 4)
INSERT INTO item_ingredient (item_id, ingredient_id, quantity, unit, cost_snapshot)
VALUES
(4, 1, 200, 'g', 0.01),
(4, 3, 150, 'g', 0.08),
(4, 6, 50, 'g', 0.09),
(4, 7, 50, 'g', 0.07);
