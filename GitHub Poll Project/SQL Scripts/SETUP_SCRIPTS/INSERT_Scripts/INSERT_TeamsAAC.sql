--American Athletic Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Cincinnati')
	, '2019-07-01'
	, '2023-06-30'  UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'East Carolina')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Houston')
	, '2019-07-01'
	, '2023-06-30' UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Memphis')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Navy')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'SMU')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'South Florida')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Temple')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Tulane')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Tulsa')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UCF')
	, '2019-07-01'
	, '2023-06-30'  UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Charlotte')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Florida Atlantic')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'North Texas')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Rice')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UAB')
	, '2023-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'American Athletic Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'UT San Antonio')
	, '2023-07-01'
	, NULL

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam
	