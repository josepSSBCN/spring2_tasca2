/* Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. 
El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, 
segon cognom i nom. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE ISNULL(prsn.telefono);