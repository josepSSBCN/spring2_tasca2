/* Retorna un llistat amb els departaments que no tenen professors/es associats.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM profesor prf
	right JOIN departamento dpt ON dpt.id = prf.id_departamento
WHERE isnull(prf.id_departamento);
