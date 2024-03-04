-- one query joining 3 tables from UserPReference to Lists to Cafe
SELECT 
UserPreference.cafePreference,
count(Cafe.cafe_id) AS AmountOfCafes,
ROUND(AVG(lists.cost),2) AS AverageCost
FROM UserPreference
JOIN Lists ON UserPreference.list_id = Lists.list_id
JOIN Cafe ON Cafe.list_id = Lists.list_id
GROUP BY UserPreference.cafePreference
ORDER BY AverageCost ASC;