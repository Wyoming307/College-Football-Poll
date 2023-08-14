/***
This script is an example on how you can use the data to "rank" teams on a week by week basis
This query returns the games in a spencific season/week. Update the parameters to change
the results returned.
***/
DECLARE @Season INT = 2022;
--PRO TIP: Run the commented out query below to see the "Week Names"
--SELECT * FROM WeekType;
DECLARE @Week VARCHAR(MAX) = 'Week 0';

WITH WeeklyRankings AS (
SELECT g.GameID
	,g.GameDate
	,t.TeamID
	,t.Name + ' ' + t.Mascot as TeamName
	,c.Name + ' (' + ctype.Name + ')' as Conference
	,CASE WHEN  t.TeamID = g.HomeTeamID THEN g.HomeTeamPoints ELSE g.AwayTeamPoints END as PointsScored
	,'Winner' as WinnerOrLoser
	,wt.WeekTypeID
FROM Game AS g
INNER JOIN Season AS s
	ON s.SeasonID = g.SeasonID
INNER JOIN WeekType AS wt
	ON wt.WeekTypeID = g.WeekTypeID
INNER JOIN Team AS t
	ON t.TeamID = g.WinnerTeamID
INNER JOIN ConferenceTeam AS ct
	ON ct.TeamID = t.TeamID
INNER JOIN Conference as c
	ON c.ConferenceID = ct.ConferenceID
INNER JOIN ConferenceTypeHistory as cth	
	ON cth.ConferenceID = c.ConferenceID
INNER JOIN ConferenceType as ctype
	ON ctype.ConferenceTypeID = cth.ConferenceTypeID
WHERE s.Year = @Season
	AND wt.Name = @Week
	AND CAST(g.GameDate AS DATE) BETWEEN CAST(ct.StartDate AS DATE)
		AND CAST(ISNULL(ct.EndDate, '9999-12-30') AS DATE)
	AND CAST(g.GameDate AS DATE) BETWEEN CAST(cth.StartDate AS DATE)
		AND CAST(ISNULL(cth.EndDate, '9999-12-30') AS DATE)
UNION ALL 

SELECT g.GameID
	,g.GameDate
	,t.TeamID
	,t.Name + ' ' + t.Mascot as TeamName
	,c.Name + ' (' + ctype.Name + ')' as Conference
	,CASE WHEN  t.TeamID = g.HomeTeamID THEN g.HomeTeamPoints ELSE g.AwayTeamPoints END as PointsScored
	,'Loser' as WinnerOrLoser
	,wt.WeekTypeID
FROM Game AS g
INNER JOIN Season AS s
	ON s.SeasonID = g.SeasonID
INNER JOIN WeekType AS wt
	ON wt.WeekTypeID = g.WeekTypeID
INNER JOIN Team AS t
	ON t.TeamID = g.LoserTeamID
INNER JOIN ConferenceTeam AS ct
	ON ct.TeamID = t.TeamID
INNER JOIN Conference as c
	ON c.ConferenceID = ct.ConferenceID
INNER JOIN ConferenceTypeHistory as cth	
	ON cth.ConferenceID = c.ConferenceID
INNER JOIN ConferenceType as ctype
	ON ctype.ConferenceTypeID = cth.ConferenceTypeID
WHERE s.Year = @Season
	AND wt.Name = @Week
	AND CAST(g.GameDate AS DATE) BETWEEN CAST(ct.StartDate AS DATE)
		AND CAST(ISNULL(ct.EndDate, '9999-12-30') AS DATE)
	AND CAST(g.GameDate AS DATE) BETWEEN CAST(cth.StartDate AS DATE)
		AND CAST(ISNULL(cth.EndDate, '9999-12-30') AS DATE))

SELECT ROW_NUMBER() OVER (
			PARTITION BY wr.WeekTypeID ORDER BY wr.WinnerOrLoser DESC, wr.PointsScored DESC
			) AS WeeklyRanking
	,wr.*
FROM WeeklyRankings as wr



