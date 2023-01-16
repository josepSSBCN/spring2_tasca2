/* 1.- Llista el nom de tots els productes que hi ha en la taula producto. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT nombre FROM producto;

/* 2.- Llista els noms i els preus de tots els productes de la taula producto. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT nombre, precio FROM producto;


/* 3.- Llista totes les columnes de la taula producto. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * FROM producto;


/* 4.- Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS NOMBRE,
	FORMAT(pro.precio,2) AS 'PREU €',
    FORMAT(((pro.precio * 1.07)),2) AS 'PREU $'
FROM producto pro;

/* 5.- Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). 
Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOM DE PRODUCTO',
	FORMAT(pro.precio,2) AS 'EUROS',
    FORMAT(((pro.precio * 1.07)),2) AS 'DOLARS'
FROM producto pro;


/* 6 .- Llista els noms i els preus de tots els productes de la taula producto,
convertint els noms a majúscula.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT UPPER(pro.nombre) AS 'NOM DE PRODUCTO',
	pro.precio AS 'PREUS'    
FROM producto pro;


/* 7.- Llista els noms i els preus de tots els productes de la taula producto, convertint els 
noms a minúscula. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT LOWER(pro.nombre) AS 'NOM DE PRODUCTO',
	pro.precio AS 'PREUS'    
FROM producto pro;


/* 8.- Llista el nom de tots els fabricants en una columna, i en una altra columna
 obtingui en majúscules els dos primers caràcters del nom del fabricant.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.nombre,
	LEFT(fab.nombre, 2) AS '2 CARACTERS DEL NOM'
FROM fabricante fab;


/* 9 .- Llista els noms i els preus de tots els productes de la taula producto, 
arrodonint el valor del preu. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMS',
	FORMAT(pro.precio, 0) AS 'PREU ARRODONIT'
FROM producto pro;


/* 10 .- Llista els noms i els preus de tots els productes de la taula producto, 
truncant el valor del preu per a mostrar-lo sense cap xifra decimal. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMS',
	TRUNCATE(pro.precio, 0) AS 'PREU TRUNCAT'
FROM producto pro;


/* 11 .- Llista el codi dels fabricants que tenen productes en la taula producto. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY fab.nombre;


/* 12 .- Llista el codi dels fabricants que tenen productes en la taula producto, eliminant 
els codis que apareixen repetits. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
GROUP BY fab.codigo
ORDER BY fab.nombre;


/* 13 .- Llista els noms dels fabricants ordenats de manera ascendent. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM fabricante fab
ORDER BY fab.nombre ASC;


/* 14 .- Llista els noms dels fabricants ordenats de manera descendent. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM fabricante fab
ORDER BY fab.nombre DESC;


/* 15 .- Llista els noms dels productes ordenats, en primer lloc, 
pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM fabricante fab
ORDER BY fab.nombre DESC;


/* 16.- Retorna una llista amb les 5 primeres files de la taula fabricante. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * FROM fabricante LIMIT 5;


/* 17 .- Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. 
La quarta fila també s'ha d'incloure en la resposta. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * FROM fabricante LIMIT 3,2;


/* 18 .- Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules 
ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * 
FROM producto
ORDER BY precio ASC
LIMIT 1;


/* 19 .- Llista el nom i el preu del producte més car. (Utilitza solament les clàusules 
ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * 
FROM producto
ORDER BY precio DESC
LIMIT 1;


/* 20 .- Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre
FROM producto pro
LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.codigo = 2;


/* 21 .- Retorna una llista amb el nom del producte, preu i nom de fabricant de tots 
els productes de la base de dades.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOM PRODUCTE',
	pro.precio AS 'PREU PRODUCTE',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante


/* 22 .- Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes 
de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOM PRODUCTE',
	pro.precio AS 'PREU PRODUCTE',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY fab.nombre ASC;


/* 23 .- Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i 
nom del fabricador, de tots els productes de la base de dades. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	pro.codigo AS 'CODI PRODUCTE',
    pro.nombre AS 'NOM PRODUCTE',
    fab.codigo AS 'CODI FABRICANT',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY pro.codigo ASC;


/* 24 .- Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
    pro.nombre AS 'NOM PRODUCTE',
    pro.precio AS 'PREU €',
    fab.codigo AS 'CODI FABRICANT',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY pro.precio ASC
LIMIT 1;


/* 25 .- Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
    pro.nombre AS 'NOM PRODUCTE',
    pro.precio AS 'PREU €',
    fab.codigo AS 'CODI FABRICANT',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY pro.precio DESC
LIMIT 1;


/* 26 .- Retorna una llista de tots els productes del fabricant Lenovo. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT *
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre = 'LENOVO';


/* 27 .- Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu 
major que 200 €. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre = 'Crucial' AND pro.precio >= 200;


/* 28 .- Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar 
l'operador IN. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre = 'ASUS' OR fab.nombre = 'Hewlett-Packard'  OR fab.nombre = 'Seagate';


/* 29 .- Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. 
Fent servir l'operador IN.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre IN ('ASUS', 'Hewlett-Packard', 'Seagate');


/* 30 .- Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels 
quals acabi per la vocal e.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE RIGHT(fab.nombre,1) = 'e';


/* 31 .- Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals 
contingui el caràcter w en el seu nom. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre like '%w%';


/* 32 .- Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els 
productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, 
pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO',
    fab.nombre AS 'NOMBRE FABRICANTE'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE pro.precio >= 180
ORDER BY pro.precio ASC, pro.nombre DESC;


/* 33 .- Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que 
tenen productes associats en la base de dades.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.codigo AS  'CODIGO FABRICANTE',
    fab.nombre AS 'NOMBRE FABRICANTE'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
GROUP BY fab.codigo;


/* 34 .- Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament 
amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells 
fabricants que no tenen productes associats.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT *
FROM fabricante fab
	LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante;


/* 35 .- Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.nombre
	FROM fabricante fab
		LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante
WHERE ISNULL(fab.codigo = pro.codigo_fabricante);


/* 36 .- Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.*/

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM fabricante fab
		LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre like @fabricante;


/* 37 .- Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del 
fabricant Lenovo. (Sense usar INNER JOIN). */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';
SET @codigofab = (SELECT fab.codigo 
				FROM fabricante fab
                WHERE fab.nombre LIKE 'Lenovo'
				GROUP BY fab.codigo);

-- QUERY BODY
SELECT pro.*
FROM producto pro
WHERE pro.precio = (SELECT pro.precio
					FROM producto pro
                    WHERE pro.codigo_fabricante = @codigofab
                    ORDER BY pro.precio DESC limit 1);


/* 38 .- Llista el nom del producte més car del fabricant Lenovo. */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre LIKE @fabricante
GROUP BY pro.codigo 
order by pro.precio DESC LIMIT 1;


/* 39 .- Llista el nom del producte més barat del fabricant Hewlett-Packard. */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Hewlett-Packard';

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre LIKE @fabricante
GROUP BY pro.codigo 
order by pro.precio ASC LIMIT 1;


/* 40 .- Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més 
car del fabricant Lenovo */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM producto pro
WHERE pro.precio >= (SELECT pro.precio
					FROM producto pro
						LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
					WHERE fab.nombre LIKE @fabricant
					GROUP BY pro.codigo 
					order by pro.precio ASC LIMIT 1)
;


/* 41 .- Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més 
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