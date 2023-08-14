UPDATE Game
SET WinnerTeamID = CASE WHEN HomeTeamPoints > AwayTeamPoints THEN HomeTeamID ELSE AwayTeamID END
, LoserTeamID = CASE WHEN HomeTeamPoints > AwayTeamPoints THEN AwayTeamID ELSE HomeTeamID END