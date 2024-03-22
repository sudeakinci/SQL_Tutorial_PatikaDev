# Ödev 9
-- 1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT city, country
   FROM country
   INNER JOIN city ON country.country_id = city.city_id;

-- 2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT first_name, last_name, payment_id
   FROM payment
   INNER JOIN payment ON customer.customer_id = payment.payment_id;

-- 3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT first_name, last_name, rental_id
   FROM customer
   INNER JOIN rental ON customer.customer_id = rental.rental_id;
