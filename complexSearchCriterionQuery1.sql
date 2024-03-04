-- Filters out feadbacks with "Amazing", "Great", and "Good"
-- Fulfills complex search criterion
SELECT 
UserFeedback.feedbackDate,
Users.first_name,
Users.last_name,
UserFeedback.feedbackText
FROM Users
JOIN UserFeedback ON UserFeedback.user_id = Users.user_id
WHERE feedbackText LIKE "%Amazing%" 
OR feedbackText LIKE "%Great%"
OR feedbackText LIKE "%Good%";