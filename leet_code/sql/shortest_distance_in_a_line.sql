SELECT
    MIN(ABS(point1.x - point2.x)) AS shortest
FROM
    point point1
        JOIN
    point point2 ON point1.x != point2.x
