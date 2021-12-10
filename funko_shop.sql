-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2021 a las 03:41:21
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `funko_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `finalizado` tinyint(1) NOT NULL DEFAULT 0,
  `usuario_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `finalizado`, `usuario_id`) VALUES
(1, 0, 1),
(2, 0, 11),
(3, 1, 12),
(4, 1, 13),
(5, 1, 12),
(6, 1, 12),
(7, 1, 12),
(8, 1, 12),
(9, 1, 12),
(10, 1, 12),
(11, 1, 12),
(12, 1, 13),
(13, 1, 13),
(14, 1, 13),
(15, 0, 13),
(16, 0, 15),
(17, 0, 16),
(18, 0, 18),
(19, 0, 23),
(20, 0, 24),
(21, 0, 30),
(22, 1, 9),
(23, 0, 10),
(24, 1, 12),
(25, 1, 9),
(26, 1, 12),
(27, 1, 9),
(28, 1, 9),
(29, 1, 9),
(30, 0, 33),
(31, 1, 12),
(32, 1, 34),
(33, 1, 34),
(34, 1, 34),
(35, 1, 34),
(36, 1, 12),
(37, 1, 12),
(38, 1, 12),
(39, 1, 12),
(40, 0, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_productos`
--

CREATE TABLE `carrito_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `carrito_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_productos`
--

INSERT INTO `carrito_productos` (`id`, `producto_id`, `carrito_id`) VALUES
(32, 7, 3),
(33, 10, 3),
(42, 3, 3),
(45, 2, 5),
(46, 2, 6),
(47, 3, 6),
(48, 2, 7),
(49, 4, 8),
(50, 13, 8),
(51, 3, 9),
(52, 3, 10),
(53, 2, 11),
(54, 2, 4),
(55, 2, 12),
(56, 3, 14),
(57, 1, 15),
(58, 2, 15),
(59, 3, 15),
(60, 3, 17),
(110, 3, 22),
(111, 2, 11),
(112, 3, 11),
(113, 2, 24),
(114, 7, 22),
(115, 13, 25),
(116, 2, 24),
(118, 2, 26),
(119, 3, 26),
(120, 7, 32),
(121, 2, 33),
(122, 2, 34),
(123, 2, 35),
(124, 2, 31),
(126, 3, 36),
(127, 2, 37),
(128, 2, 38),
(129, 2, 38),
(134, 2, 40),
(135, 3, 40),
(136, 4, 39),
(137, 10, 39),
(138, 7, 39),
(139, 3, 39),
(140, 3, 39),
(141, 3, 39),
(142, 3, 39),
(143, 3, 39),
(144, 3, 39),
(145, 3, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactanos`
--

CREATE TABLE `contactanos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `comentario` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactanos`
--

INSERT INTO `contactanos` (`id`, `nombre`, `correo`, `comentario`) VALUES
(1, 'moisesm_19', 'si123@gmail.com', 'asdfs'),
(2, 'moisesm_19', 'si123@gmail.com', 'Daw'),
(3, 'qwfeaf|', 'aza@aza', 'holis uwu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float NOT NULL DEFAULT 0,
  `exclusivo` tinyint(1) NOT NULL DEFAULT 0,
  `limitado` tinyint(1) NOT NULL DEFAULT 0,
  `nuevo` tinyint(1) NOT NULL DEFAULT 0,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_secundaria` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `exclusivo`, `limitado`, `nuevo`, `imagen`, `imagen_secundaria`, `marca`) VALUES
(1, 'Batman Serie Artistica', 600, 0, 0, 1, 'img/dc/batman_art.png', 'img/dc/batman_art2.png', 'dc'),
(2, 'King Killmonger (What If)', 319, 0, 0, 1, 'img/marvel/whatif_killmonger.png', 'img/marvel/whatif_killmonger2.jpg', 'marvel'),
(3, 'Rey Joker', 319, 0, 0, 1, 'img/dc/king_joker.png', 'img/dc/king_joker2.png', 'dc'),
(4, 'Wanda Halloween (WandaVision)', 289, 0, 0, 1, 'img/marvel/halloween_wanda.jpg', 'img/marvel/halloween_wanda2.jpg', 'marvel'),
(5, 'Wonder Woman(Linterna Oscura)', 289, 0, 0, 0, 'img/dc/black_lanternWW.jpg', 'img/dc/black_lanternWW2.jpg', 'dc'),
(6, 'Sprite', 289, 0, 0, 0, 'img/marvel/sprite.png', 'img/marvel/sprite2.png', 'marvel'),
(7, 'Godspeed', 279, 0, 0, 0, 'img/dc/godspeed.jpg', 'img/dc/godspeed2.jpg', 'dc'),
(8, 'Sylvie', 289, 0, 0, 0, 'img/marvel/sylvie.jpg', 'img/marvel/sylvie2.jpg', 'marvel'),
(9, 'Harley Queen (Navideña)', 279, 0, 0, 0, 'img/dc/holiday_queen.png', 'img/dc/holiday_queen2.png', 'dc'),
(10, 'Spiderman Zombie Hunter', 289, 1, 0, 0, 'img/marvel/zombie_spider.jpg', 'img/marvel/zombie_spider2.jpg', 'marvel'),
(11, 'Batman 1989 (Diecast)', 1199, 0, 1, 0, 'img/dc/batman_diecast.png', 'img/dc/batman_diecast2.png', 'dc'),
(12, 'Spiderman Venom Poison', 319, 0, 0, 0, 'img/marvel/poison_spider.png', 'img/marvel/poison_spider2.jpg', 'marvel'),
(13, 'Diego pro', 1369, 1, 0, 0, '/img/dieGOD.jpg', '/img/dieGOD2.jpg', 'dc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`) VALUES
(1, 'moy', 'moises@gmail.com', '1234'),
(2, 'moisesm_19', 'moises@gmail.com', '1234'),
(3, 'moisesm_21', 'si123@gmail.com', '1234'),
(4, 'diego', 'diego@diego', 'diego'),
(5, 'diego', 'hola@diezep.com', 'diego'),
(6, 'diego', 'hola@diezep.com', 'aaaa'),
(7, 'moisesm_19', 'moises@gmail.com', '1'),
(8, 'moisesm_19', 'moises@gmail.com', '2'),
(9, 'diezep', 'diezep@diezep', '1234'),
(10, 'lol', 'lol@lol', 'lol'),
(11, 'lol', 'lol@lol2', 'lol'),
(12, 'eza', 'eza@eza', 'eza'),
(13, 'diego Pro', 'silvia.moreno.cnmdk@hotmail.com', '12345'),
(14, 'diego Pro', 'si123@gmail.com', '1234'),
(15, '¿aSC', 'si123@gmail.com', '$2y$10$Y4SDZFE0/mVgEQvz1S0Jjehb16ZtoBhDQydT5N1iwJZq/Yi44VQ02'),
(16, 'Jesus', 'moi.j@gmail.com', '$2y$10$lkuG6XEv.ARZVCF0fBzGPOo2nbIEhDC/KLPZzpV1OUYrSdSiBokUq'),
(17, 'asdas', 'si123@gmail.com', '$2y$10$lx2QtcNhkfQxvYfmqRumc.p8PyMt8Ik8cJojQq4fqK5iW2ZD65XW6'),
(18, 'moisesm_19', 'si123@gmail.com', '$2y$10$hnGOYXjWVHDeOXAAM/sMIu4XHX8utrDtjQ8j2ZKXypNjzSV090EiK'),
(19, 'Jesus', 'moi.j@gmail.com', '$2y$10$ip/hNLY/iWbNRH.ZznRyDeQqgCwbqQ1mfIYuEV/DaV2UlLl85VPo6'),
(20, 'Jesus', 'moi.j@gmail.com', '$2y$10$fmA.O6NzWkBZpK4wmQDg4ulM2kHxiGhBI.dUuljULCqEq1FbL0eeu'),
(21, 'Jesus', 'moi.j@gmail.com', '$2y$10$kv30RtNe/N8kue2.88u./.crqkxfTTaTfgjTo/IW8VX7bItu3/x8G'),
(22, 'Jesus', 'moi.j@gmail.com', '$2y$10$ljnvEjDCHeVO9N4CvC2fbON4HsYmZSAdHNPSZK18YkvFOnP8NqI/K'),
(23, 'diego Pro', 'moises@gmail.com', '$2y$10$w2qWhosA3xwFPULZmdvcuuBav9T4a/q.ukqYK78pNHv4pe0EMtav6'),
(24, 'wd', 'acw@1eww', '$2y$10$jX1L2MvLWfYLWpZIw/Cuku/RdEi21u8Xr1.9xue0U/7bsvJg9PGkK'),
(25, 'Jesus', 'moi.j@gmail.com', '$2y$10$GvnBKQpfNryQQbzC4spPwOI3zdg6I3E5NfVhwC3VbaN8DD5C2fkki'),
(26, 'Jesus', 'moi.j@gmail.com', '$2y$10$74w3p.D8.wh6t4m7ErUKkuaV/F5u/db5FtSHyRNIWZXQktGsIxx1i'),
(27, 'Jesus', 'moi.j@gmail.com', '$2y$10$vfhLxOUh9kT7lgODoD31geAR8LYParE1Qkb8mph5S.lWT9pa2223W'),
(28, 'Jesus', 'moi.j@gmail.com', '$2y$10$be6PZuP7dR1pjNwXroxTWeMAcTDqB2n7eyic2lzcCFIBaS4I2gvXG'),
(29, 'Jesus', 'moi.j@gmail.com', '$2y$10$zpio.9R39/zfy3sB7KIVBumnwyrl2Fii90BB/QPUMAJ330pXN/cye'),
(30, 'Jesus', 'contacto0carlos@gmail.com', '$2y$10$bwb0X6az2vy9tRgCLU4rpuzIR7uJelL8.54eqTm724gZCq.tUk.vu'),
(31, 'moisesm_19', '1234@gmail.com', '$2y$10$2K1/.t.o8/d8mp6JMqv4COga/r9MPqPsgoUyT8GCKaKqUbem3kVqy'),
(32, 'moisesm_19', '6121072052@shgcb', '1234'),
(33, 'ma', 'dawda@asca', '4321'),
(34, '', 'das', '123'),
(35, 'prueba', 'prueb@gmail.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `carrito_productos`
--
ALTER TABLE `carrito_productos`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `carrito_id` (`carrito_id`),
  ADD KEY `carrito_productos_ibfk_2` (`producto_id`);

--
-- Indices de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `carrito_productos`
--
ALTER TABLE `carrito_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `carrito_productos`
--
ALTER TABLE `carrito_productos`
  ADD CONSTRAINT `carrito_productos_ibfk_1` FOREIGN KEY (`carrito_id`) REFERENCES `carrito` (`id`),
  ADD CONSTRAINT `carrito_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
