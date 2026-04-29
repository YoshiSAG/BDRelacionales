-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2026 a las 17:11:56
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
-- Base de datos: `videojuego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `Nombre`, `Descripcion`) VALUES
(1, 'RPG', 'Juegos de rol donde el jugador controla las acciones de un personaje o varios inmerso en un mundo detallado, con sistemas de progresión y estadisticas'),
(2, 'Shooter', 'Juego centrado en el uso de armas de fuego desde una perspectiva de primera persona, priorizando los reflejos y la puntería'),
(3, 'Sandbox', 'Títulos que ofrecen al jugador una gran libertad para interactuar con el entorno y realizar objetivos de manera no lineal, como en mundos abiertos'),
(4, 'Metroidvania', 'Subgénero de acción y aventura enfocado en la exploración de un mapa interconectado donde el acceso a ciertas áreas requiere nuevas habilidades.'),
(5, 'Battle Royale', 'Género multijugador masivo que combina elementos de supervivencia y búsqueda de equipamiento, donde el último jugador o equipo en pie gana.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Fabricante` varchar(50) NOT NULL,
  `año_lanzamiento` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `Nombre`, `Fabricante`, `año_lanzamiento`) VALUES
(1, 'Play Statiom 5', 'Sony Interactive Entertainment', '2020'),
(2, 'Xbox Series X', 'Microsoft', '2020'),
(3, 'Nintendo Switch', 'Nintendo', '2017'),
(4, 'PC', 'VARIADO', '2026');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `desarrolladora` varchar(100) NOT NULL,
  `año_lanzamiento` year(4) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id_juego`, `titulo`, `desarrolladora`, `año_lanzamiento`, `precio`, `genero_id`) VALUES
(1, 'The Witcher 3: Wild Hunt', 'CD Projekt Red', '2015', 799.50, 1),
(2, 'Doom Eternal', 'id Software', '2020', 999.00, 2),
(3, 'Grand Theft Auto V', 'Rockstar North', '2013', 549.99, 3),
(4, 'Bloodborne', 'FromSoftware', '2015', 399.00, 1),
(5, 'Cuphead', 'Studio MDHR', '2017', 345.50, 4),
(6, 'Call of Duty: Modern Warfare III', 'Sledgehammer Games', '2023', 1399.00, 2),
(7, 'Hades', 'Supergiant Games', '2020', 425.25, 1),
(8, 'Terraria', 'Re-Logic', '2011', 109.99, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego_plataforma`
--

CREATE TABLE `videojuego_plataforma` (
  `juego_id` int(11) NOT NULL,
  `plataforma_id` int(11) NOT NULL,
  `fecha_disponible` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuego_plataforma`
--

INSERT INTO `videojuego_plataforma` (`juego_id`, `plataforma_id`, `fecha_disponible`) VALUES
(1, 1, '2022-12-12'),
(6, 1, '2026-04-05'),
(6, 4, '2026-04-04'),
(3, 4, '2026-04-21'),
(6, 2, '2026-04-01'),
(3, 1, '2026-03-17'),
(8, 4, '2025-11-27'),
(8, 3, '2026-01-06'),
(3, 2, '2026-01-13'),
(5, 3, '2025-04-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD KEY `plataforma_id` (`plataforma_id`),
  ADD KEY `juego_id` (`juego_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD CONSTRAINT `videojuego_plataforma_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `videojuego` (`id_juego`),
  ADD CONSTRAINT `videojuego_plataforma_ibfk_2` FOREIGN KEY (`plataforma_id`) REFERENCES `plataforma` (`id_plataforma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
