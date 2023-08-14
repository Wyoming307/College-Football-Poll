--Independent G5 Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Army')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'BYU')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Liberty')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'New Mexico State')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UMass')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Independent G5')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Connecticut')
	, '2019-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;























	












