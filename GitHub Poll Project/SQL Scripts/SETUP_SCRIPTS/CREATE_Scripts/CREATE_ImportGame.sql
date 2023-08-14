/***
This table will store the data we are going to import in from https://collegefootballdata.com/ for each game
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ImportGame](
	[ImportGameID] [int] IDENTITY(1,1) NOT NULL,
	[CollegeFootballDataGameID] [int] NOT NULL,
	[Season] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[GameDate] [date] NOT NULL,
	[HomeCollegeFootballDataTeamID] [int] NOT NULL,
	[HomeTeamPoints] [int] NULL,
	[AwayCollegeFootballDataTeamID] [int] NOT NULL,
	[AwayTeamPoints] [int] NULL,
	[OverUnder] [float] NULL,
	[Spread] [float] NULL,
	[HomeMoneyLine] [int] NULL,
	[AwayMoneyLine] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImportGameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
