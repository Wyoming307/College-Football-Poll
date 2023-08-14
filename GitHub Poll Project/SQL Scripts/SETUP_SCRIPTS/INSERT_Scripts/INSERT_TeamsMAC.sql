--Mid-American Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Akron')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Ball State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Bowling Green')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Buffalo')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Central Michigan')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Eastern Michigan')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Kent State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Miami (OH)')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Northern Illinois')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Ohio')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Toledo')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mid-American Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Western Michigan')
	, '2019-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;













