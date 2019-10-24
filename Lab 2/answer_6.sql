SELECT Region, Population, AVG(LifeExpectancy) AS AvgLife FROM world32.Country GROUP BY Region ORDER BY AvgLife DESC;
