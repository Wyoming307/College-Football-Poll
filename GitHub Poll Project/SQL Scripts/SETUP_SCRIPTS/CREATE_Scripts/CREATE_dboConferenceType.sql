/***
Store any conference type in this table. The Winning/Losing Bonuses are for my poll where I award
teams points based off if they beat a P5, G5, or FCS team.
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConferenceType](
	[ConferenceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[WinningConferenceTypeBonus] [float] NULL,
	[LosingConferenceTypeBonus] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConferenceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


