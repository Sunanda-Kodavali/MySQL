 -- Exercises:

-- 2 - Select an actor for instance (Keanu Reeves) how much salary did he get from all his movies
-- Hint: Use the SUM() function

-- 3 - What is the Average salary for a specific actor (for instance: Keanu Reeves)

-- 4 - What is the Average salaty for actors grouped by GENRE
-- Hint: Research GROUP BY

-- 5 - Which is the highest paid actor if we sum all the salaries from all the movies grouped by actor
 
 
 
SELECT sum(mha.salary) FROM actors a JOIN movies_has_actors mha on a.id = mha.actors_id where a.name LIKE 'Prabhas';

SELECT avg(mha.salary) FROM actors a JOIN movies_has_actors mha on a.id = mha.actors_id where a.name LIKE 'Prabhas';

SELECT g.name as genre, avg(mha.salary) AS avg_salary FROM movies_has_actors mha JOIN movies m on m.id = mha.movies_id 
																		JOIN genres g on g.id = m.genres_id 
																		JOIN actors a on a.id = mha.actors_id where a.name LIKE 'Prabhas' group by g.name;

SELECT MAX(high_sal) AS high_sal
FROM (SELECT sum(mha.salary) as high_sal, name FROM actors a JOIN movies_has_actors mha on a.id = mha.actors_id group by actors_id) AS actor_highpaid;