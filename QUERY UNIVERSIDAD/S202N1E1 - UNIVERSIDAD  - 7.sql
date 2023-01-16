/* Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de 
 l'alumne/a amb NIF 26902806M */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @nif = '26902806M';

-- QUERY BODY
SELECT asg.nombre,
	cres.anyo_inicio,
    cres.anyo_fin
FROM persona prsn	
		LEFT JOIN alumno_se_matricula_asignatura asma ON asma.id_alumno = prsn.id
        LEFT JOIN asignatura asg ON asg.id = asma.id_asignatura
        LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar 
WHERE prsn.nif like @nif;


