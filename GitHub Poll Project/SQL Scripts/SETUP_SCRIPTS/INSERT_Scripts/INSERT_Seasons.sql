INSERT INTO Season ([Year])
SELECT 2021 UNION ALL
SELECT 2022 UNION ALL
SELECT 2023 UNION ALL
SELECT 2024 UNION ALL
SELECT 2025

EXCEPT SELECT [Year]
FROM Season