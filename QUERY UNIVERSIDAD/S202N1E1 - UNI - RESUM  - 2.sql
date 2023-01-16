/* Calcula quants alumnes van néixer en 1999. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT count(*)
FROM persona
WHERE persona.tipo = @tipo AND YEAR(persona.fecha_nacimiento) = 1999;