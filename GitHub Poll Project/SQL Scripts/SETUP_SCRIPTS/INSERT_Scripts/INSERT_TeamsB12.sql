--Big 12 Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Baylor')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Iowa State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Kansas')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Kansas State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Oklahoma')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Oklahoma State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'TCU')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Texas')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Texas Tech')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'West Virginia')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'BYU')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Cincinnati')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Houston')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big 12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UCF')
	, '2023-07-01'
	, NULL 

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;
