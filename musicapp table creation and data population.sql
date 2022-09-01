-- task: Create relational  DB of your choice with minimum 5 tables
-- task: Set  Primary  and  Foreign  Key  constraints  to  create relations between the tables 
-- DB created called musicapp1. Contains 6 tables with primary and foreign keys. 

CREATE DATABASE MusicApp1;
use musicapp1;
CREATE TABLE Artist (
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
	name varchar(50),
    PRIMARY KEY (id)
);
CREATE TABLE Genre (
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
	name varchar(50),
    PRIMARY KEY (id)
);
CREATE TABLE Album (
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
	artist_id INT,
	title varchar(50),
    genre_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (artist_id) 
    REFERENCES Artist(id),
    FOREIGN KEY (genre_id)
    REFERENCES genre(id)
);

CREATE TABLE Discography (
	id	INT NOT NULL UNIQUE AUTO_INCREMENT,
	artist_id INT,
    album_id INT,
	release_year INT,
    PRIMARY KEY (id),
    FOREIGN KEY (artist_id)
    REFERENCES Artist(id),
    FOREIGN KEY (album_id)
    REFERENCES album(id)
);
CREATE TABLE Tour (
	id	INT NOT NULL UNIQUE AUTO_INCREMENT,
    artist_id INT,
    on_tour	varchar(3),
    constraint check_tour_yesno
    CHECK (on_tour = 'yes' OR on_tour = 'no'),
    PRIMARY KEY (id),
    FOREIGN KEY (artist_id)
    REFERENCES artist(id)
);

create table Tour_Location (
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
    tour_id INT,
    artist_id INT,
    location varchar(50),
    PRIMARY KEY (id),
    FOREIGN KEY (tour_id)
    REFERENCES tour(id),
    FOREIGN KEY (artist_id)
    REFERENCES artist(id)
);

SET SQL_SAFE_UPDATES=0;
INSERT INTO Artist (id, name) 
values 
(NULL,'Panic! At the disco'),
(NULL, 'The Offspring'),
(NULL, 'Florence + the Machine'),
(NULL, 'Hundred Reasons'),
(NULL, 'Billy Talent');

insert into genre (id, name)
values
(NULL, 'Alternative Indie'),
(NULL, 'punk rock'),
(NULL, 'pop'),
(NULL, 'rock'),
(NULL, 'pop punk');

INSERT INTO Album (id, artist_id, title, genre_id) 
values
(NULL, 1, 'A Fever You Can\'t Sweat Out', 1),
(NULL, 1, 'Pretty. Odd.', 1),
(NULL, 1, 'Too Weird to Live, Too Rare to Die!', 1),
(NULL, 1, 'Death of a Bachelor', 1),
(NULL, 2, 'Ignition', 2),
(NULL, 2, 'Smash', 2),
(NULL, 2, 'Ixnay on the Hombre', 2),
(NULL, 2, 'Americana', 2),
(NULL, 2, 'Conspiracy of One', 2),
(NULL, 3, 'Lungs', 3),
(NULL, 3, 'Ceremonials', 3),
(NULL, 4, 'Ideas Above Our Station', 4),
(NULL, 4, 'Kill Your Own', 4),
(NULL, 5, 'Billy Talent', 5),
(NULL, 5, 'Billy Talent II', 5),
(NULL, 5, 'Billy Talent III', 5);

insert into Discography (id, artist_id, album_id, release_year)
values
(NULL, 1, 1, 2005),
(NULL, 1, 2, 2008),
(NULL, 1, 3, 2013),
(NULL, 1, 4, 2016),
(NULL, 2, 5, 1992),
(NULL, 2, 6, 1994),
(NULL, 2, 7, 1997),
(NULL, 2, 8, 1998),
(NULL, 2, 9, 2000),
(NULL, 3, 10, 2009),
(NULL, 3, 11, 2011),
(NULL, 4, 12, 2002),
(NULL, 4, 13, 2006),
(NULL, 5, 14, 2003),
(NULL, 5, 15, 2006),
(NULL, 5, 16, 2009);

insert into tour (id, artist_id, on_tour)
values
(NULL, 1, 'yes'),
(NULL, 2, 'yes'),
(NULL, 3, 'yes'),
(NULL, 4, 'yes'),
(NULL, 5, 'no');

insert into tour_location (id, tour_id, artist_id, location)
values
(NULL, 1, 1, 'london'),
(NULL, 1, 1, 'manchester'),
(NULL, 1, 1, 'cardiff'),
(NULL, 2, 2, 'toronto'),
(NULL, 2, 2, 'quebec'),
(NULL, 2, 2, 'montreal'),
(NULL, 3, 3, 'berlin'),
(NULL, 3, 3, 'munich'),
(NULL, 4, 4, 'london'),
(NULL, 4, 4, 'oxford');


