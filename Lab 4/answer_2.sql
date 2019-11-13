SELECT result.Language, result.NumPeople FROM
(SELECT co.CountryCode, co.Language, c.Code, SUM((c.Population)*(co.Percentage / 100)) AS NumPeople
FROM world32.CountryLanguage co, world32.Country c
WHERE co.CountryCode = c.Code
GROUP BY co.Language) AS result
WHERE NumPeople > 1000000
ORDER BY NumPeople DESC;
