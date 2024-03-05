-- 1.
-- Создайте таблицу ФИЛЬМЫ
-- АТРИБУТЫ :
-- id - первичный ключ, автоматически увеличиваемый.
-- title - обязательное поле для заполнения.
-- release_date - дата выхода фильма.
-- genre - жанр фильма.
-- duration - длительность фильма в минутах.
-- ЗАДАНИЕ:
-- Получить список всех фильмов вместе с их названиями, датами выхода и жанрами.
-- Найти фильмы, вышедшие после 2010 года.
-- Получить список фильмов жанра "Фантастика".
-- Найти фильмы с длительностью более 150 минут.
-- Получить список фильмов, названия которых начинаются на букву "В".
-- Найти фильмы жанра "Боевик", вышедшие до 2005 года.
-- Найти фильмы с длительностью менее 120 минут.

CREATE TABLE MOVIES (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    release_date DATE,
    genre TEXT,
    duration INTEGER
);

INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Avatar', '2009-12-18', 'Science Fiction', 162);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('The Dark Knight', '2008-07-18', 'Action', 152);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Inception', '2010-07-16', 'Science Fiction', 148);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Interstellar', '2014-11-07', 'Science Fiction', 169);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Pulp Fiction', '1994-10-14', 'Crime', 154);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('The Matrix', '1999-03-31', 'Science Fiction', 136);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Fight Club', '1999-10-15', 'Drama', 139);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Gladiator', '2000-05-05', 'Action', 155);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('The Shawshank Redemption', '1994-10-14', 'Drama', 142);
INSERT INTO MOVIES (title, release_date, genre, duration) VALUES ('Forrest Gump', '1994-07-06', 'Drama', 142);

-- Получить список всех фильмов вместе с их названиями, датами выхода и жанрами.
SELECT title, release_date, genre
FROM MOVIES;

-- Найти фильмы, вышедшие после 2010 года.
SELECT *
FROM MOVIES
WHERE release_date > '2010-01-01';

-- Получить список фильмов жанра "Фантастика".
SELECT *
FROM MOVIES
WHERE genre = 'Science Fiction';

-- Найти фильмы с длительностью более 150 минут.
SELECT *
FROM MOVIES
WHERE duration > 150;

-- Получить список фильмов, названия которых начинаются на букву "В".
SELECT *
FROM MOVIES
WHERE title LIKE 'V%';

-- Найти фильмы жанра "Боевик", вышедшие до 2005 года.
SELECT *
FROM MOVIES
WHERE genre = 'Action' AND release_date < '2005-01-01';

-- Найти фильмы с длительностью менее 120 минут.
SELECT *
FROM MOVIES
WHERE duration < 120;

/*---------------------------------------------------------------------*/

-- 2.
-- Создайте таблицу "Альбомы" со следующими атрибутами:
-- id - первичный ключ, автоматически увеличиваемый.
-- title - обязательное поле для заполнения, название альбома.
-- artist - обязательное поле для заполнения, исполнитель альбома.
-- release_date - дата выпуска альбома.
-- genre - жанр музыки в альбоме.
-- Задача:
-- Получить список всех альбомов вместе с их названиями, исполнителями, датами выпуска и жанрами.
-- Найти альбомы, выпущенные после 2015 года.
-- Получить список альбомов жанра "Рок".
-- Найти альбомы с названием, начинающимся на букву "S".
-- Получить список альбомов, исполнителями которых являются "The Beatles".
-- Найти альбомы жанра "Хип-хоп", выпущенные до 2010 года.
-- Найти альбомы с датой выпуска после 2000 года и жанром "Поп".

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    artist TEXT NOT NULL,
    release_date DATE,
    genre TEXT
);

INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Back in Black', 'AC/DC', '1980-07-25', 'Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('The Dark Side of the Moon', 'Pink Floyd', '1973-03-01', 'Progressive Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Thriller', 'Michael Jackson', '1982-11-30', 'Pop');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Hotel California', 'Eagles', '1976-12-08', 'Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Abbey Road', 'The Beatles', '1969-09-26', 'Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Rumours', 'Fleetwood Mac', '1977-02-04', 'Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Led Zeppelin IV', 'Led Zeppelin', '1971-11-08', 'Hard Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Back to Black', 'Amy Winehouse', '2006-10-27', 'Soul');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Darkness on the Edge of Town', 'Bruce Springsteen', '1978-06-02', 'Rock');
INSERT INTO Albums (title, artist, release_date, genre) VALUES ('Born to Run', 'Bruce Springsteen', '1975-08-25', 'Rock');

-- Получить список всех альбомов вместе с их названиями, исполнителями, датами выпуска и жанрами.
SELECT title, artist, release_date, genre
FROM Albums;

-- Найти альбомы, выпущенные после 2015 года.
SELECT *
FROM Albums
WHERE release_date > '2015-01-01';

-- Получить список альбомов жанра "Рок".
SELECT *
FROM Albums
WHERE genre = 'Rock';

-- Найти альбомы с названием, начинающимся на букву "S".
SELECT *
FROM Albums
WHERE title LIKE 'S%';

-- Получить список альбомов, исполнителями которых являются "The Beatles".
SELECT *
FROM Albums
WHERE artist = 'The Beatles';

-- Найти альбомы жанра "Хип-хоп", выпущенные до 2010 года.
SELECT *
FROM Albums
WHERE genre = 'Hip-Hop' AND release_date < '2010-01-01';

-- Найти альбомы с датой выпуска после 2000 года и жанром "Поп".
SELECT *
FROM Albums
WHERE release_date > '2000-01-01' AND genre = 'Pop';
