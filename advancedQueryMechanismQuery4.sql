-- advanced query mechanisms using SELCECT CASE/WHEN
-- Sorting out ratings
SELECT
    Cafe.cafeName,
    UserFeedback.rating,
    CASE
        WHEN UserFeedback.rating = 5 THEN 'Excellent'
        WHEN UserFeedback.rating = 4 THEN 'Good'
        WHEN UserFeedback.rating = 3 THEN 'Average'
        WHEN UserFeedback.rating = 2 THEN 'Poor'
        ELSE 'Bad'
    END AS FeedbackCategory
FROM
    Cafe
JOIN UserFeedback ON Cafe.cafe_id = UserFeedback.cafe_id
ORDER BY
 UserFeedback.rating DESC;
