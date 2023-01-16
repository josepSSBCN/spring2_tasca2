/* Retorna un llistat amb el nom de tots els graus existents en la base de dades i el 
 nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que 
 no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. 
 El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre,
    count(asg.id)
FROM grado grs
	LEFT JOIN asignatura asg ON asg.id_grado = grs.id
GROUP BY grs.id
ORDER BY count(asg.id) DESC;