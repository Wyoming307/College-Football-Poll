--Conference USA Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Charlotte')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Florida Atlantic')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Florida International')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Louisiana Tech')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Marshall')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Middle Tennessee')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'North Texas')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Old Dominion')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Rice')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Southern Mississippi')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UAB')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UTEP')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UT San Antonio')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Western Kentucky')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Jacksonville State')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Jacksonville State')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Liberty')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'New Mexico State')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Conference USA')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Sam Houston State')
	, '2023-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;

