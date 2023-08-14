/***
This script is an example on how you can query the database for specific information.
This query returns the games in a specific season/week. Update the parameters to change
the results returned.
***/

DECLARE @Season INT = 2023;
--PRO TIP: Run the commented out query below to see the "Week Names"
--SELECT * FROM WeekType;
DECLARE @Week VARCHAR(MAX) = 'Week 0';

SELECT g.GameID
	,s.Year
	,wt.Name
	,g.GameDate
	,home.Name + ' ' + home.Mascot AS HomeTeam
	,away.Name + ' ' + away.Mascot AS AwayTeam
FROM Game AS g
INNER JOIN Season AS s
	ON s.SeasonID = g.SeasonID
INNER JOIN WeekType AS wt
	ON wt.WeekTypeID = g.WeekTypeID
INNER JOIN Team AS home
	ON home.TeamID = g.HomeTeamID
INNER JOIN Team AS away
	ON away.TeamID = g.AwayTeamID
WHERE s.Year = @Season
	AND wt.Name = @Week;
