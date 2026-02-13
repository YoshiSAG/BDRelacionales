-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2026 a las 02:39:39
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(20) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Uomo Born In Roma Coral Fantasy Eau De Toilette fo', 2553, 'Valentino', 'Acerca de este artículo\r\nValentino\r\n100 ml\r\nFragancia personal', 10),
(2, 'Le Beau le Parfum Spray 125ml', 2349, 'Jean Paul Gaultier', 'Acerca de este artículo\r\nPara un uso prolongado\r\nFragancia duradera', 10),
(3, 'The Most Wanted Eau de Parfum Intense, 150 ml', 3550, 'Azzaro', 'Acerca de este artículo\r\nAzzaro\r\n150 ml\r\nFragancia personal', 10),
(4, 'Espray para hombre CHRISTIAN Sauvage, 6.8 onzas', 3479.69, 'Dior', 'Acerca de este artículo\r\nEau De Toilette\r\nSauvage by Christian Dior for Men 6.8 oz Eau de Toilette Spray\r\nSauvage by Christian Dior for Men\r\n6.8 oz Eau de Toilette Spray', 10),
(5, 'Espray Eros para hombre, 3.4 onzas', 1048.24, 'Versace', 'Acerca de este artículo\r\nVersace Eros 3.4 EDT 1.5\" Sleeve case Negro\r\nEau de Toilette Spray\r\naromático, verde, vainilla\r\nAplicar sobre la piel limpia y seca.', 10),
(6, 'Aventus Eau De Parfum Spray 3.3 oz / 100 ml (Men)', 9039, 'creed', 'Aventus de Creed es una fragancia de la familia olfativa Chipre Frutal para Hombres.\r\nAventus se lanzó en 2010. Aventus fue creada por Jean-Christophe Hérault y Erwin Creed\r\nLas Notas de Salida son piña, bergamota, grosellas negras y manzana; las Notas de Corazón son abedul, pachulí, jazmín de Marruecos y rosa; las Notas de Fondo son almizcle, musgo de roble, ámbar gris y vainilla.', 10),
(7, 'Agua de perfume espray Eros Flame para hombre, 3.4', 1830, 'Versace', 'Acerca de este artículo\r\nGianni Versace Versace Eros Flame es un Eau De Parfum para hombre intenso y apasionado que se presenta en una botella de aerosol de 3.4 onzas/100 ml; sumérjase en la ardiente mezcla de cítricos, especias y maderas que crean una experiencia de fragancia seductora y cautivadora\r\nEsta fragancia amaderada y especiada tiene una mezcla de limón, mandarina, naranja, pimienta negra, romero silvestre, madera de pimienta, geranio, rosa, cedro, pachulí, haba tonka y vainilla\r\nApto ', 10),
(8, 'Acqua Di Gio by Giorgio Armani for Men - 6.7 oz ED', 2499, 'Armani Beauty', 'Acqua Di Gio by Giorgio Armani for Men\r\n6.7 oz EDP Spray\r\nFresh and aquatic fragrance perfect for daily wear', 10),
(9, 'Emporio Armani Stronger With You for Men EDT Spray', 1971.43, 'Armani Beauty', 'Acerca de este artículo\r\nEmporio armani stronger with you for men\r\n3.4 oz eau de toilette spray\r\nGiorgio armani\r\nCreado con atención al detalle', 10),
(10, 'Le Male Elixir for Men - 4.2 oz Parfum Spray', 2223.01, 'Jean Paul Gaultier', 'Acerca de este artículo\r\nA reinterpretation of the classic Le Male with a more intense elixir.\r\nBlends fresh, spicy, and warm notes for a seductive appeal.\r\nPerfect for both casual and formal occasions.', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
