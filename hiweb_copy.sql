-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2019 a las 16:54:23
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hiweb_copy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basins`
--

CREATE TABLE `basins` (
  `ID` int(11) NOT NULL,
  `Basin name` text NOT NULL,
  `Associate Catchment` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `basins`
--

INSERT INTO `basins` (`ID`, `Basin name`, `Associate Catchment`) VALUES
(1, 'Basin_Riv1', 1),
(2, 'Basin_Riv2', 1),
(3, 'Basin_Riv3', 1),
(4, 'Basin_Riv4', 1),
(5, 'Basin_Riv5', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuencas`
--

CREATE TABLE `cuencas` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuencas`
--

INSERT INTO `cuencas` (`Id`, `nombre`) VALUES
(1, 'Coello');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domestic demand`
--

CREATE TABLE `domestic demand` (
  `ID` int(11) NOT NULL,
  `Associate river` int(11) NOT NULL,
  `Demand name` varchar(30) NOT NULL,
  `Demand type` varchar(30) NOT NULL,
  `Activity_level` float NOT NULL,
  `use_rate` float NOT NULL,
  `consumption` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `domestic demand`
--

INSERT INTO `domestic demand` (`ID`, `Associate river`, `Demand name`, `Demand type`, `Activity_level`, `use_rate`, `consumption`) VALUES
(1, 1, 'Riv1', 'Domestic', 50000, 45.625, 0.4),
(2, 1, 'Riv1', 'Industry', 2000, 1000, 0.4),
(3, 1, 'Riv1', 'Mining', 500, 10000, 0.4),
(4, 1, 'Riv1', 'Industry', 0, 0, 0),
(5, 1, 'Riv1', 'Mining', 0, 0, 0),
(6, 2, 'Riv2', 'Domestic', 100000, 45.625, 0.4),
(7, 2, 'Riv2', 'Industry', 4000, 1000, 0.4),
(8, 2, 'Riv2', 'Mining', 1000, 10000, 0.4),
(9, 2, 'Riv2', 'Mining', 0, 0, 0),
(10, 2, 'Riv2', 'Mining', 0, 0, 0),
(11, 3, 'Riv3', 'Domestic', 50000, 45.625, 0.4),
(12, 3, 'Riv3', 'Industry', 2000, 1000, 0.4),
(13, 3, 'Riv3', 'Mining', 500, 10000, 0.4),
(14, 3, 'Riv3', 'Mining', 0, 0, 0),
(15, 3, 'Riv3', 'Mining', 0, 0, 0),
(16, 4, 'Riv4', 'Domestic', 100000, 45.625, 0.4),
(17, 4, 'Riv4', 'Industry', 4000, 1000, 0.4),
(18, 4, 'Riv4', 'Mining', 1000, 10000, 0.4),
(19, 4, 'Ibague', 'Domestic', 700000, 45.625, 0.4),
(20, 4, 'Ibague', 'Industry', 25000, 1000, 0.4),
(21, 5, 'Riv5', 'Domestic', 100000, 45.625, 0.4),
(22, 5, 'Riv5', 'Industry', 5000, 1000, 0.4),
(23, 5, 'Riv5', 'Domestic', 0, 0, 0),
(24, 5, 'Riv5', 'Industry', 0, 0, 0),
(25, 5, 'Riv5', 'Industry', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hydropower`
--

CREATE TABLE `hydropower` (
  `ID` int(11) NOT NULL,
  `Reservoir name` varchar(40) NOT NULL,
  `Structure high` float NOT NULL,
  `Reservoir area` float NOT NULL,
  `Dead zone` float NOT NULL,
  `Budget zone` float NOT NULL,
  `Flow risk zone` float NOT NULL,
  `Associate river` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hydropower`
--

INSERT INTO `hydropower` (`ID`, `Reservoir name`, `Structure high`, `Reservoir area`, `Dead zone`, `Budget zone`, `Flow risk zone`, `Associate river`) VALUES
(1, 'Riv1', 0, 0, 0, 0, 0, 1),
(2, 'Riv2', 0, 0, 0, 0, 0, 2),
(3, 'Riv3', 0, 0, 0, 0, 0, 3),
(4, 'Cuenca alta', 80, 12.5, 8, 70, 79, 4),
(5, 'Cuenca media', 50, 10, 5, 45, 49, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infow data_series`
--

CREATE TABLE `infow data_series` (
  `ID` int(11) NOT NULL,
  `Asso_River` int(11) NOT NULL,
  `Data_time` date NOT NULL,
  `Variable` varchar(40) NOT NULL,
  `Variable value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `infow data_series`
--

INSERT INTO `infow data_series` (`ID`, `Asso_River`, `Data_time`, `Variable`, `Variable value`) VALUES
(1, 1, '1980-01-01', 'Qin', 1.68),
(2, 1, '1980-02-01', 'Qin', 1.67),
(3, 1, '1980-03-01', 'Qin', 1.5),
(4, 1, '1980-04-01', 'Qin', 1.76),
(5, 1, '1980-05-01', 'Qin', 6.91),
(6, 1, '1980-06-01', 'Qin', 11.58),
(7, 1, '1980-07-01', 'Qin', 4.16),
(8, 1, '1980-08-01', 'Qin', 3.62),
(9, 1, '1980-09-01', 'Qin', 4.52),
(10, 1, '1980-10-01', 'Qin', 24.66),
(11, 1, '1980-11-01', 'Qin', 7.23),
(12, 1, '1980-12-01', 'Qin', 4.89),
(13, 2, '1980-01-01', 'Qin', 2.17),
(14, 2, '1980-02-01', 'Qin', 2.08),
(15, 2, '1980-03-01', 'Qin', 1.78),
(16, 2, '1980-04-01', 'Qin', 2.61),
(17, 2, '1980-05-01', 'Qin', 10.41),
(18, 2, '1980-06-01', 'Qin', 13.09),
(19, 2, '1980-07-01', 'Qin', 5.23),
(20, 2, '1980-08-01', 'Qin', 4.39),
(21, 2, '1980-09-01', 'Qin', 4.44),
(22, 2, '1980-10-01', 'Qin', 18.07),
(23, 2, '1980-11-01', 'Qin', 7.13),
(24, 2, '1980-12-01', 'Qin', 5.76),
(25, 3, '1980-01-01', 'Qin', 1),
(26, 3, '1980-02-01', 'Qin', 0.9),
(27, 3, '1980-03-01', 'Qin', 0.8),
(28, 3, '1980-04-01', 'Qin', 0.9),
(29, 3, '1980-05-01', 'Qin', 3.6),
(30, 3, '1980-06-01', 'Qin', 5.5),
(31, 3, '1980-07-01', 'Qin', 2.3),
(32, 3, '1980-08-01', 'Qin', 1.8),
(33, 3, '1980-09-01', 'Qin', 1.8),
(34, 3, '1980-10-01', 'Qin', 7.7),
(35, 3, '1980-11-01', 'Qin', 2.8),
(36, 3, '1980-12-01', 'Qin', 2.4),
(37, 4, '1980-01-01', 'Qin', 3),
(38, 4, '1980-02-01', 'Qin', 3.4),
(39, 4, '1980-03-01', 'Qin', 3),
(40, 4, '1980-04-01', 'Qin', 3.3),
(41, 4, '1980-05-01', 'Qin', 7.1),
(42, 4, '1980-06-01', 'Qin', 14.3),
(43, 4, '1980-07-01', 'Qin', 6.4),
(44, 4, '1980-08-01', 'Qin', 5.3),
(45, 4, '1980-09-01', 'Qin', 6.2),
(46, 4, '1980-10-01', 'Qin', 31.5),
(47, 4, '1980-11-01', 'Qin', 10.4),
(48, 4, '1980-12-01', 'Qin', 8.1),
(49, 5, '1980-01-01', 'Qin', 2.5),
(50, 5, '1980-02-01', 'Qin', 2.94),
(51, 5, '1980-03-01', 'Qin', 2.78),
(52, 5, '1980-04-01', 'Qin', 3.46),
(53, 5, '1980-05-01', 'Qin', 8.57),
(54, 5, '1980-06-01', 'Qin', 12.41),
(55, 5, '1980-07-01', 'Qin', 5.17),
(56, 5, '1980-08-01', 'Qin', 4.36),
(57, 5, '1980-09-01', 'Qin', 5.48),
(58, 5, '1980-10-01', 'Qin', 23.29),
(59, 5, '1980-11-01', 'Qin', 8.54),
(60, 5, '1980-12-01', 'Qin', 7.11),
(61, 5, '1980-01-01', 'Qin', 2.5),
(62, 5, '1980-02-01', 'Qin', 2.94),
(63, 5, '1980-03-01', 'Qin', 2.78),
(64, 5, '1980-04-01', 'Qin', 3.46),
(65, 5, '1980-05-01', 'Qin', 8.57),
(66, 5, '1980-06-01', 'Qin', 12.41),
(67, 5, '1980-07-01', 'Qin', 5.17),
(68, 5, '1980-08-01', 'Qin', 4.36),
(69, 5, '1980-09-01', 'Qin', 5.48),
(70, 5, '1980-10-01', 'Qin', 23.29),
(71, 5, '1980-11-01', 'Qin', 8.54),
(72, 5, '1980-12-01', 'Qin', 7.11),
(73, 3, '1980-01-01', 'Qin', 1),
(74, 3, '1980-02-01', 'Qin', 0.9),
(75, 3, '1980-03-01', 'Qin', 0.8),
(76, 3, '1980-04-01', 'Qin', 0.9),
(77, 3, '1980-05-01', 'Qin', 3.6),
(78, 3, '1980-06-01', 'Qin', 5.5),
(79, 3, '1980-07-01', 'Qin', 2.3),
(80, 3, '1980-08-01', 'Qin', 1.8),
(81, 3, '1980-09-01', 'Qin', 1.8),
(82, 3, '1980-10-01', 'Qin', 7.7),
(83, 3, '1980-11-01', 'Qin', 2.8),
(84, 3, '1980-12-01', 'Qin', 2.4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `irrigation`
--

CREATE TABLE `irrigation` (
  `ID` int(11) NOT NULL,
  `Crop type` varchar(40) NOT NULL,
  `Irrigation area` float NOT NULL,
  `Eficiency` float NOT NULL,
  `Associate river` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `irrigation`
--

INSERT INTO `irrigation` (`ID`, `Crop type`, `Irrigation area`, `Eficiency`, `Associate river`) VALUES
(1, 'dom_1', 78, 0.6, 1),
(2, 'dom_2', 3100, 0.6, 2),
(3, 'dom_3', 1500, 0.6, 3),
(4, 'dom_4', 14000, 0.6, 4),
(5, 'dom_5', 53000, 0.6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `irrigation data_series`
--

CREATE TABLE `irrigation data_series` (
  `ID` int(11) NOT NULL,
  `Aso_IrrFiel` int(11) NOT NULL,
  `Data_time` date NOT NULL,
  `Variable` varchar(40) NOT NULL,
  `Variable value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `irrigation data_series`
--

INSERT INTO `irrigation data_series` (`ID`, `Aso_IrrFiel`, `Data_time`, `Variable`, `Variable value`) VALUES
(1, 1, '1980-01-01', 'Irr_Dem', 254.5),
(2, 1, '1980-02-01', 'Irr_Dem', 115),
(3, 1, '1980-03-01', 'Irr_Dem', 249.6),
(4, 1, '1980-04-01', 'Irr_Dem', 0),
(5, 1, '1980-05-01', 'Irr_Dem', 0),
(6, 1, '1980-06-01', 'Irr_Dem', 0),
(7, 1, '1980-07-01', 'Irr_Dem', 134),
(8, 1, '1980-08-01', 'Irr_Dem', 35.1),
(9, 1, '1980-09-01', 'Irr_Dem', 0),
(10, 1, '1980-10-01', 'Irr_Dem', 0),
(11, 1, '1980-11-01', 'Irr_Dem', 38.3),
(12, 1, '1980-12-01', 'Irr_Dem', 41.5),
(13, 5, '1980-01-01', 'Irr_Dem', 255.7),
(14, 5, '1980-02-01', 'Irr_Dem', 244.2),
(15, 5, '1980-03-01', 'Irr_Dem', 343.8),
(16, 5, '1980-04-01', 'Irr_Dem', 54),
(17, 5, '1980-05-01', 'Irr_Dem', 24.1),
(18, 5, '1980-06-01', 'Irr_Dem', 75.1),
(19, 5, '1980-07-01', 'Irr_Dem', 453.2),
(20, 5, '1980-08-01', 'Irr_Dem', 291.6),
(21, 5, '1980-09-01', 'Irr_Dem', 205.2),
(22, 5, '1980-10-01', 'Irr_Dem', 0),
(23, 5, '1980-11-01', 'Irr_Dem', 96.7),
(24, 5, '1980-12-01', 'Irr_Dem', 142.1),
(25, 2, '1980-01-01', 'Irr_Dem', 239.9),
(26, 2, '1980-02-01', 'Irr_Dem', 164.3),
(27, 2, '1980-03-01', 'Irr_Dem', 250.9),
(28, 2, '1980-04-01', 'Irr_Dem', 0),
(29, 2, '1980-05-01', 'Irr_Dem', 0),
(30, 2, '1980-06-01', 'Irr_Dem', 0),
(31, 2, '1980-07-01', 'Irr_Dem', 188.1),
(32, 2, '1980-08-01', 'Irr_Dem', 103.5),
(33, 2, '1980-09-01', 'Irr_Dem', 13),
(34, 2, '1980-10-01', 'Irr_Dem', 0),
(35, 2, '1980-11-01', 'Irr_Dem', 19.5),
(36, 2, '1980-12-01', 'Irr_Dem', 50.2),
(37, 3, '1980-01-01', 'Irr_Dem', 265.6),
(38, 3, '1980-02-01', 'Irr_Dem', 152.5),
(39, 3, '1980-03-01', 'Irr_Dem', 270.3),
(40, 3, '1980-04-01', 'Irr_Dem', 0),
(41, 3, '1980-05-01', 'Irr_Dem', 0),
(42, 3, '1980-06-01', 'Irr_Dem', 0),
(43, 3, '1980-07-01', 'Irr_Dem', 221.3),
(44, 3, '1980-08-01', 'Irr_Dem', 120),
(45, 3, '1980-09-01', 'Irr_Dem', 0),
(46, 3, '1980-10-01', 'Irr_Dem', 0),
(47, 3, '1980-11-01', 'Irr_Dem', 40.3),
(48, 3, '1980-12-01', 'Irr_Dem', 61.5),
(49, 4, '1980-01-01', 'Irr_Dem', 256.7),
(50, 4, '1980-02-01', 'Irr_Dem', 109),
(51, 4, '1980-03-01', 'Irr_Dem', 290.6),
(52, 4, '1980-04-01', 'Irr_Dem', 0),
(53, 4, '1980-05-01', 'Irr_Dem', 0),
(54, 4, '1980-06-01', 'Irr_Dem', 0),
(55, 4, '1980-07-01', 'Irr_Dem', 228.1),
(56, 4, '1980-08-01', 'Irr_Dem', 94),
(57, 4, '1980-09-01', 'Irr_Dem', 0),
(58, 4, '1980-10-01', 'Irr_Dem', 0),
(59, 4, '1980-11-01', 'Irr_Dem', 92.5),
(60, 4, '1980-12-01', 'Irr_Dem', 65.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rivers`
--

CREATE TABLE `rivers` (
  `ID` int(11) NOT NULL,
  `River name` varchar(40) NOT NULL,
  `Associate basin` int(11) NOT NULL,
  `Drinking water demand` int(11) NOT NULL,
  `Irrigation demnad` int(11) NOT NULL,
  `Hydropower demand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rivers`
--

INSERT INTO `rivers` (`ID`, `River name`, `Associate basin`, `Drinking water demand`, `Irrigation demnad`, `Hydropower demand`) VALUES
(1, 'Riv1', 1, 1, 1, 0),
(2, 'Riv2', 2, 1, 1, 0),
(3, 'Riv3', 3, 1, 1, 0),
(4, 'Riv4', 4, 1, 1, 1),
(5, 'Riv5', 5, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `basins`
--
ALTER TABLE `basins`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cuencas`
--
ALTER TABLE `cuencas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `domestic demand`
--
ALTER TABLE `domestic demand`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `hydropower`
--
ALTER TABLE `hydropower`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `infow data_series`
--
ALTER TABLE `infow data_series`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `irrigation`
--
ALTER TABLE `irrigation`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `irrigation data_series`
--
ALTER TABLE `irrigation data_series`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `rivers`
--
ALTER TABLE `rivers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `basins`
--
ALTER TABLE `basins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cuencas`
--
ALTER TABLE `cuencas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `domestic demand`
--
ALTER TABLE `domestic demand`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `hydropower`
--
ALTER TABLE `hydropower`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `infow data_series`
--
ALTER TABLE `infow data_series`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `irrigation`
--
ALTER TABLE `irrigation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `irrigation data_series`
--
ALTER TABLE `irrigation data_series`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `rivers`
--
ALTER TABLE `rivers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
