/*
 * List the titles of all films in the 'Children' category that have a rating of 'R' or 'NC-17'.
 *
 * NOTE:
 * Your results should not contain any duplicate titles.
 */

SELECT title, name, rating
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
WHERE name = 'Children'
  AND (rating = 'R' OR rating = 'NC-17')
;
