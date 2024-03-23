# Recap
-- 1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacemet_cost u en düşük 4 filmi sıralayınız.
   SELECT title,length,replacement_cost
   FROM film
   WHERE title LIKE 'K%' 
   ORDER BY length DESC, replacement_cost ASC
   LIMIT 4;

-- 2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
   SELECT rating, COUNT(rating)
   FROM film
   ORDER BY COUNT(rating) DESC
   LIMIT 1;

-- 3. cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
   SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(payment_id) 
   FROM customer
   INNER JOIN payment ON customer.customer_id = payment.customer_id
   GROUP BY customer.customer_id
   ORDER BY COUNT(payment_id) DESC
   LIMIT 1;

-- 4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
   SELECT category.category_id,category.name, COUNT(film_id)
   FROM film_category
   INNER JOIN category ON category.category_id = film_category.category_id
   GROUP BY category.category_id
   ORDER BY category_id;

-- 5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
   SELECT COUNT(*) FROM film
   WHERE title ILIKE '%e%e%e%e%'
