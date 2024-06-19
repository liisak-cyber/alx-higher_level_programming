-- Lists all genres by their rating from the database hbtn_0d_tvshows_rate
-- Each record displays: tv_genres.name - rating sum
-- Results are sorted in descending order by their rating

SELECT g.name, SUM(r.rating) AS rating_sum
FROM tv_genres AS g
JOIN tv_show_genres AS sg ON g.id = sg.tv_genre_id
JOIN tv_show_ratings AS r ON sg.tv_show_id = r.tv_show_id
GROUP BY g.name
ORDER BY rating_sum DESC;

