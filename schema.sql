CREATE TABLE IF NOT EXISTS `organizations` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(150) NOT NULL,
    `org_type` ENUM('foodbank', 'partner_agency') NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY `uniq_org_name_type` (`name`, `org_type`)
);

CREATE TABLE IF NOT EXISTS `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL,
    `password_hash` VARCHAR(255) NOT NULL,
    `account_type` ENUM('donor', 'employee', 'partner', 'admin') NOT NULL DEFAULT 'donor',
    `verification_status` ENUM('pending', 'verified', 'rejected') NOT NULL DEFAULT 'verified',
    `organization_id` INT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE KEY `uniq_email` (`email`),
    CONSTRAINT fk_organization
        FOREIGN KEY (`organization_id`)
        REFERENCES `organizations`(`id`)
);

CREATE TABLE IF NOT EXISTS `products` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `p_name` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `item_levels` (
    `user_id` INT NOT NULL,
    `product_id` INT NOT nULL,
    `quantity` INT NOT NULL,
    `inserted_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(id),

    PRIMARY KEY (user_id, product_id, inserted_at)
);
