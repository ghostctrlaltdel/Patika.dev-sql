-- Q1) 	city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country)
isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

SELECT city, country FROM country
LEFT JOIN city ON country.country_id = city.country_id;

-- Q2) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki
first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

SELECT p.payment_id, c.first_name, c.last_name FROM customer AS c
RIGHT JOIN payment AS p ON p.customer_id = c.customer_id;

-- Q3) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki
first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

SELECT r.rental_id, c.first_name, last_name FROM customer AS c
FULL JOIN rental AS r ON r.customer_id = c.customer_id;
