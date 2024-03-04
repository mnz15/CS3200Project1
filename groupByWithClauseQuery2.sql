-- Fulfills Group By with a having clause of a location having more than 50 cafes
SELECT 
Location.country,
COUNT(Cafe.cafe_id) AS AmountOfCafe
FROM Cafe
JOIN Location ON Location.location_id = Cafe.location_id
GROUP BY Location.country
HAVING AmountOfCafe > 50
ORDER BY AmountOfCafe DESC;