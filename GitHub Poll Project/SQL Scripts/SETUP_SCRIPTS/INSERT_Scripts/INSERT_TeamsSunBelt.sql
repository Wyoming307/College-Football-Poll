--Sun Belt Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Appalachian State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Arkansas State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Coastal Carolina')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Georgia Southern')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Georgia State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'James Madison')
	, '2022-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Louisiana')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Louisiana Monroe')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'South Alabama')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Texas State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Troy')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Marshall')
	, '2022-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Old Dominion')
	, '2022-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Sun Belt Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Southern Mississippi')
	, '2022-07-01'
	, NULL 

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;




















	












