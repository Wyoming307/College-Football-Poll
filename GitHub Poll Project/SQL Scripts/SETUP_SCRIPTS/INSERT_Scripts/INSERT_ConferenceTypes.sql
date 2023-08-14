INSERT INTO ConferenceType ([Name], [WinningConferenceTypeBonus], [LosingConferenceTypeBonus])
SELECT 'P5', 75, 25 UNION ALL 
SELECT 'G5', 60, 40 UNION ALL 
SELECT 'FCS', 10, 90
EXCEPT SELECT [Name], [WinningConferenceTypeBonus], [LosingConferenceTypeBonus]
FROM ConferenceType 