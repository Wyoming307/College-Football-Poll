/***
This table lets us maniuplate the game data we import into our own schema/fields. 
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[WeekTypeID] [int] NOT NULL,
	[GameDate] [date] NOT NULL,
	[HomeTeamID] [int] NOT NULL,
	[HomeTeamPoints] [int] NULL,
	[AwayTeamID] [int] NOT NULL,
	[AwayTeamPoints] [int] NULL,
	[OverUnder] [float] NULL,
	[Spread] [float] NULL,
	[HomeMoneyLine] [int] NULL,
	[AwayMoneyLine] [int] NULL,
	[WinnerTeamID] [int] NULL,
	[LoserTeamID] [int] NULL,
	[OverUnderHit] [bit] NULL,
	[FavoriteCovered] [bit] NULL,
	[ImportGameID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([AwayTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([HomeTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([ImportGameID])
REFERENCES [dbo].[ImportGame] ([ImportGameID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([LoserTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([WeekTypeID])
REFERENCES [dbo].[WeekType] ([WeekTypeID])
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([WinnerTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO


