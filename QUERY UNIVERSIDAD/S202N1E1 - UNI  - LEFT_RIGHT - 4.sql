/* Retorna un llistat amb els professors/es que no imparteixen cap assignatura. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prf.*
FROM profesor prf
	left JOIN asignatura asg ON asg.id_profesor = prf.id_departamento
WHERE isnull(asg.nombre);
