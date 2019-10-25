SELECT City.Name, Country.Name FROM world32.Country Country, world32.City City WHERE City.Name LIKE "A%" AND City.CountryCode = Country.Code;
