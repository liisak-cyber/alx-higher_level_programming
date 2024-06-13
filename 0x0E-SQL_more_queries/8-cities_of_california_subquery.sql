-- Lists all the cities of California in the database hbtn_0d_usa

SELECT `cities`.`id`, `cities`.`names`
FROM `cities`
WHERE `cities`.`state_id` = (    
	SELECT `states`.`id`
	FROM `states`
	WHERE `states`.`name` = 'California'
)
ORDER BY `cities`.`id` ASC;
