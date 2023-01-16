/* Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més 
car del fabricant Lenovo */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Asus';
SET @codiASUS = (SELECT fab.codigo 
					FROM fabricante fab 
                    WHERE fab.nombre like @fabricante
                    ORDER BY fab.codigo LIMIT 1);
SET @preuMig = (SELECT AVG(pro.precio) 
                    FROM producto pro 
                    WHERE pro.codigo_fabricante = @codiASUS);

-- QUERY BODY
SELECT *
FROM producto pro
WHERE pro.precio > @preuMig AND pro.codigo_fabricante = @codiASUS;



