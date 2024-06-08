-- Lists the number of records wit the same score in the table second_table.
-- Records are ordered by descending count.
SELECT `score`, COUNT(*) AS `number`
FROM `second_table`
GROUP BY  name`score`
ORDER BY `number` DESC;
