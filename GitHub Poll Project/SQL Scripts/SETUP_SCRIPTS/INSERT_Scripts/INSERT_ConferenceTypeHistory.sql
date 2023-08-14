INSERT INTO ConferenceTypeHistory (
	[ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
	)
SELECT c.ConferenceID
	,(
		SELECT TOP 1 CT.ConferenceTypeID
		FROM ConferenceType AS ct
		WHERE ct.Name = 'P5'
		)
	,'2019-01-01'
FROM Conference AS c
WHERE c.Name IN ('Atlantic Coast Conference', 'Big 12 Conference', 'Big Ten Conference', 'PAC-12 Conference', 'Southeastern Conference', 'Independent P5')

EXCEPT

SELECT [ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
FROM ConferenceTypeHistory;

INSERT INTO ConferenceTypeHistory (
	[ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
	)
SELECT c.ConferenceID
	,(
		SELECT TOP 1 CT.ConferenceTypeID
		FROM ConferenceType AS ct
		WHERE ct.Name = 'G5'
		)
	,'2019-01-01'
FROM Conference AS c
WHERE c.Name IN ('American Athletic Conference', 'Conference USA', 'Mid-American Conference', 'Mountain West Conference', 'Sun Belt Conference', 'Independent G5')

EXCEPT

SELECT [ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
FROM ConferenceTypeHistory;

INSERT INTO ConferenceTypeHistory (
	[ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
	)
SELECT c.ConferenceID
	,(
		SELECT TOP 1 CT.ConferenceTypeID
		FROM ConferenceType AS ct
		WHERE ct.Name = 'FCS'
		)
	,'2019-01-01'
FROM Conference AS c
WHERE c.Name IN ('Football Championship Subdivision')

EXCEPT

SELECT [ConferenceID]
	,[ConferenceTypeID]
	,[StartDate]
FROM ConferenceTypeHistory;
