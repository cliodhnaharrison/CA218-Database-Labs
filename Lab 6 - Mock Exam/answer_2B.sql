SELECT c.Name, c.Population, COUNT(l.Language) AS num_languages
FROM world32.Country c, world32.CountryLanguage l
WHERE Population > (SELECT AVG(Population) FROM world32.Country) AND c.Code = l.CountryCode
GROUP BY l.CountryCode
ORDER BY num_languages DESC;
