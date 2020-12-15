-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-12-2020 a las 03:45:44
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id15309741_comandita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandas`
--

CREATE TABLE `comandas` (
  `idComanda` int(11) NOT NULL,
  `codigoMesa` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `cliente` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tiempo` char(11) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `importe` int(11) DEFAULT NULL,
  `cierreMesa` varchar(30) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `comandas`
--

INSERT INTO `comandas` (`idComanda`, `codigoMesa`, `codigo`, `cliente`, `hora`, `estado`, `tiempo`, `importe`, `cierreMesa`) VALUES
(1, 'PED1', 16, 'daniela', '21:12:18', 'pendiente', '0', 100, ''),
(2, 'PED2', 16, 'daniela', '21:12:37', 'listo para servir', '475', 9600, 'cerrada'),
(3, 'PED3', 16, 'daniela', '21:12:57', 'pendiente', '0', 0, 'cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecomanda`
--

CREATE TABLE `detallecomanda` (
  `idComanda` int(11) NOT NULL,
  `Secuencia` int(11) NOT NULL,
  `ProdID` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `tiempoEstimado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `detallecomanda`
--

INSERT INTO `detallecomanda` (`idComanda`, `Secuencia`, `ProdID`, `Cantidad`, `tiempoEstimado`) VALUES
(2, 1, 8, 2, 25),
(2, 2, 8, 2, 25),
(2, 3, 8, 2, 25),
(2, 4, 8, 2, 25),
(2, 5, 8, 2, 25),
(2, 6, 8, 2, 25),
(2, 7, 8, 2, 25),
(2, 8, 8, 2, 25),
(2, 9, 8, 2, 25),
(2, 10, 8, 2, 25),
(2, 11, 6, 2, 25),
(2, 12, 6, 2, 25),
(2, 13, 6, 2, 25),
(2, 14, 6, 2, 25),
(2, 15, 6, 2, 25),
(2, 16, 6, 2, 25),
(2, 17, 6, 2, 25),
(2, 18, 6, 2, 25),
(2, 19, 6, 2, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `mesa` int(11) NOT NULL,
  `restaurante` int(11) NOT NULL,
  `mozo` int(11) NOT NULL,
  `cocinero` int(11) NOT NULL,
  `mensaje` varchar(66) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`mesa`, `restaurante`, `mozo`, `cocinero`, `mensaje`) VALUES
(7, 9, 8, 9, 'Buena atencion, platos de calidad, lugar agradable '),
(9, 10, 8, 9, 'excelente servicio y buenos precios. recomendable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logueados`
--

CREATE TABLE `logueados` (
  `codigo` int(11) NOT NULL,
  `login` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `logueados`
--

INSERT INTO `logueados` (`codigo`, `login`) VALUES
(16, '21:11:42'),
(17, '21:11:30'),
(18, '21:11:56'),
(19, '21:11:10'),
(20, '21:11:35'),
(21, '21:11:07'),
(22, '21:11:30'),
(23, '20:12:42'),
(24, '20:12:13'),
(25, '20:12:39'),
(26, '20:12:29'),
(27, '20:12:14'),
(28, '20:12:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pendientes`
--

CREATE TABLE `pendientes` (
  `idComanda` int(11) NOT NULL,
  `Secuencia` int(11) NOT NULL,
  `ProdID` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `pendientes`
--

INSERT INTO `pendientes` (`idComanda`, `Secuencia`, `ProdID`, `codigo`, `estado`) VALUES
(2, 1, 8, 15, 'pendiente'),
(2, 2, 8, 15, 'pendiente'),
(2, 3, 8, 15, 'pendiente'),
(2, 4, 8, 15, 'pendiente'),
(2, 5, 8, 15, 'pendiente'),
(2, 6, 8, 15, 'pendiente'),
(2, 7, 8, 15, 'pendiente'),
(2, 8, 8, 15, 'pendiente'),
(2, 9, 8, 15, 'pendiente'),
(2, 10, 8, 15, 'pendiente'),
(2, 11, 6, 14, 'pendiente'),
(2, 12, 6, 14, 'pendiente'),
(2, 13, 6, 14, 'pendiente'),
(2, 14, 6, 14, 'pendiente'),
(2, 15, 6, 14, 'pendiente'),
(2, 16, 6, 14, 'pendiente'),
(2, 17, 6, 14, 'pendiente'),
(2, 18, 6, 14, 'pendiente'),
(2, 19, 6, 14, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ProdID` int(11) NOT NULL,
  `ProdDes` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ProdTipo` char(1) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ProdPrecio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProdID`, `ProdDes`, `ProdTipo`, `ProdPrecio`) VALUES
(1, 'Cerveza Negra', 'C', 100),
(2, 'Coca Cola', 'B', 100),
(3, 'Fideos', 'P', 200),
(4, 'Carne asada', 'P', 300),
(5, 'Flan', 'X', 50),
(6, 'GinTonic', 'T', 400),
(7, 'ensalada mixta', 'P', 50),
(8, 'papas fritas', 'P', 120),
(9, 'ensalada rusa', 'P', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `puesto` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `clave` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nombre`, `apellido`, `puesto`, `clave`, `fecha`, `hora`) VALUES
(13, 'joe', 'worfredo', 'bartender', 111, '2020-11-21', '21:11:42'),
(14, 'molly', 'rock', 'cervecero', 222, '2020-11-21', '21:11:30'),
(15, 'poliya', 'picazo', 'cocinero', 333, '2020-11-21', '21:11:56'),
(16, 'hippie', 'pappalardo', 'mozo', 444, '2020-11-21', '21:11:10'),
(17, 'margo', 'barrios', 'socio', 555, '2020-11-21', '21:11:35'),
(18, 'ernesto', 'sapioka', 'socio', 666, '2020-11-21', '21:11:07'),
(19, 'indi', 'gente', 'socio', 777, '2020-11-21', '21:11:30'),
(22, 'andres', 'sito', 'bartender', 888, '0000-00-00', '20:12:42'),
(23, 'lola', 'lamas', 'cervecero', 999, '0000-00-00', '20:12:13'),
(24, 'anakin', 'vader', 'cocinero', 1010, '0000-00-00', '20:12:39'),
(25, 'boba', 'fett', 'cocinero', 1111, '0000-00-00', '20:12:29'),
(26, 'homero', 'jey', 'mozo', 1212, '0000-00-00', '20:12:14'),
(27, 'cristian', 'zanoni', 'mozo', 9999, '2020-12-12', '21:12:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comandas`
--
ALTER TABLE `comandas`
  ADD PRIMARY KEY (`idComanda`);

--
-- Indices de la tabla `detallecomanda`
--
ALTER TABLE `detallecomanda`
  ADD PRIMARY KEY (`idComanda`,`Secuencia`);

--
-- Indices de la tabla `logueados`
--
ALTER TABLE `logueados`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `pendientes`
--
ALTER TABLE `pendientes`
  ADD PRIMARY KEY (`idComanda`,`Secuencia`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProdID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `logueados`
--
ALTER TABLE `logueados`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
