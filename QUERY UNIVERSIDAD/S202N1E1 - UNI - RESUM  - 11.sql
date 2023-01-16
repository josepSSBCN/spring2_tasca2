/* Retorna un llistat amb els professors/es que tenen un departament associat i que 
 no imparteixen cap assignatura. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT *
FROM persona prs
	LEFT JOIN profesor prf ON prf.id_profesor = prs.id    
WHERE prs.tipo = @tipo
ORDER BY prs.fecha_nacimiento ASC LIMIT 1;
