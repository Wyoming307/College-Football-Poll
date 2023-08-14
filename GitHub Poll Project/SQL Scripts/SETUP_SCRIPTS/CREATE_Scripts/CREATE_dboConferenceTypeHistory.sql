/***
This table allows you to track historically what level of competition a conference is considered to be at a certain point in time
For example, I can have the PAC12 a P5 conference until 2024 and then switch it to a G5 Conference in 2024
***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConferenceTypeHistory](
	[ConferenceTypeHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[ConferenceID] [int] NOT NULL,
	[ConferenceTypeID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConferenceTypeHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConferenceTypeHistory]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTypeHistory_Conference] FOREIGN KEY([ConferenceID])
REFERENCES [dbo].[Conference] ([ConferenceID])
GO

ALTER TABLE [dbo].[ConferenceTypeHistory] CHECK CONSTRAINT [FK_ConferenceTypeHistory_Conference]
GO

ALTER TABLE [dbo].[ConferenceTypeHistory]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTypeHistory_ConferenceType] FOREIGN KEY([ConferenceTypeID])
REFERENCES [dbo].[ConferenceType] ([ConferenceTypeID])
GO

ALTER TABLE [dbo].[ConferenceTypeHistory] CHECK CONSTRAINT [FK_ConferenceTypeHistory_ConferenceType]
GO


