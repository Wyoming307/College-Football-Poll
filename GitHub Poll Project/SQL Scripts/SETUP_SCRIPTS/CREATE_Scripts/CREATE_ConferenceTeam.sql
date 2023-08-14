/***
This table track a team's conference affiliation.
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConferenceTeam](
	[ConferenceTeamID] [int] IDENTITY(1,1) NOT NULL,
	[ConferenceID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConferenceTeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConferenceTeam]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTeam_Conference] FOREIGN KEY([ConferenceID])
REFERENCES [dbo].[Conference] ([ConferenceID])
GO

ALTER TABLE [dbo].[ConferenceTeam] CHECK CONSTRAINT [FK_ConferenceTeam_Conference]
GO

ALTER TABLE [dbo].[ConferenceTeam]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTeam_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[ConferenceTeam] CHECK CONSTRAINT [FK_ConferenceTeam_Team]
GO


