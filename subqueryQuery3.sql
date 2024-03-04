-- Contains a subquery beverage average price
SELECT
    Cafe.cafeName,
    BeverageItem.beverage,
    BeverageItem.beveragePrice
FROM
    Cafe
JOIN Menu ON Cafe.cafe_id = Menu.cafe_id
JOIN BeverageItem ON Menu.beverage_id = BeverageItem.beverage_id
WHERE
    BeverageItem.beveragePrice < (
        SELECT AVG(BeverageItem.beveragePrice)
        FROM BeverageItem
    )
ORDER BY
    BeverageItem.beveragePrice ASC;
