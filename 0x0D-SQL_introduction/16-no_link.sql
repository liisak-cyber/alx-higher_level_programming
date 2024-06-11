-- Lists the number of records wit the same score in the table second_table.
-- Records are ordered by descending count.
SELECT `score`, `name`
FROM `second_table`
HAVING `name` IS NOT NULL
ORDER BY `score` DESC;
