INSERT INTO users (
    first_name,
    last_name,
    email,
    password,
    phone,
    role,
    status
) VALUES
(
    'System',
    'Administrator',
    'admin@example.com',
    '$2y$10$REPLACE_WITH_PASSWORD_HASH',
    '09123456789',
    'admin',
    'active'
),
(
    'Juan',
    'Dela Cruz',
    'farmer@example.com',
    'REPLACE_WITH_PASSWORD_HASH',
    '09987654321',
    'farmer',
    'active'
);