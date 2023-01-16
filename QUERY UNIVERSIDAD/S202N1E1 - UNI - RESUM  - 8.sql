/* Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en 
 cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna 
 amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	cres.anyo_inicio,
    COUNT(asma.id_alumno) AS 'Nº ALUMNES MATRICULATS'
FROM alumno_se_matricula_asignatura asma
	LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar
GROUP BY cres.id;
