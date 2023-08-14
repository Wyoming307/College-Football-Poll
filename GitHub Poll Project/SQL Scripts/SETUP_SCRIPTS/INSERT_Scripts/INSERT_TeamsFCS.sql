--Football Championship Subdivision Teams 2019 through 2023
INSERT INTO ConferenceTeam ([ConferenceID], [TeamID], [StartDate], [EndDate])
SELECT (SELECT TOP 1 ConferenceID FROM Conference WHERE Name = 'Football Championship Subdivision')
	, (SELECT TOP 1 TeamID FROM Team WHERE Name = 'Football Championship Subdivision')
	, '2019-07-01'
	, NULL 

EXCEPT SELECT [ConferenceID], [TeamID], [StartDate], [EndDate]
FROM ConferenceTeam;




















	












