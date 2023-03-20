-- Название и год выхода альбомов, вышедших в 2018 году.
SELECT album_name, "year" FROM Album
WHERE "year" >= 2018;

-- Название и продолжительность самого длительного трека.
SELECT track_name, track_lenght FROM Track 
ORDER BY track_lenght DESC  
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name FROM Track 
WHERE track_lenght >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM Collection 
WHERE "year" BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM Artist 
WHERE NOT artist_name LIKE '%% %%'

--Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM Track 
WHERE track_name LIKE 'my';

SELECT track_name FROM Track 
WHERE track_name LIKE 'мой';