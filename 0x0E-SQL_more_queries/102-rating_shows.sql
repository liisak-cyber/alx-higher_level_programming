-- Lists all shows by their rating from the database hbtn_0d_tvshows_rate
-- Each record displays: tv_shows.title - rating sum
-- Results are sorted in descending order by the rating

SELECT tv_shows.title, SUM(tv_show_ratings.rating) AS rating_sum
FROM tv_shows
JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.tv_show_id
GROUP BY tv_shows.title
ORDER BY rating_sum DESC;

