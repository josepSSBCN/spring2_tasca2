/* Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta 
el seu número de telèfon en la base de dades.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE ISNULL(prsn.telefono);