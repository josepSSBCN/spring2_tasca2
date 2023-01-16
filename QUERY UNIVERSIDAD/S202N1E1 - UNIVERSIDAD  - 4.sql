/* Retorna el llistat de professors/es que no han donat d'alta el seu número de 
telèfon en la base de dades i a més el seu NIF acaba en K. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM persona prsn
	LEFT JOIN profesor prf ON prf.id_profesor = prsn.id
WHERE ISNULL(prsn.telefono) AND prsn.nif like '%K';