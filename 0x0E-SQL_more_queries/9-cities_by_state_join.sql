-- List all cities with their state names from the database hbtn_0d_usa

SELECT
	`cities`.`id`,
	`cities`.`name`,
	`states`.`name` AS `state_name`
FROM
	`cities`,
	`states`
WHERE
	`cities`.`state_id` = `states`.`id`
ORDER BY
	`cities`.`id` ASC;
