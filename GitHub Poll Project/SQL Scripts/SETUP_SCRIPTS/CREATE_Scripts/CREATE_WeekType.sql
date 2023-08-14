/***
This table will let you mark what type a week is in the season (i.e regular vs. postseason vs. other?)
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WeekType](
	[WeekTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[IsRegular] BIT NOT NULL,
	[IsConferenceChampionship] BIT NOT NULL,
	[IsBowl] BIT NOT NULL,
	[IsPlayoff] BIT NOT NULL

PRIMARY KEY CLUSTERED 
(
	[WeekTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


