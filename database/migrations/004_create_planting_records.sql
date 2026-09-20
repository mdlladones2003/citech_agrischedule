CREATE TABLE planting_records (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    farm_id BIGINT UNSIGNED NOT NULL,
    crop_id BIGINT UNSIGNED NOT NULL,

    planting_date DATE NOT NULL,

    area_planted DECIMAL(10,2) NULL,
    area_unit VARCHAR(30) DEFAULT 'hectare',

    quantity_planted DECIMAL(12,2) NULL,
    quantity_unit VARCHAR(30) NULL,

    expected_harvest_date DATE NOT NULL,

    status ENUM(
        'planned',
        'growing',
        'ready',
        'harvested',
        'cancelled'
    ) NOT NULL DEFAULT 'growing',

    notes TEXT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_planting_farm
        FOREIGN KEY (farm_id)
        REFERENCES farms(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_planting_crop
        FOREIGN KEY (crop_id)
        REFERENCES crops(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);