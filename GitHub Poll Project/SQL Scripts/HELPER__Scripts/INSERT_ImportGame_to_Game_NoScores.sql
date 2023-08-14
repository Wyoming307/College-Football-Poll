/*** 
This query allows you to import data from the "ImportGame" table into the "Game" table.
Make sure to update the parameters for the appropirate games/season you want to import.

This query should be used if the game has not been played and does not already exist in the "Game" table
***/
DECLARE @Season INT = 2023;
DECLARE @Week INT = 0;

--PRO TIP: Comment out the INSERT line to verify that the data you are selecting is the data you want to import. Uncomment to INSERT into the table.
--INSERT INTO Game ( SeasonID, WeekTypeID, GameDate, HomeTeamID, AwayTeamID, ImportGameID)
SELECT (SELECT TOP 1 s.SeasonID FROM Season as s WHERE s.Year = ig.Season) as SeasonID
	,CASE WHEN ig.Week = 0 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 0')
	WHEN ig.Week = 1 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 1')
	WHEN ig.Week = 2 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 2')
	WHEN ig.Week = 3 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 3')
	WHEN ig.Week = 4 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 4')
	WHEN ig.Week = 5 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 5')
	WHEN ig.Week = 6 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 6')
	WHEN ig.Week = 7 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 7')
	WHEN ig.Week = 8 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 8')
	WHEN ig.Week = 9 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 9')
	WHEN ig.Week = 10 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 10')
	WHEN ig.Week = 11 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 11')
	WHEN ig.Week = 12 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 12')
	WHEN ig.Week = 13 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Week 13')
	WHEN ig.Week = 14 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Conference Championships')
	WHEN ig.Week = 15 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Army/Navy')
	WHEN ig.Week = 17 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Bowl Season')
	WHEN ig.Week = 18 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Playoff Semifinals')
	WHEN ig.Week = 19 THEN (SELECT TOP 1 wt.WeekTypeID FROM WeekType as wt WHERE wt.Name = 'Playoff Finals') END as WeekTypeID
	,ig.GameDate
	,ISNULL((SELECT TOP 1 t.TeamID FROM Team as t WHERE t.CollegeFootballDataTeamID = ig.HomeCollegeFootballDataTeamID),(SELECT TOP 1 TeamID FROM Team WHERE Name = 'Football Championship Subdivision')) as HomeTeamID
	,ISNULL((SELECT TOP 1 t.TeamID FROM Team as t WHERE t.CollegeFootballDataTeamID = ig.AwayCollegeFootballDataTeamID),(SELECT TOP 1 TeamID FROM Team WHERE Name = 'Football Championship Subdivision')) as AwayTeamID
	,ig.ImportGameID
FROM ImportGame as ig
WHERE ig.Season = @Season
AND ig.Week = @Week;
