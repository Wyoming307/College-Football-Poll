--Mountain West Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Air Force')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Boise State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Colorado State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Fresno State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Hawai''i')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Nevada')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'New Mexico')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'San Diego State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'San José State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UNLV')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Utah State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Mountain West Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Wyoming')
	, '2019-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;
























