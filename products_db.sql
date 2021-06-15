-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2021 a las 01:11:22
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `products_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infogallerys`
--

CREATE TABLE `infogallerys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prud_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `infogallerys`
--

INSERT INTO `infogallerys` (`id`, `name_image`, `image`, `prud_id`, `status`) VALUES
(1, 'Nevera', '', 1, 1),
(2, 'Nevera', 'imagen.jpeg', 1, 1),
(3, 'Nevera', 'imagen.jpeg', 1, 1),
(4, 'Nevera', 'imagen.jpeg', 1, 1),
(5, 'Nevera', 'imagen.jpeg', 1, 1),
(6, 'Nevera', 'imagen.jpeg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoproducts`
--

CREATE TABLE `infoproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_person` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `infoproducts`
--

INSERT INTO `infoproducts` (`id`, `name_person`, `category`, `date`, `status`) VALUES
(1, 'Yorledys', 'Electrodomesticos', '2021-06-15 21:15:52', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `infogallerys`
--
ALTER TABLE `infogallerys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prud_id` (`prud_id`);

--
-- Indices de la tabla `infoproducts`
--
ALTER TABLE `infoproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `infogallerys`
--
ALTER TABLE `infogallerys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `infoproducts`
--
ALTER TABLE `infoproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `infogallerys`
--
ALTER TABLE `infogallerys`
  ADD CONSTRAINT `infogallerys_ibfk_1` FOREIGN KEY (`prud_id`) REFERENCES `infoproducts` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
