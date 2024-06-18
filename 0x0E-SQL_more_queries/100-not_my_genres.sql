-- Select all genres not linked to the show "Dexter"
SELECT name
FROM tv_genres
WHERE id NOT IN (
	    SELECT tv_genre_id
	    FROM tv_show_genres
	    WHERE tv_show_id = (
		        SELECT id
			        FROM tv_shows
				        WHERE title = 'Dexter'
					    )
				)
				ORDER BY name ASC;
