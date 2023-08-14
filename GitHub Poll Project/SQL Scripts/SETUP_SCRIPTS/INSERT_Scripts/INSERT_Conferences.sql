INSERT INTO dbo.Conference (Name)
SELECT 'American Athletic Conference' UNION ALL 
SELECT 'Atlantic Coast Conference' UNION ALL 
SELECT 'Big 12 Conference' UNION ALL 
SELECT 'Big Ten Conference' UNION ALL 
SELECT 'Conference USA' UNION ALL 
SELECT 'Mid-American Conference' UNION ALL 
SELECT 'Mountain West Conference' UNION ALL 
SELECT 'PAC-12 Conference' UNION ALL 
SELECT 'Southeastern Conference' UNION ALL 
SELECT 'Sun Belt Conference' UNION ALL 
SELECT 'Independent P5' UNION ALL 
SELECT 'Independent G5' UNION ALL 
SELECT 'Football Championship Subdivision'
EXCEPT SELECT [Name]
FROM dbo.Conference;
