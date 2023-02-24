select f.film_id, title, c.name as "Category", 
i.store_id, 
s.address_id, 
st.first_name, 
st.last_name, 
st.last_name, 
ad.address, 
ad.city_id, 
ad.district, 
concat(a.first_name, a.last_name, a.last_name) AS "Nombre Completo", f.length "Duracion", (select avvg(length) from film) "Promedio"
FROM film_actor fa 
INNER JOIN film f ON fa.film_id = f.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id
INNER JOIN film_category AS fc ON f.film.id = fc.film_id
INNER JOIN Category c ON fc.category_id = c.category_id
INNER JOIN inventory AS i ON i.film_id = f.film_id
INNER JOIN store AS s ON i.store_id = s.store_id
INNER JOIN staff st ON st.staff_id = s.manager_staff_id
INNER JOIN address ad ON ad.address_id = f.film_id

ORDER BY 2;
