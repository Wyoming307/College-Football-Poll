--Atlantic Coast Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Boston College')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Clemson')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Duke')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Florida State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Georgia Tech')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Louisville')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Miami')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'NC State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'North Carolina')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Pittsburgh')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Syracuse')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Virginia')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Virginia Tech')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Atlantic Coast Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Wake Forest')
	, '2019-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;