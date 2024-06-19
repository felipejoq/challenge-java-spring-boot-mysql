-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2024 a las 20:39:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minimarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `nombreAdministrador` varchar(25) NOT NULL,
  `primerApellidoAdministrador` varchar(25) NOT NULL,
  `segundoApellidoAdministrador` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `nombreAdministrador`, `primerApellidoAdministrador`, `segundoApellidoAdministrador`) VALUES
(1, 'Juan', 'Mora', 'Rios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_colaborador`
--

CREATE TABLE `categoria_colaborador` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoriaColaborador` varchar(25) NOT NULL,
  `responsabilidadCategoriaColaborador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria_colaborador`
--

INSERT INTO `categoria_colaborador` (`idCategoria`, `nombreCategoriaColaborador`, `responsabilidadCategoriaColaborador`) VALUES
(1, 'Vendedor', 'Se encargará de las ventas'),
(2, 'Jefe de sucursal', 'Podrá vender y gestionar tienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `idCategoriaProducto` int(11) NOT NULL,
  `nombreCategoriaProducto` varchar(50) NOT NULL,
  `descripcionCategoriaProducto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`idCategoriaProducto`, `nombreCategoriaProducto`, `descripcionCategoriaProducto`) VALUES
(1, 'Alimentos', 'pan, galletas, cereales, enlatados, productos lácteos, embutidos, verduras y frutas'),
(2, 'Bebidas', 'aguas, refrescos, jugos, cerveza y vino'),
(3, 'Artículos de higiene y limpieza', 'jabón, shampoo, pasta de dientes, papel higiénico, desodorante, detergente'),
(4, 'Otros', 'pastillas sin prescripción médica, velas, cepillos y peines, snacks salados, helados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rutCliente` varchar(15) NOT NULL,
  `nombreCliente` varchar(30) NOT NULL,
  `primerApellidoCliente` varchar(35) NOT NULL,
  `segundoApellidoCliente` varchar(35) NOT NULL,
  `direccionCliente` varchar(60) NOT NULL,
  `comunaCliente` varchar(50) NOT NULL,
  `telefonoCliente` varchar(15) NOT NULL,
  `e-mailCliente` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rutCliente`, `nombreCliente`, `primerApellidoCliente`, `segundoApellidoCliente`, `direccionCliente`, `comunaCliente`, `telefonoCliente`, `e-mailCliente`) VALUES
('10334538-5', 'Manuel', 'López', 'Vega', 'Bartolina Madrid 456', 'Alhue', '56928194697', 'mdzpikgw@galpc.gov'),
('11334539-3', 'Pedro', 'Pérez', 'Fuentes', 'Atanasio Pardo Vega 456', 'Buin', '56857891816', 'txgtztuk@nf'),
('11334544-0', 'Gabriel', 'Rivera', 'Paredes', 'General Holley 456', 'Providencia', '56992447986', 'ulaszhtp@hdnyr.com'),
('13334533-8', 'José', 'García', 'Cabrera', 'Avenida Libertador Bernardo O’Higgins 78.', 'Santiago', '56831370737', 'sualfnhi@ktlev.org'),
('13334537-4', 'Antonio', 'Martínez', 'Rojas', 'Calle Monjitas 445', 'Santiago', '56928508276', 'othwgrhx@orlyi.com'),
('14334549-4', 'Emilio', 'Reyes', 'Castro', 'Gonzales 465', 'Valparaiso', '56822800545', 'hyzqkwzc@hffiu.edu'),
('16334535-6', 'Carlos', 'González', 'Valenzuela', 'Independencia 48.', 'Independencia', '56965263445', 'mcklwcsp@ffbye.com'),
('16334553-5', 'Isabel', 'Ramos', 'Guzmán', 'Arlegui 655', 'Viña del Mar', '56992447986', 'fovtlqwf@lzuip.org'),
('17334542-3', 'Diego', 'Torres', 'Miranda', 'General Cruz 345', 'Valparaiso', '56850707741', 'hyzqkwzc@hffiu.edu'),
('18334536-k', 'Luis', 'Rodríguez', 'Mendoza', 'Paseo Bulnes 24', 'Santiago', '56942615908', 'tyawmyrv@ffexq.edu'),
('18334541-4', 'Rafael', 'Ramírez', 'Salazar', '12 Norte 223', 'Viña del Mar', '56992447986', 'vkixlwuy@yrpal.edu'),
('18334548-5', 'Daniel', 'Morales', 'Vargas', 'O\'Connel 456', 'Rancagua', '56850707741', 'vkixlwuy@yrpal.edu'),
('18334550-2', 'Hugo', 'Gutiérrez', 'Leiva', 'San Francisco 445', 'Santiago', '56992447986', 'gxdgzjxg@bcnic.com'),
('19334554-4', 'Valentina', 'Ruiz', 'Pizarro', 'Alcazar 55', 'Rancagua', '56850707741', 'qyqjvqo@mdsjs.org'),
('20334545-5', 'Joaquín', 'Gómez', 'Silva', '21 de mayo 432', 'San Bernardo', '56850707741', 'kbpwnpmj@sfcvr.com'),
('21334555-2', 'Camila', 'Mendoza', 'Escobar', 'Segers 231', 'Rancagua', '56822800545', 'vkixlwuy@yrpal.edu'),
('22334547-3', 'Santiago', 'Cruz', 'Ortega', '21 De Mayo', 'Alhue', '56992447986', 'qyqjvqo@mdsjs.org'),
('22334556-7', 'Lucía', 'Alvarez', 'Cáceres', 'Las Dalias 201', 'El Bosque', '56992447986', 'hyzqkwzc@hffiu.edu'),
('22344534-5', 'Juan', 'Hernández', 'Santana', 'Avenida Brasil 67.', 'Valparaiso', '56888614692', 'goxkjubc@yhrkz.com'),
('23334557-3', 'Renata', 'Jiménez', 'Lira', 'Olivares 432', 'Maipu', '56850707741', 'gxdgzjxg@bcnic.com'),
('24334558-6', 'Cecilia', 'Castillo', 'Zúñiga', 'Av. Los Leones 759', 'Providencia', '56822800545', 'ulaszhtp@hdnyr.com'),
('25334546-4', 'Mateo', 'Díaz', 'Araya', '2 Norte 234', 'Viña del Mar', '56822800545', 'fovtlqwf@lzuip.org'),
('5334552-7', 'Nicolás', 'Chávez', 'Muñoz', 'Av. America 3452', 'San Bernardo', '56822800545', 'kbpwnpmj@sfcvr.com'),
('6334543-2', 'Andrés', 'Flores', 'Navarro', 'Amunategui 65', 'Santiago', '56822800545', 'gxdgzjxg@bcnic.com'),
('8334540-1', 'Fernando', 'Sánchez', 'Cortés', 'Freire 146.', 'San Bernardo', '568945080', 'gqyqjvqo@mdsjs.org'),
('9334551-k', 'Rodrigo', 'Ortiz', 'Sepúlveda', 'Silvina Hurtado 2345', 'Providencia', '56850707741', 'ulaszhtp@hdnyr.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `rutColaborador` varchar(15) NOT NULL,
  `nombreColaborador` varchar(20) NOT NULL,
  `primerApellidoColaborador` varchar(25) NOT NULL,
  `segundoApellidoColaborador` varchar(25) NOT NULL,
  `direccionColaborador` varchar(60) NOT NULL,
  `comunaColaborador` varchar(50) NOT NULL,
  `telefonoColaborador` varchar(15) NOT NULL,
  `FK_idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`rutColaborador`, `nombreColaborador`, `primerApellidoColaborador`, `segundoApellidoColaborador`, `direccionColaborador`, `comunaColaborador`, `telefonoColaborador`, `FK_idCategoria`) VALUES
('10273890-4', 'Martín', 'Jiménez', 'González', 'Eucaliptus 645', 'San Bernardo', '562443320034', 1),
('10344187-1', 'Daniela', 'Torres', 'Morales', 'Calle Los Pinos 234', 'Viña del Mar', '562443320031', 2),
('11322645-8', 'Florencia', 'Rivera', 'Sánchez', 'Avenida 151.', 'Valparaíso', '56212345679', 2),
('11444745-5', 'Carolina', 'Flores', 'Ortiz', 'Condell 187.', 'Valparaíso', '56987654322', 2),
('12345678-2', 'Camila', 'Martínez', 'Ramos', 'Ruta del Sol Km 10', 'Santiago', '56989593703', 2),
('12345678-8', 'Valentina', 'Rodríguez', 'Torres', 'Calle del Mar 456', 'Santiago', '56298765432', 2),
('12566432-k', 'Rafael', 'Romero', 'Núñez', 'Rauli 234', 'Machali', '56442170218', 1),
('13579246-4', 'Lucía', 'López', 'Romero', 'Calle Los Cerezos 234', 'Santiago', '562443320030', 2),
('13579247-1', 'Catalina', 'Ramírez', 'Flores', 'Ruta del Mar Km 10', 'Viña del Mar', '56989593704', 2),
('13579248-9', 'Elena', 'Sánchez', 'Chávez', 'Pasaje Los Jazmines 789', 'Viña del Mar', '56442170214', 2),
('14647213-1', 'Sofía', 'García', 'Rivera', 'Av. Los Andes 123', 'Santiago', '56912345678', 2),
('15272638-6', 'Adrián', 'Alvarez', 'Rodríguez', 'Barros Arana 352', 'San Bernardo', '56989593707', 1),
('15432128-k', 'Isabella', 'Hernández', 'López', 'Pasaje Los Robles 789', 'Santiago', '56442170213', 2),
('16435288-9', 'Rocío', 'Gómez', 'García', 'Avenida Pedro Montt 137.', 'Valparaíso', '56442170215', 2),
('17253789-4', 'Gabriel', 'Ramos', 'Castillo', 'Obispo Labbé 432', 'Providencia', '56987654324', 2),
('17543218-0', 'Leonardo', 'Vásquez', 'Cruz', 'Av Brasil 882', 'Rancagua', '56212345672', 2),
('17736903-7', 'Sebastián', 'Reyes', 'Alvarez', 'Av Salvador 45', 'Providencia', '56212345670', 1),
('18224986-1', 'Diego', 'Gutiérrez', 'Hernández', 'Nataniel Cox 35', 'Santiago', '56442170216', 2),
('18929264-3', 'Emilio', 'Ruiz', 'Vásquez', 'Nogales 342', 'San Bernardo', '56212345671', 2),
('19245889-3', 'Valeria', 'Cruz', 'Gutiérrez', 'Cochrane 104.', 'Valparaíso', '562443320032', 2),
('20337842-5', 'Abril', 'Díaz', 'Reyes', 'Avenida Independencia 107.', 'Valparaíso', '56989593705', 2),
('21726389-6', 'Joaquín', 'Chávez', 'Jiménez', 'Guardia Vieja 327', 'Providencia', '562443320033', 1),
('22362890-4', 'Hugo', 'Mendoza', 'Moreno', 'Los Lirios 467', 'El Bosque', '56442170217', 2),
('22456231-9', 'Mateo', 'Morales', 'Pérez', 'Esmeralda 97', 'Valparaíso', '56987654323', 2),
('23625583-7', 'Andrés', 'Ortiz', 'Martínez', 'Eleodoro Yañez 365', 'Providencia', '56989593706', 2),
('23754210-8', 'Felipe', 'Castillo', 'Díaz', 'O\'Higgins 345', 'Rancagua', '56987654325', 2),
('24681357-5', 'María', 'González', 'Mendoza', 'Av. Los Laureles 123', 'Viña del Mar', '56987654321', 1),
('24681359-7', 'Ana', 'Pérez', 'Ramírez', 'Calle del Bosque 456', 'Viña del Mar', '56212345678', 2),
('25432189-6', 'Samuel', 'Moreno', 'Silva', 'Victoria 7654', 'Rancagua', '56989593708', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(30) NOT NULL,
  `descripcionProducto` varchar(100) DEFAULT NULL,
  `precioProducto` int(11) NOT NULL,
  `FK_idCategoriaProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `descripcionProducto`, `precioProducto`, `FK_idCategoriaProducto`) VALUES
(1, 'Marraqueta kg', 'Pan panadería', 1200, 1),
(2, 'Hallulla Kg', 'Pan panadería', 1200, 1),
(3, 'Pan de molde Ideal 750gr', NULL, 2200, 1),
(4, 'Pan de molde Castaño 750gr', NULL, 2250, 1),
(5, 'Galletas de soda 75grs', 'presentación persona', 600, 1),
(6, '1+1 zucaritas', 'yougurt con cereal', 700, 1),
(7, '1+1 chocapic', 'yougurt con cereal', 700, 1),
(8, 'Cerealbar choco', NULL, 300, 1),
(9, 'Atún aceite', '380gr', 1000, 1),
(10, 'Atún agua', '380gr', 1000, 1),
(11, 'Cocacola 500 ml', NULL, 1000, 2),
(12, 'Agua mineral Vital c/g 600 ml ', 'con gas', 800, 2),
(13, 'Agua mineral Vital s/g 600  ml', 'sin gas', 800, 2),
(14, 'Jugo Watts frutilla 400cc', NULL, 800, 2),
(15, 'Jugo Watts durazno 400cc', NULL, 800, 2),
(16, 'Powerade blue', NULL, 1200, 2),
(17, 'Powerade naranja', NULL, 1200, 2),
(18, 'Agua mineral Vital 1.5L', 'con gas', 1300, 2),
(19, 'Agua mineral Vital 1.5 s/g', 'sin gas', 1300, 2),
(20, 'Jugo Watt 1.5L', NULL, 1300, 2),
(21, 'Desodorante Nivea Women', 'Spray', 2000, 3),
(22, 'Desodorante Nivea Men', 'Spray', 2000, 3),
(23, 'Jabón líquido Ballerina800ml', NULL, 2300, 3),
(24, 'Jabón Dove barra 50 gr', 'barra', 1000, 3),
(25, 'Paste de dientes Pepsodent', '120 grs', 1600, 3),
(26, '4 rollos papel higienico', 'Confort', 1200, 3),
(27, 'Prestobarba Gillette', '3 hojas', 1200, 3),
(28, 'Crema de afeitar Gillettte', NULL, 3450, 3),
(29, 'Shampoo Head Soulders', NULL, 3000, 3),
(30, 'Shampoo Tio Nacho', 'Engrosador', 7000, 3),
(31, 'Cepillo de dientes Oral B', NULL, 1500, 4),
(32, 'Peineta pelo', 'pequeña', 500, 4),
(33, 'Peineta grande', NULL, 2000, 4),
(34, 'Cepillo de pelo', NULL, 3500, 4),
(35, 'helado simple', 'un sabor artesanal', 2000, 4),
(36, 'helado doble', 'segundo sabor artesanal', 300, 4),
(37, 'helado triple', 'triple sabor artesanal', 4000, 4),
(38, 'Papas fritas sal de mar', '380 grs', 3000, 4),
(39, 'Mani salado 300 grs', NULL, 2000, 4),
(40, 'Mani japones 300 grs', NULL, 4000, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `FK_idProducto` int(11) NOT NULL,
  `FK_idSucursal` int(11) NOT NULL,
  `FK_idAdministrador` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`FK_idProducto`, `FK_idSucursal`, `FK_idAdministrador`, `stock`) VALUES
(1, 1, 1, 5),
(1, 2, 1, 44),
(1, 3, 1, 22),
(1, 4, 1, 28),
(1, 5, 1, 16),
(1, 6, 1, 34),
(2, 1, 1, 10),
(2, 2, 1, 24),
(2, 3, 1, 18),
(2, 4, 1, 23),
(2, 5, 1, 28),
(2, 6, 1, 32),
(3, 1, 1, 8),
(3, 2, 1, 30),
(3, 3, 1, 24),
(3, 4, 1, 21),
(3, 5, 1, 35),
(3, 6, 1, 19),
(4, 1, 1, 2),
(4, 2, 1, 29),
(4, 3, 1, 27),
(4, 4, 1, 19),
(4, 5, 1, 26),
(4, 6, 1, 25),
(5, 1, 1, 15),
(5, 2, 1, 25),
(5, 3, 1, 18),
(5, 4, 1, 34),
(5, 5, 1, 16),
(5, 6, 1, 25),
(6, 1, 1, 4),
(6, 2, 1, 22),
(6, 3, 1, 27),
(6, 4, 1, 16),
(6, 5, 1, 27),
(6, 6, 1, 12),
(7, 1, 1, 10),
(7, 2, 1, 18),
(7, 3, 1, 27),
(7, 4, 1, 26),
(7, 5, 1, 16),
(7, 6, 1, 16),
(8, 1, 1, 22),
(8, 2, 1, 20),
(8, 3, 1, 28),
(8, 4, 1, 29),
(8, 5, 1, 17),
(8, 6, 1, 26),
(9, 1, 1, 19),
(9, 2, 1, 21),
(9, 3, 1, 17),
(9, 4, 1, 25),
(9, 5, 1, 27),
(9, 6, 1, 23),
(10, 1, 1, 16),
(10, 2, 1, 27),
(10, 3, 1, 26),
(10, 4, 1, 23),
(10, 5, 1, 25),
(10, 6, 1, 23),
(11, 1, 1, 33),
(11, 2, 1, 18),
(11, 3, 1, 29),
(11, 4, 1, 11),
(11, 5, 1, 32),
(11, 6, 1, 19),
(12, 1, 1, 22),
(12, 2, 1, 15),
(12, 3, 1, 26),
(12, 4, 1, 18),
(12, 5, 1, 19),
(12, 6, 1, 26),
(13, 1, 1, 18),
(13, 2, 1, 18),
(13, 3, 1, 22),
(13, 4, 1, 12),
(13, 5, 1, 28),
(13, 6, 1, 15),
(14, 1, 1, 16),
(14, 2, 1, 26),
(14, 3, 1, 28),
(14, 4, 1, 16),
(14, 5, 1, 14),
(14, 6, 1, 23),
(15, 1, 1, 29),
(15, 2, 1, 18),
(15, 3, 1, 21),
(15, 4, 1, 19),
(15, 5, 1, 23),
(15, 6, 1, 16),
(16, 1, 1, 16),
(16, 2, 1, 21),
(16, 3, 1, 27),
(16, 4, 1, 24),
(16, 5, 1, 26),
(16, 6, 1, 34),
(17, 1, 1, 9),
(17, 2, 1, 22),
(17, 3, 1, 26),
(17, 4, 1, 17),
(17, 5, 1, 29),
(17, 6, 1, 37),
(18, 1, 1, 17),
(18, 2, 1, 26),
(18, 3, 1, 28),
(18, 4, 1, 29),
(18, 5, 1, 34),
(18, 6, 1, 39),
(19, 1, 1, 22),
(19, 2, 1, 18),
(19, 3, 1, 19),
(19, 4, 1, 13),
(19, 5, 1, 25),
(19, 6, 1, 23),
(20, 1, 1, 24),
(20, 2, 1, 24),
(20, 3, 1, 18),
(20, 4, 1, 23),
(20, 5, 1, 29),
(20, 6, 1, 18),
(21, 1, 1, 26),
(21, 2, 1, 17),
(21, 3, 1, 14),
(21, 4, 1, 34),
(21, 5, 1, 34),
(21, 6, 1, 26),
(22, 1, 1, 22),
(22, 2, 1, 19),
(22, 3, 1, 12),
(22, 4, 1, 28),
(22, 5, 1, 26),
(22, 6, 1, 17),
(23, 1, 1, 18),
(23, 2, 1, 6),
(23, 3, 1, 18),
(23, 4, 1, 16),
(23, 5, 1, 38),
(23, 6, 1, 16),
(24, 1, 1, 9),
(24, 2, 1, 17),
(24, 3, 1, 27),
(24, 4, 1, 25),
(24, 5, 1, 29),
(24, 6, 1, 28),
(25, 1, 1, 19),
(25, 2, 1, 21),
(25, 3, 1, 18),
(25, 4, 1, 32),
(25, 5, 1, 23),
(25, 6, 1, 35),
(26, 1, 1, 36),
(26, 2, 1, 29),
(26, 3, 1, 34),
(26, 4, 1, 19),
(26, 5, 1, 12),
(26, 6, 1, 26),
(27, 1, 1, 16),
(27, 2, 1, 17),
(27, 3, 1, 38),
(27, 4, 1, 25),
(27, 5, 1, 27),
(27, 6, 1, 16),
(28, 1, 1, 19),
(28, 2, 1, 23),
(28, 3, 1, 34),
(28, 4, 1, 25),
(28, 5, 1, 26),
(28, 6, 1, 27),
(29, 1, 1, 22),
(29, 2, 1, 16),
(29, 3, 1, 21),
(29, 4, 1, 12),
(29, 5, 1, 29),
(29, 6, 1, 16),
(30, 1, 1, 17),
(30, 2, 1, 18),
(30, 3, 1, 23),
(30, 4, 1, 16),
(30, 5, 1, 39),
(30, 6, 1, 17),
(31, 1, 1, 26),
(31, 2, 1, 19),
(31, 3, 1, 26),
(31, 4, 1, 26),
(31, 5, 1, 23),
(31, 6, 1, 27),
(32, 1, 1, 34),
(32, 2, 1, 24),
(32, 3, 1, 28),
(32, 4, 1, 23),
(32, 5, 1, 24),
(32, 6, 1, 25),
(33, 1, 1, 27),
(33, 2, 1, 17),
(33, 3, 1, 17),
(33, 4, 1, 23),
(33, 5, 1, 12),
(33, 6, 1, 32),
(34, 1, 1, 26),
(34, 2, 1, 29),
(34, 3, 1, 25),
(34, 4, 1, 19),
(34, 5, 1, 18),
(34, 6, 1, 2),
(35, 1, 1, 22),
(35, 2, 1, 24),
(35, 3, 1, 15),
(35, 4, 1, 26),
(35, 5, 1, 29),
(35, 6, 1, 28),
(36, 1, 1, 18),
(36, 2, 1, 38),
(36, 3, 1, 27),
(36, 4, 1, 15),
(36, 5, 1, 23),
(36, 6, 1, 12),
(37, 1, 1, 19),
(37, 2, 1, 24),
(37, 3, 1, 16),
(37, 4, 1, 23),
(37, 5, 1, 23),
(37, 6, 1, 12),
(38, 1, 1, 22),
(38, 2, 1, 23),
(38, 3, 1, 29),
(38, 4, 1, 16),
(38, 5, 1, 12),
(38, 6, 1, 19),
(39, 1, 1, 19),
(39, 2, 1, 29),
(39, 3, 1, 17),
(39, 4, 1, 34),
(39, 5, 1, 29),
(39, 6, 1, 34),
(40, 1, 1, 27),
(40, 2, 1, 20),
(40, 3, 1, 26),
(40, 4, 1, 37),
(40, 5, 1, 34),
(40, 6, 1, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` int(11) NOT NULL,
  `nombreSucursal` varchar(30) NOT NULL,
  `direccionSucursal` varchar(50) NOT NULL,
  `comunaSucursal` varchar(50) NOT NULL,
  `telefonoSucursal` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `nombreSucursal`, `direccionSucursal`, `comunaSucursal`, `telefonoSucursal`) VALUES
(1, 'Bandera', 'Bandera 444', 'Santiago', '56228570011'),
(2, 'Libertad', 'Av. Libertad 543', 'Viña del Mar', '563231567924'),
(3, 'Pedro Montt', 'Av. Pedro Montt 3214', 'Valparaíso', '563232569931'),
(4, 'Pedro de Valdivia', 'Av. Pedro de Valdivia 443', 'Providencia', '56277664521'),
(5, 'Freire', 'Freire 534', 'San Bernardo', '56264537167'),
(6, 'Independencia', 'Paseo Independencia 24', 'Rancagua', '727261435900');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_colaborador`
--

CREATE TABLE `sucursal_colaborador` (
  `FK_rutColaborador` varchar(15) NOT NULL,
  `FK_idSucursal` int(11) NOT NULL,
  `FK_idAdministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sucursal_colaborador`
--

INSERT INTO `sucursal_colaborador` (`FK_rutColaborador`, `FK_idSucursal`, `FK_idAdministrador`) VALUES
('10273890-4', 1, 1),
('10344187-1', 2, 1),
('11322645-8', 3, 1),
('11444745-5', 4, 1),
('12345678-2', 5, 1),
('12345678-8', 6, 1),
('12566432-k', 1, 1),
('13579246-4', 2, 1),
('13579247-1', 3, 1),
('13579248-9', 4, 1),
('14647213-1', 5, 1),
('15272638-6', 6, 1),
('15432128-k', 1, 1),
('16435288-9', 2, 1),
('17253789-4', 3, 1),
('17543218-0', 4, 1),
('17736903-7', 5, 1),
('18224986-1', 6, 1),
('18929264-3', 1, 1),
('19245889-3', 2, 1),
('20337842-5', 3, 1),
('21726389-6', 4, 1),
('22362890-4', 5, 1),
('22456231-9', 6, 1),
('23625583-7', 1, 1),
('23754210-8', 2, 1),
('24681357-5', 3, 1),
('24681359-7', 4, 1),
('25432189-6', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `FK_idSucursal` int(11) NOT NULL,
  `FK_rutCliente` varchar(15) NOT NULL,
  `FK_idAdministrador` int(11) NOT NULL,
  `fechaVenta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `FK_idSucursal`, `FK_rutCliente`, `FK_idAdministrador`, `fechaVenta`) VALUES
(1, 1, '13334533-8', 1, '2023-12-19'),
(2, 1, '22344534-5', 1, '2024-01-21'),
(3, 1, '16334535-6', 1, '2024-01-08'),
(4, 1, '18334536-k', 1, '2023-01-15'),
(5, 1, '13334537-4', 1, '2023-09-29'),
(6, 1, '10334538-5', 1, '2022-10-13'),
(7, 1, '11334539-3', 1, '2023-12-21'),
(8, 1, '8334540-1', 1, '2022-07-22'),
(9, 1, '18334541-4', 1, '2022-11-28'),
(10, 1, '17334542-3', 1, '2023-05-21'),
(11, 1, '6334543-2', 1, '2023-01-30'),
(12, 1, '11334544-0', 1, '2022-12-02'),
(13, 2, '20334545-5', 1, '2023-03-08'),
(14, 2, '25334546-4', 1, '2023-06-11'),
(15, 2, '25334546-4', 1, '2023-02-25'),
(16, 2, '18334548-5', 1, '2023-04-14'),
(17, 2, '14334549-4', 1, '2023-07-01'),
(18, 2, '25334546-4', 1, '2023-02-10'),
(19, 2, '9334551-k', 1, '2023-08-17'),
(20, 2, '5334552-7', 1, '2023-03-20'),
(21, 2, '16334553-5', 1, '2023-05-31'),
(22, 2, '19334554-4', 1, '2022-04-26'),
(23, 2, '21334555-2', 1, '2023-10-17'),
(24, 3, '22334556-7', 1, '2024-03-02'),
(25, 3, '23334557-3', 1, '2023-01-08'),
(26, 3, '24334558-6', 1, '2022-05-10'),
(27, 3, '18334548-5', 1, '2022-08-10'),
(28, 3, '14334549-4', 1, '2022-04-14'),
(29, 3, '9334551-k', 1, '2023-09-07'),
(30, 3, '14334549-4', 1, '2023-11-23'),
(31, 3, '11334544-0', 1, '2023-04-05'),
(32, 3, '11334539-3', 1, '2023-07-18'),
(33, 3, '9334551-k', 1, '2023-02-01'),
(34, 3, '11334544-0', 1, '2023-04-23'),
(35, 3, '9334551-k', 1, '2023-08-04'),
(36, 3, '11334539-3', 1, '2023-03-16'),
(37, 3, '21334555-2', 1, '2023-05-27'),
(38, 3, '14334549-4', 1, '2022-04-02'),
(39, 3, '21334555-2', 1, '2023-10-06'),
(40, 3, '11334544-0', 1, '2024-02-18'),
(41, 4, '14334549-4', 1, '2023-01-03'),
(42, 4, '11334539-3', 1, '2022-05-15'),
(43, 4, '21334555-2', 1, '2022-08-15'),
(44, 4, '11334539-3', 1, '2022-04-19'),
(45, 4, '11334539-3', 1, '2023-09-12'),
(46, 4, '22344534-5', 1, '2023-11-28'),
(47, 4, '20334545-5', 1, '2023-04-11'),
(48, 5, '11334539-3', 1, '2023-06-22'),
(49, 5, '20334545-5', 1, '2022-04-06'),
(50, 5, '11334539-3', 1, '2023-10-29'),
(51, 6, '21334555-2', 1, '2024-03-11'),
(52, 6, '20334545-5', 1, '2023-01-17'),
(53, 6, '22344534-5', 1, '2022-05-20'),
(54, 6, '21334555-2', 1, '2022-08-20'),
(55, 6, '20334545-5', 1, '2022-04-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indices de la tabla `categoria_colaborador`
--
ALTER TABLE `categoria_colaborador`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`idCategoriaProducto`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rutCliente`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`rutColaborador`),
  ADD KEY `FK_idCategoria` (`FK_idCategoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `FK_idCategoriaProducto` (`FK_idCategoriaProducto`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD KEY `FK_idProducto` (`FK_idProducto`),
  ADD KEY `FK_idSucursal` (`FK_idSucursal`),
  ADD KEY `FK_idAdministrador` (`FK_idAdministrador`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`);

--
-- Indices de la tabla `sucursal_colaborador`
--
ALTER TABLE `sucursal_colaborador`
  ADD KEY `FK_rutColaborador` (`FK_rutColaborador`),
  ADD KEY `FK_idSucursal` (`FK_idSucursal`),
  ADD KEY `FK_idAdministrador` (`FK_idAdministrador`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `FK_idSucursal` (`FK_idSucursal`),
  ADD KEY `FK_idAdministrador` (`FK_idAdministrador`),
  ADD KEY `FK_rutCliente` (`FK_rutCliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_ibfk_1` FOREIGN KEY (`FK_idCategoria`) REFERENCES `categoria_colaborador` (`idCategoria`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`FK_idCategoriaProducto`) REFERENCES `categoria_producto` (`idCategoriaProducto`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`FK_idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`FK_idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`FK_idAdministrador`) REFERENCES `administrador` (`idAdministrador`);

--
-- Filtros para la tabla `sucursal_colaborador`
--
ALTER TABLE `sucursal_colaborador`
  ADD CONSTRAINT `sucursal_colaborador_ibfk_1` FOREIGN KEY (`FK_rutColaborador`) REFERENCES `colaborador` (`rutColaborador`),
  ADD CONSTRAINT `sucursal_colaborador_ibfk_2` FOREIGN KEY (`FK_idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  ADD CONSTRAINT `sucursal_colaborador_ibfk_3` FOREIGN KEY (`FK_idAdministrador`) REFERENCES `administrador` (`idAdministrador`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`FK_idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`FK_idAdministrador`) REFERENCES `administrador` (`idAdministrador`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`FK_rutCliente`) REFERENCES `cliente` (`rutCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
