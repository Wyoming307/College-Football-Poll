--Southeastern Conference Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Alabama')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Arkansas')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Auburn')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Florida')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Georgia')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Kentucky')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'LSU')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Mississippi State')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Missouri')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Ole Miss')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'South Carolina')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Texas A&M')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Vanderbilt')
	, '2019-07-01'
	, NULL UNION ALL

SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Southeastern Conference')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Tennessee')
	, '2019-07-01'
	, NULL 

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;













	












