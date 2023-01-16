/* Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura 
 durant el curs escolar 2018/2019. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @inyear = 2018;
SET @endyear = 2019;

-- QUERY BODY
SELECT prsn.*,
	cres.anyo_inicio,
    cres.anyo_fin
FROM persona prsn
	LEFT JOIN alumno_se_matricula_asignatura asma ON asma.id_alumno = prsn.id
    LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar
WHERE cres.anyo_inicio = @inyear AND cres.anyo_fin = @endyear;