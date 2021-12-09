-- Question 1

SELECT city, city_id
FROM city
WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');


-- Question 2

SELECT district
FROM address
WHERE city_id IN
(
  SELECT city_id
  FROM city
  WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);


-- Bonus

SELECT first_name, last_name
FROM customer cus
WHERE address_id IN
(
  SELECT address_id
  FROM address a
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city LIKE 'Q%'
  )
);



SELECT s.store_id, SUM(amount) AS Gross
FROM payment AS p
  JOIN rental AS r
  ON (p.rental_id = r.rental_id)
    JOIN inventory AS i
    ON (i.inventory_id = r.inventory_id)
      JOIN store AS s
      ON (s.store_id = i.store_id)
      GROUP BY s.store_id;






SELECT s.store_id, SUM(amount) AS Gross
FROM payment AS p
  JOIN rental AS r using(rental_id)
    JOIN inventory AS i using(inventory_id)
      JOIN store AS s using(store_id)
      GROUP BY s.store_id;
