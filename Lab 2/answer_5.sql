SELECT CountryCode, COUNT(*) AS CountCities FROM world32.City GROUP BY CountryCode ORDER BY CountCities DESC;
