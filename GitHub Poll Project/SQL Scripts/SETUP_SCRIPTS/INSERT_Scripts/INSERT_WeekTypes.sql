--Weeks in a College Football Season
INSERT INTO WeekType ([Name], [IsRegular], [IsConferenceChampionship], [IsBowl], [IsPlayoff])
SELECT 'Week 0', 1, 0, 0, 0 UNION ALL
SELECT 'Week 1', 1, 0, 0, 0 UNION ALL
SELECT 'Week 2', 1, 0, 0, 0 UNION ALL
SELECT 'Week 3', 1, 0, 0, 0 UNION ALL
SELECT 'Week 4', 1, 0, 0, 0 UNION ALL
SELECT 'Week 5', 1, 0, 0, 0 UNION ALL
SELECT 'Week 6', 1, 0, 0, 0 UNION ALL
SELECT 'Week 7', 1, 0, 0, 0 UNION ALL
SELECT 'Week 8', 1, 0, 0, 0 UNION ALL
SELECT 'Week 9', 1, 0, 0, 0 UNION ALL
SELECT 'Week 10', 1, 0, 0, 0 UNION ALL
SELECT 'Week 11', 1, 0, 0, 0 UNION ALL
SELECT 'Week 12', 1, 0, 0, 0 UNION ALL
SELECT 'Week 13', 1, 0, 0, 0 UNION ALL
SELECT 'Conference Championships', 0, 1, 0, 0 UNION ALL
SELECT 'Army/Navy', 1, 0, 0, 0 UNION ALL
SELECT 'Bowl Season', 0, 0, 1, 0 UNION ALL
SELECT 'Playoff Semifinals', 0, 0, 0, 1 UNION ALL
SELECT 'Playoff Finals', 0, 0, 0, 1

EXCEPT SELECT [Name], [IsRegular], [IsConferenceChampionship], [IsBowl], [IsPlayoff]
FROM WeekType