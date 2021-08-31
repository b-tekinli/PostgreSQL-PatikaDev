-- 1. Task: film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) AS LongFilms FROM film
WHERE length > (SELECT AVG(length) FROM film);



-- 2. Task: film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*) AS HeightestRate FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);



-- 3. Task: film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);



-- 4. Task: payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT first_name, last_name, SUM(amount) AS MaxShopCus FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 10;


