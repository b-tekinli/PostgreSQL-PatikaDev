-- 1. Task: test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
	id INTEGER ,
	name VARCHAR(50),
	birthday DATE ,
	email VARCHAR(100)
); 

SELECT * FROM employee;



-- 2. Task: Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

INSERT INTO employee (id, name, birthday, email) VALUES (1, 'Şevval', '1929/07/02', 'sevval@gmail.com');
INSERT INTO employee (id, name, birthday, email) VALUES (2, 'Bilal', '1941/03/19', 'bilal@gmail.edu');
INSERT INTO employee (id, name, birthday, email) VALUES (3, 'Ahmet', '2005/08/22', 'ahmet@gmail.com');
INSERT INTO employee (id, name, birthday, email) VALUES (4, 'Melis', '1916/09/06', 'melis@gmail.com');
INSERT INTO employee (id, name, birthday, email) VALUES (5, 'Burak', '1996/08/31', 'burak@gmail.com');

SELECT * FROM employee;



-- 3. Task: Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'Şevval' ,
	birthday = '1929-07-02' ,
	email = 'sevval@gmail.com'
WHERE id = 1;

SELECT * FROM employee ;



UPDATE employee
SET name = 'Ahmet' ,
	birthday = '2005/08/22' ,
	email = 'ahmet@gmail.com'
WHERE name LIKE '%t%t%' 
RETURNING * ;



UPDATE employee
SET name = 'Melis' ,
	birthday = '1916/09/06' ,
	email = 'melis@gmail.com'
WHERE id > 49 ;

SELECT * FROM employee ;



UPDATE employee
SET name = 'Burak' ,
	birthday = '1989-12-05' ,
	email = 'burak@gmail.com'
WHERE id > 40 AND birthday > '2000-01-01' ; 

SELECT * FROM employee ;



UPDATE employee
SET name = 'Bilal' ,
	birthday = '1945-07-05' ,
	email = 'bilal@gmail.com'
WHERE id < 15 AND birthday > '1905-01-01' 
RETURNING *;



-- 4. Task: Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE name = 'Şevval'
RETURING * ;


DELETE FROM employee
WHERE birthday IS NULL
RETURNING * ;


DELETE FROM employee
WHERE email IS NULL
RETURNING * ;


DELETE FROM employee
WHERE id > 21;

SELECT * FROM employee;


DELETE FROM employee
WHERE birthday > '1996-05-06'
RETURNING * ;
