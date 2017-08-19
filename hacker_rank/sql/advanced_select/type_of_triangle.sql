SELECT CASE
    WHEN (a + b) <= c THEN 'Not A Triangle'
    WHEN a = b AND c = b THEN 'Equilateral'
    WHEN a = b OR c = b OR c = a THEN 'Isosceles'
    ELSE 'Scalene' END
FROM triangles
