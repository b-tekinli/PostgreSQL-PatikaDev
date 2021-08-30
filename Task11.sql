-- 1. Task: actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(SELECT first_name FROM actor)

UNION

(SELECT first_name FROM customer);



-- 2. Task: actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

(SELECT first_name FROM actor)

INTERSECT

(SELECT first_name FROM customer);



-- 3. Task: actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

(SELECT first_name FROM actor)

EXCEPT

(SELECT first_name FROM customer);



-- 4. Task: İlk 3 sorguyu tekrar eden veriler için de yapalım.


-- 4.1: Tekrar eden veriler için.

(SELECT first_name FROM actor)

UNION ALL

(SELECT first_name FROM customer)



-- 4.2: Tekrar eden veriler için.

(SELECT first_name FROM actor)

INTERSECT ALL

(SELECT first_name FROM customer)



-- 4.3: Tekrar eden veriler için.

(SELECT first_name FROM actor)

EXCEPT ALL

(SELECT first_name FROM customer)


