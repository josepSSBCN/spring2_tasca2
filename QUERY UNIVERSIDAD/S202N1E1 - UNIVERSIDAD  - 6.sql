/* Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan 
vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom 
del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el 
nom. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	prsn.apellido1,
    prsn.apellido2,
    prsn.nombre,
    dpt.nombre
FROM profesor prf
		INNER JOIN persona prsn ON prsn.id = prf.id_profesor
        INNER JOIN departamento dpt ON dpt.id = prf.id_departamento
ORDER BY prsn.nombre;


