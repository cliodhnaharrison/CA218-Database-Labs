SELECT co.Name, c.Name, ((c.Population/co.Population) * 100) AS Percentage
FROM world32.Country co, world32.City c
WHERE co.Code = c.CountryCode AND co.LifeExpectancy > 75
GROUP BY c.Name
ORDER BY Percentage DESC;
