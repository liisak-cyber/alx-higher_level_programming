-- Creates a database hbtn_0d_usa and the table states

-- Create the database
CREATE DATABASE IF NOT EXISTS `hbtn_0d_usa`;

-- Create the table within the hbtn_0d_usa database
USE `hbtn_0d_usa`;

CREATE TABLE IF NOT EXISTS `states` (
    `id` INT NOT NULL,
    `name` VARCHAR(256)
);
