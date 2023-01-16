/* Retorna el llistat dels alumnes que van néixer en 1999. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE YEAR(prsn.fecha_nacimiento) = 1999;