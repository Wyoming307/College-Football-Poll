--Big Ten Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Illinois')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Indiana')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Iowa')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Maryland')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Michigan')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Michigan State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Minnesota')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Nebraska')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Northwestern')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Ohio State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Penn State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Purdue')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Rutgers')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Big Ten Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Wisconsin')
	, '2019-07-01'
	, NULL 

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;
