-- Create the database
CREATE DATABASE IF NOT EXISTS hbtn_0d_tvshows_rate;

-- Use the database
USE hbtn_0d_tvshows_rate;

-- Create tv_genres table
CREATE TABLE IF NOT EXISTS tv_genres (
	    id INT AUTO_INCREMENT PRIMARY KEY,
	    name VARCHAR(255) NOT NULL
	);

	-- Create tv_shows table
CREATE TABLE IF NOT EXISTS tv_shows (
	    id INT AUTO_INCREMENT PRIMARY KEY,
	    title VARCHAR(255) NOT NULL
	);

	-- Create tv_show_genres table
CREATE TABLE IF NOT EXISTS tv_show_genres (
	    tv_show_id INT,
	    tv_genre_id INT,
	    FOREIGN KEY (tv_show_id) REFERENCES tv_shows(id),
	    FOREIGN KEY (tv_genre_id) REFERENCES tv_genres(id)
	);

	-- Create tv_show_ratings table
CREATE TABLE IF NOT EXISTS tv_show_ratings (
	    tv_show_id INT,
	    rating INT NOT NULL,
	    FOREIGN KEY (tv_show_id) REFERENCES tv_shows(id)
	);

	-- Insert sample data into tv_genres
INSERT INTO tv_genres (name) VALUES
('Drama'),
('Comedy'),
('Adventure'),
('Fantasy'),
('Mystery'),
('Crime'),
('Suspense'),
('Thriller');

-- Insert sample data into tv_shows
INSERT INTO tv_shows (title) VALUES
('Better Call Saul'),
('Homeland'),
('Silicon Valley'),
('Game of Thrones'),
('Dexter'),
('House'),
('Breaking Bad'),
('The Last Man on Earth'),
('The Big Bang Theory'),
('New Girl');

-- Insert sample data into tv_show_genres
INSERT INTO tv_show_genres (tv_show_id, tv_genre_id) VALUES
(1, 1), -- Better Call Saul - Drama
(2, 1), -- Homeland - Drama
(3, 2), -- Silicon Valley - Comedy
(4, 3), -- Game of Thrones - Adventure
(4, 4), -- Game of Thrones - Fantasy
(5, 6), -- Dexter - Crime
(6, 1), -- House - Drama
(7, 1), -- Breaking Bad - Drama
(8, 3), -- The Last Man on Earth - Adventure
(9, 2), -- The Big Bang Theory - Comedy
(10, 2); -- New Girl - Comedy

-- Insert sample data into tv_show_ratings
INSERT INTO tv_show_ratings (tv_show_id, rating) VALUES
(1, 163), -- Better Call Saul
(2, 145), -- Homeland
(3, 82), -- Silicon Valley
(4, 79), -- Game of Thrones
(5, 24), -- Dexter
(6, 21), -- House
(7, 16), -- Breaking Bad
(8, 10), -- The Last Man on Earth
(9, 0), -- The Big Bang Theory
(10, 0); -- New Girl
