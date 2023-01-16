/* Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de 
 l'alumne/a amb NIF 26902806M */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT dpt.nombre
FROM departamento dpt
	LEFT JOIN profesor prf ON prf.id_departamento = dpt.id
    LEFT JOIN asignatura asg ON asg.id_profesor = prf.id_profesor
    LEFT JOIN grado grd ON grd.id = asg.id_grado
where grd.nombre like 'Grado en Ingeniería Informática (Plan 2015)'
	AND !ISNULL(asg.id_profesor);


