/* Retorna un llistat amb el nom de tots els graus existents en la base de dades i el 
 nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures 
 associades.. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre,
    count(asg.id) AS 'Nº D\'ASSIGNATURES'
FROM grado grs
	LEFT JOIN asignatura asg ON asg.id_grado = grs.id
GROUP BY grs.id
HAVING count(asg.id) > 40
ORDER BY count(asg.id);