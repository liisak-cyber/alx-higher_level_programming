sts all shows without the genre Comedy in the database hbtn_0d_tvshows
-- Records are sorted by ascending show title.

SELECT title
FROM tv_shows
WHERE id NOT IN (
	    SELECT tv_show_id
	    FROM tv_show_genres
	    WHERE tv_genre_id = (
		        SELECT id
			        FROM tv_genres
				        WHERE name = 'Comedy'
					    )
				)
				ORDER BY title ASC;
