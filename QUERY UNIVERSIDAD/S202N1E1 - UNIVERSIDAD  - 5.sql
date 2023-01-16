/* Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, 
en el tercer curs del grau que té l'identificador 7. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM asignatura asg	
WHERE asg.cuatrimestre = 1 AND asg.curso = 3 AND asg.id_grado = 7;