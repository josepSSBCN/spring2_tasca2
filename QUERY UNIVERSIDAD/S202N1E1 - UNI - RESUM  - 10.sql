/* Retorna totes les dades de l'alumne/a més jove. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT *
FROM persona prs
WHERE prs.tipo = @tipo
ORDER BY prs.fecha_nacimiento ASC LIMIT 1;
