CREATE TABLE harvest_records (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    planting_id BIGINT UNSIGNED NOT NULL,

    harvest_date DATE NOT NULL,

    quantity_harvested DECIMAL(12,2) NOT NULL,
    quantity_unit VARCHAR(30) NOT NULL DEFAULT 'kg',

    quality ENUM(
        'excellent',
        'good',
        'fair',
        'poor'
    ) NULL,

    notes TEXT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_harvest_planting
        FOREIGN KEY (planting_id)
        REFERENCES planting_records(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);