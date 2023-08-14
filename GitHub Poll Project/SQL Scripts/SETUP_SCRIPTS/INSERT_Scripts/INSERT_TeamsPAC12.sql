--PAC-12 Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Arizona')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Arizona State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Colorado')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'California')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Oregon')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Oregon State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Stanford')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UCLA')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'USC')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Utah')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Washington State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'PAC-12 Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Washington')
	, '2019-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;










	












