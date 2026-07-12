INSERT INTO users(username) VALUES 
    ('john_doe'),
    ('jane_smith');

INSERT INTO products(p_name) VALUES 
    ('carrots'),
    ('bananas');

INSERT INTO item_levels(user_id, product_id, quantity) VALUES 
    (1, 1, 5),
    (1, 2, 4),
    (2, 2, 1);

INSERT INTO item_levels(user_id, product_id, quantity, inserted_at) VALUES 
    (1, 1, 1, '2026-07-12 10:00:00');