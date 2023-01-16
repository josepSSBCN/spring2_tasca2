/* Retorna el nombre total d'alumnes que hi ha. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT count(*)
FROM persona
WHERE persona.tipo = @tipo;