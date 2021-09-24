--12. Countries Holding 'A'
SELECT [CountryName], [IsoCode] FROM Countries
	WHERE [CountryName] LIKE '%a%a%a%'
		ORDER BY [IsoCode]

SELECT [CountryName], [IsoCode] FROM Countries
	WHERE LEN([CountryName]) - LEN(REPLACE([CountryName], 'A', '')) >= 3
		ORDER BY [IsoCode]

--13. Mix of Peak and River Names
SELECT PeakName, RiverName,  LOWER(LEFT(PeakName, LEN(PeakName) - 1)+RiverName) AS Mix
	FROM Peaks, Rivers
	WHERE RIGHT(PeakName,1) = LEFT(RiverName,1)
	ORDER BY Mix