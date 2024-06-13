-- List all shows with their linked genre_ids or NULL if no genre is linked, sorted correctly

SELECT
	tv_shows.title,
	IFNULL(GROUP_CONCAT(tv_show_genres.genre_id ORDER BY tv_show_genres.genre_id SEPARATOR ', '), 'NULL') AS genre_ids
FROM 
	tv_shows
LEFT JOIN
	tv_show_genres ON tv_shows.id = tv_show_genres.show_id
GROUP BY
	tv_shows.title
ORDER BY
	tv_shows.title ASC;
