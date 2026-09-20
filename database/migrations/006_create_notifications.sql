CREATE TABLE notifications (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    user_id BIGINT UNSIGNED NOT NULL,

    planting_id BIGINT UNSIGNED NULL,

    type ENUM(
        'planting',
        'harvest',
        'system'
    ) NOT NULL DEFAULT 'system',

    title VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,

    notification_date DATETIME NOT NULL,

    is_read BOOLEAN NOT NULL DEFAULT FALSE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_notifications_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_notifications_planting
        FOREIGN KEY (planting_id)
        REFERENCES planting_records(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);