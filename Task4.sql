-- 1. Task: film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.

SELECT DISTINCT replacement_cost FROM film;



-- 2. Task: film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?

SELECT COUNT(DISTINCT replacement_cost) FROM film;



-- 3. Task: film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?

SELECT COUNT(*) FROM film
WHERE title LIKE '%T' AND rating = 'G';



-- 4. Task: country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?

SELECT COUNT(*) FROM country
WHERE country LIKE '_____';



-- 5. Task: city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';

