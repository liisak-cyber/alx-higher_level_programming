-- 10. Genre ID by show
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
WHERE tv_show_genres.genre_id IS NOT NULL
ORDER BY tv_shows.title, tv_show_genres.genre_id;

-- 11. Genre ID for all shows
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id;

-- 12. No genre
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title;

-- 13. Number of shows by genre
SELECT g.name AS genre, COUNT(tg.genre_id) AS number_of_shows
FROM genres g
JOIN tv_show_genres tg ON g.id = tg.genre_id
GROUP BY g.id, g.name
ORDER BY number_of_shows DESC;

-- 14. My genres
SELECT g.name AS genre
FROM genres g
JOIN tv_show_genres tg ON g.id = tg.genre_id
JOIN tv_shows ts ON tg.tv_show_id = ts.id
WHERE ts.title = 'Dexter';

