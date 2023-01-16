/* Retorna un llistat amb tots els departaments que no han impartit assignatures en cap 
curs escolar.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT dpt.*
FROM curso_escolar cres
	right join alumno_se_matricula_asignatura asma ON asma.id_curso_escolar = cres.id
	right join asignatura asg ON asg.id_grado = asma.id_asignatura
    right join profesor prf ON prf.id_profesor = asg.id_profesor
    right join departamento dpt ON dpt.id = prf.id_departamento
where isnull(asg.nombre)
group by dpt.id;


