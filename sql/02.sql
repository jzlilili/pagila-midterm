/*
 * Count the number of distinct customers who have rented a movie that 'RUSSELL BACALL' has acted in.
 *
 * NOTE:
 * You cannot hard-code Russell Bacall's actor_id.
 * Your where clause must include a condition using the "first_name" and "last_name" fields of the "actor" table.
 */

SELECT COUNT(*)
FROM
(
    SELECT customer_id
    FROM customer
    JOIN rental USING (customer_id)
    JOIN inventory USING (inventory_id)
    JOIN film USING (film_id)
    JOIN film_actor ON (film.film_id = film_actor.film_id)
    JOIN actor USING (actor_id)
    WHERE actor.first_name = 'RUSSELL'
      AND actor.last_name = 'BACALL'
    GROUP BY customer_id
) t
;
