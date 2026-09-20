CREATE TABLE crops (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    crop_name VARCHAR(150) NOT NULL,
    variety VARCHAR(150) NULL,

    growing_days INT UNSIGNED NOT NULL,

    description TEXT NULL,

    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    UNIQUE KEY unique_crop_variety (crop_name, variety)
);