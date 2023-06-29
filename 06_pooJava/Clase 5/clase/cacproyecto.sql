-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2023 a las 01:36:03
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cacproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidad` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `idProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidad`, `nombre`, `idProvincia`) VALUES
(1, 'Moreno', 3),
(2, 'Guaymallén', 4),
(3, 'Cafayate', 2),
(4, 'Cruz Alta', 1),
(5, 'Quilmes', 3),
(6, 'Berazategui', 3),
(7, 'San Martín', 3),
(8, 'Morón', 3),
(9, 'Castelar', 3),
(10, 'Cafayate', 2),
(11, 'CABA', 3),
(12, 'Florencio Varela', 3),
(13, 'Lavalle', 4),
(14, 'Las Heras', 4),
(15, 'Berisso', 3),
(16, 'Haedo', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `lugarentrega` varchar(80) NOT NULL,
  `localidad` int(11) NOT NULL,
  `codpostal` varchar(9) NOT NULL,
  `formadepago` varchar(10) NOT NULL,
  `tarjtitular` varchar(40) NOT NULL,
  `tarjnumero` bigint(16) NOT NULL,
  `tarjvto` varchar(10) NOT NULL,
  `tarjclave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idpedido`, `nombre`, `apellido`, `usuario`, `mail`, `lugarentrega`, `localidad`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) VALUES
(2, 'Juanxxx', 'Sanchez', 'psuarez', 'sbsanchez@gmail.com', 'Estanislao del campo 5790', 3, '1234', 'mercado', 'Pedro suarez', 2147483647, '0422', 325),
(3, 'Pedroeeee', 'Sanchez', 'psuarez', 'sbsanchez@gmail.com', 'Estanislao del campo 5790', 2, '1233', 'o', 'Pedro suarez', 2147483647, '0422', 123),
(4, 'Pedro', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, '1234', 'o', 'sdf', 2147483647, 'sdf', 1245),
(5, 'Juan', 'Rodriguez', 'jrodriguez', 'jrodriguez@gmail.com', 'Av. Rivadavia 32556', 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(6, 'María', 'Rosales', 'mrosales', 'mrosales@gmail.com', 'Av La Plata 321', 1, '3433', 'o', 'María Rosales', 2147483647, '0422', 314),
(7, 'Pedro', 'Suarez', 'jrodriguez', 'dsf@vorterix.com', 'Av. Rivadavia 32556', 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(8, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(9, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(10, 'Hermeto', 'Carmona', 'hcarmona', 'hcarmona@gmail.com', 'Av. La Plata 2233 ', 1, '1882', 'o', 'ss', 33, '33', 33),
(12, 'Facundo', 'Sileo', 'fsileo', 'fsileo@gmail.com', 'Av. La Plata 556', 1, '1884', 'checkedVal', 'Facundo Sileo', 1234, '0422', 423),
(13, 'Brenda', 'Benitez', 'bbenitez', 'bbenitez@hotmail.com', 'Av. Cabildo 4555', 1, '1223', 'checkedVal', 'Brenda Benitez', 1234, '0422', 423),
(14, 'Jesus', 'Rodriguez', 'jrodriguez', 'jrodriguez@gmail.com', 'Av. Cabildo 333', 1, '1223', 'checkedVal', 'Jesus Rodriguez', 123456, '0422', 325),
(23, 'Beatriz', 'Perez', 'bperez', 'bperez@gmail.com', 'Laprida 232', 2, '1554', 'mercado', 'Beatriz Perez', 1234, '0422', 325),
(25, 'Hernesto', 'Rodriguez', 'jrodriguez', 'prueba@gmail.com', 'Av. Cabildo 4555', 1, '1223', 'null', 'Jesus Rodriguez', 123, '0422', 123),
(27, 'Hernesto', 'Rodriguez', 'jrodriguez', 'prueba@gmail.com', 'Av. Cabildo 4555', 2, '1223', 'tarjeta', 'Jesus Rodriguez', 123, '0422', 123),
(28, 'Hernan', 'Jacinto', 'hjacinto', 'hjacinto@gmail.com', 'Laprida 232', 3, '1255', 'mercado', 'dd', 3333, '3333', 333),
(29, 'Paola', 'Hernanedz', 'phernan', 'ph@gmail.com', 'Laprida 232', 3, '1234', 'tarjeta', 'aa', 333, '3333', 333),
(30, 'Romina', 'Estevez', 'restevez', 'restevez@gmail.com', 'Av La Plata 321', 1, '1882', 'on', '111', 111, '0122', 123),
(31, 'Juana', 'Robledo', 'jrobledo', 'jperez@gmail.com', 'Av. Santa Fe 123', 1, '123', 'on', 'sdf', 222, '222', 22),
(32, 'Pablo', 'Porta', 'porta', 'porta@gmail.com', 'Av La Plata 321', 1, '123', 'on', '123', 123, '123', 123),
(34, 'Lorena', 'Garnero', 'lgarnero', 'lgarnero@gmail.com', 'Av La Plata 321', 1, '1882', 'on', '123', 123, '123', 123),
(35, 'Juan', 'Pio', 'jpio', 'jpio@gmail.com', 'Av La Plata 321', 1, '1882', 'on', '123', 123, '123', 123),
(36, 'Verónica', 'Pedraza', 'vped', 'vped@gmail.com', 'Av La Plata 321', 1, '1888', 'on', '222', 222, '22', 222),
(37, 'Benjamín', 'Perez', 'bperez', 'bperez@gmail.com', 'Av La Plata 321', 1, '1888', 'on', '222', 222, '22', 222),
(38, 'Norma', 'Rosales', 'nrosa', 'nrosa@gmail.com', 'Av La Plata 321', 1, '1332', 'on', '11', 11, '11', 11),
(39, 'Marta', 'Sanchez', 'nrosa', 'nrosa@gmail.com', 'Av La Plata 321', 1, '1332', 'on', '11', 11, '11', 11),
(40, 'Marta', 'Sanchez', 'msanchez', 'nrosa@gmail.com', 'Av La Plata 321', 1, '1332', 'on', '11', 11, '11', 11),
(41, 'Juan', 'Perez', 'jperez', 'jperez@gmail.com', 'Av La Plata 321', 1, '2222', 'on', '22', 2, '2', 2),
(42, 'Juan', 'Perez', 'jperez', 'jperez@gmail.com', 'Av La Plata 321', 1, '1234', 'on', '22', 222, '222', 22),
(43, 'Kevin', 'Suarez', 'ksuarez', 'ksuarez@gmai.com', 'Av La Plata 321', 1, '1885', 'on', 'ddddd', 33333, '3333', 333),
(44, 'Kevin', 'Suarez', 'ksuarez', 'ksuarez@gmai.com', 'Av La Plata 321', 1, '1885', 'on', 'ddddd', 33333, '3333', 333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idprovincia` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre`) VALUES
(3, 'Buenos Aires'),
(19, 'Catamarca'),
(16, 'Chaco'),
(13, 'Corrientes'),
(6, 'Entre Ríos'),
(12, 'La Pampa'),
(1, 'La Rioja'),
(4, 'Mendoza'),
(10, 'Misiones'),
(2, 'Salta'),
(11, 'San Juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `clave`) VALUES
(1, 'prueba@gmail.com', '909090'),
(2, 'mail@hotmail.com', '808080'),
(6, 'gPerez@codoacodo.edu.ar', 'gPerez1234'),
(8, 'nKevin@codoacodoe.edu.ar', 'rHer1234'),
(11, 'psuarez@codoacodo.edu.ar', 'pSuarez1234'),
(12, 'jperez@gmail.com', 'jPerez1234'),
(15, 'pMorgan@codoacodo.edu.ar', 'pMorgan1234'),
(19, 'dMendez@codoacodo.edu.ar', 'dMendez1234 '),
(42, 'jsanchez@codoacodo.e', 'jSanchez1234'),
(45, 'jsuarez@codoacodo.ed', 'jSamnchez1234'),
(46, 'hperez@codoacodo.edu', 'hPerez1234'),
(47, 'lperez@codoacodo.edu', 'hPerez1234'),
(48, 'nsuarez@codoacodo.ed', 'hPerez1234'),
(49, 'lkevin@codoacodo.edu', 'hPerez1234'),
(50, 'portiz@codoacodo.edu', 'hPerez1234'),
(51, 'ljuarez@codoacodo.edu.ar', 'lJuarez1234'),
(55, 'jlepes@codoacodo.edu.ar', 'jLepes1234'),
(56, 'lkevin@codoacodo.edu.ar', 'jLepes1234'),
(60, 'mperez@codoacodo.edu.ar', 'mPerez1234'),
(61, 'nortiz@codoacodo.edu.ar', 'lOrtiz1234'),
(63, 'hEnriques@codoacodo.edu.ar', 'hEnriques1234'),
(64, 'msanchez@codoacodo.edu.ar', 'mSanchez1234'),
(65, 'lvidal@codoacodo.edu.ar', 'lVidal1234'),
(68, 'vsanchez@codoacodo.edu.ar', 'vSanchez1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD UNIQUE KEY `LocProvincia` (`idlocalidad`),
  ADD KEY `LocProv` (`idProvincia`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `FK_Localidad` (`localidad`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `usuario_2` (`usuario`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idlocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idprovincia`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_Localidad` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`idlocalidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
