-- 1. Liste todas las sucursales del minimarket.
SELECT
    idSucursal AS id,
    nombreSucursal AS nombre,
    direccionSucursal AS direccion,
    comunaSucursal AS comuna,
    telefonoSucursal AS telefono
FROM sucursal;

-- 2. Liste la cantidad de ventas por sucursal.
SELECT
    s.nombreSucursal AS nombre,
    COUNT(v.idVenta) AS cantidad_ventas
FROM sucursal s
JOIN venta v ON s.idSucursal = v.FK_idSucursal
GROUP BY s.idSucursal, s.nombreSucursal
ORDER BY cantidad_ventas DESC;

-- 3. ¿ Cuál es la sucursal con más ventas?
SELECT
    s.nombreSucursal AS nombre,
    COUNT(v.idVenta) AS cantidad_ventas
FROM sucursal s
JOIN venta v ON s.idSucursal = v.FK_idSucursal
GROUP BY s.idSucursal, s.nombreSucursal
ORDER BY cantidad_ventas DESC
LIMIT 1;

-- 4. Dado el id de una sucursal muestre la lista de producto y su stock
SELECT
    p.nombreProducto AS producto,
    cp.nombreCategoriaProducto AS categoria_producto,
    su.nombreSucursal AS sucursal,
    s.stock AS stock
FROM producto p
JOIN stock s ON p.idProducto = s.FK_idProducto
JOIN categoria_producto cp ON p.FK_idCategoriaProducto = cp.idCategoriaProducto
JOIN sucursal su ON s.FK_idSucursal = su.idSucursal
WHERE su.idSucursal = 1
ORDER BY stock DESC;