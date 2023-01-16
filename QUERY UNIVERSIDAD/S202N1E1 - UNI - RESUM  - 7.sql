/* Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits 
 que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom 
 del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha 
 d'aquest tipus. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre AS 'NOMBRE GRADO',
    asg.tipo AS 'TIPO ASIGNATURA',
    asg.nombre AS 'NOMBRE ASIGNATURA',
    SUM(asg.creditos) AS 'CREDITS TOTAL'    
FROM asignatura asg
	left JOIN grado grs ON asg.id_grado = grs.id
GROUP BY asg.nombre
ORDER BY asg.nombre desc;