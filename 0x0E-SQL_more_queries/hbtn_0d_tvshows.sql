-- 1. List all TV shows
SELECT * FROM tv_shows;

-- 2. List TV shows with their genres
SELECT ts.title AS show_title, g.name AS genre_name
FROM tv_shows ts
LEFT JOIN tv_show_genres tg ON ts.id = tg.tv_show_id
LEFT JOIN genres g ON tg.genre_id = g.id
ORDER BY ts.title;

-- 3. Count of TV shows by genre
SELECT g.name AS genre, COUNT(tg.tv_show_id) AS number_of_shows
FROM genres g
LEFT JOIN tv_show_genres tg ON g.id = tg.genre_id
GROUP BY g.id, g.name
ORDER BY number_of_shows DESC;

-- 4. TV shows airing in a specific year
SELECT title, release_year
FROM tv_shows
WHERE release_year = 2023; -- Replace with the desired year

-- 5. TV shows with their average ratings
SELECT ts.title AS show_title, AVG(tr.rating) AS average_rating
FROM tv_shows ts
LEFT JOIN tv_show_ratings tr ON ts.id = tr.tv_show_id
GROUP BY ts.id, ts.title
ORDER BY average_rating DESC;

-- 6. TV shows with no ratings
SELECT title
FROM tv_shows
WHERE id NOT IN (SELECT tv_show_id FROM tv_show_ratings);

-- 7. TV shows and their directors
SELECT ts.title AS show_title, d.name AS director_name
FROM tv_shows ts
LEFT JOIN tv_show_directors td ON ts.id = td.tv_show_id
LEFT JOIN directors d ON td.director_id = d.id
ORDER BY ts.title;

-- 8. TV shows with a specific director
SELECT ts.title AS show_title, d.name AS director_name
FROM tv_shows ts
LEFT JOIN tv_show_directors td ON ts.id = td.tv_show_id
LEFT JOIN directors d ON td.director_id = d.id
WHERE d.name = 'David Lynch'; -- Replace with the desired director name

-- 9. TV shows with their main cast
SELECT ts.title AS show_title, c.name AS cast_member
FROM tv_shows ts
LEFT JOIN tv_show_cast tsc ON ts.id = tsc.tv_show_id
LEFT JOIN cast_members c ON tsc.cast_id = c.id
ORDER BY ts.title;

-- 10. TV shows released in a specific country
SELECT title, release_year, country
FROM tv_shows
WHERE country = 'United States'; -- Replace with the desired country

-- 11. TV shows with their episode counts
SELECT ts.title AS show_title, COUNT(te.id) AS episode_count
FROM tv_shows ts
LEFT JOIN episodes te ON ts.id = te.tv_show_id
GROUP BY ts.id, ts.title
ORDER BY episode_count DESC;

-- 12. TV shows and their seasons
SELECT ts.title AS show_title, COUNT(DISTINCT season_number) AS number_of_seasons
FROM tv_shows ts
LEFT JOIN episodes te ON ts.id = te.tv_show_id
GROUP BY ts.id, ts.title
ORDER BY number_of_seasons DESC;
