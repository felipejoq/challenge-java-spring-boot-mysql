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
