-- Demo farm
INSERT INTO farms (
    user_id,
    farm_name,
    location,
    area,
    area_unit,
    description
)
SELECT
    id,
    'Dela Cruz Family Farm',
    'Barangay Sample',
    2.50,
    'hectare',
    'Demo farm for system testing.'
FROM users
WHERE email = 'farmer@example.com'
LIMIT 1;