# Ödev 9
-- 1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT city, country
   FROM country
   INNER JOIN city ON country.country_id = city.city_id;

-- 2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT customer.first_name, customer.last_name, payment.payment_id
   FROM customer
   INNER JOIN payment ON payment.id = customer.payment_id;

-- 3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
   SELECT customer.first_name, customer.last_name, rental.rental_id
   FROM customer
   INNER JOIN rental ON rental.id = customer.rental_id;
