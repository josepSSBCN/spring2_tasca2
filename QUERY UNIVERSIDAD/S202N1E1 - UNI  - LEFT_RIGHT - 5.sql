/* Retorna un llistat amb les assignatures que no tenen un professor/a assignat. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT asg.*
FROM profesor prf
	right JOIN asignatura asg ON asg.id_profesor = prf.id_departamento
WHERE isnull(asg.id_profesor)
GROUP BY asg.nombre;
