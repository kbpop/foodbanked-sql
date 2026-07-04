CREATE TABLE IF NOT EXISTS `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `products` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `item_levels` (
    `user_id` INT NOT NULL,
    `product_id` INT NOT nULL,
    `quantity` INT NOT NULL,
    `last_updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id) 
        REFERENCES users(id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id) 
        REFERENCES products(id),

    PRIMARY KEY (user_id, product_id)
);