-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2026 a las 20:31:34
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
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

DROP TABLE IF EXISTS `carrito`;
CREATE TABLE `carrito` (
  `idCarrito` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`idCarrito`, `idUsuario`, `idProducto`, `cantidad`) VALUES
(1, 2, 0, 1),
(3, 2, 1, 3),
(4, 2, 3, 4),
(5, 2, 2, 2),
(13, 3, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `marca`, `modelo`, `precio`, `stock`) VALUES
(1, 'Chaqueta', 'Nike', 'Air', 49.99, 4),
(2, 'Pantalones', 'Adidas', 'Originals', 34.99, 14),
(3, 'Zapatillas', 'New Balance', '360', 79.99, 6),
(8, 'Calcetines', 'Joma', 'E32', 4.99, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` int(11) NOT NULL DEFAULT 1,
  `token` varchar(255) NOT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `dni`, `apellidos`, `nombre`, `email`, `password`, `rol`, `token`, `verificado`) VALUES
(2, '78787878', 'lozano', 'Pedro', 'pedro@gmail.com', '$2y$10$SPCKZXrDeOiywB1q09wlR.9ETzvHh6GVbk5816mt2u9U2/omJkOmK', 1, '', 0),
(6, 'admin', 'admin', 'admin', 'admin@gmail.com', '$2y$10$g3965h6.r1gMKvRQphrP7utmjpvCMJxVnE.2Eo92SUbM5Hr1nZVmi', 0, '056fa0bfdff85148e39b82cfc20d5c1d', 1),
(7, '12345', 'Rodriguez', 'Pablo', 'pablo@gmail.com', '$2y$10$tXYdQmct69nnt9wR8oHUXuIq2/x8IjYrqogS4nH.Zk5i9sqporwVy', 1, '', 0),
(28, '78475412h', 'Castro Muriana', 'Javier', 'javiercastromuriana2006@gmail.com', '$2y$10$UHF9xn7nqDV215BUuTT.IOl5fzjlIIp8O9ZzeKA/WFNJdKZbwsidy', 1, '', 1),
(33, '11111', 'Castro Muriana', 'Javier', 'javiliyo333@gmail.com', '$2y$10$uy7lloGYy8yE1FAtx.aMuOcADqMToRaOj3S0sP1QvIWv29xT9e2ua', 1, '', 1),
(34, '78475412h', '111', '111', 'luismi@gmail.com', '$2y$10$ETt2hhAcBPOtTCmRZv3og.qE5clv/m6KzJd.kwCHRzuM36rnt7GI2', 1, '9a7e9103070e502198de8f33e05f5747', 0),
(35, '', 'García López', 'Juan', 'juan.garcia@example.com', '', 1, '', 0),
(36, '', 'Pérez Sánchez', 'María', 'maria.perez@example.com', '', 1, '', 0),
(37, '', 'Rodríguez Martín', 'Carlos', 'carlos.rodriguez@example.com', '', 1, '', 0),
(38, '', 'López Fernández', 'Ana', 'ana.lopez@example.com', '', 1, '', 0),
(39, '', 'Gómez Ruiz', 'Pedro', 'pedro.gomez@example.com', '', 1, '', 0),
(40, '', 'Hernández Díaz', 'Lucía', 'lucia.hernandez@example.com', '', 1, '', 0),
(41, '', 'Martínez Torres', 'Javier', 'javier.martinez@example.com', '', 1, '', 0),
(42, '', 'Sánchez Morales', 'Carmen', 'carmen.sanchez@example.com', '', 1, '', 0),
(43, '', 'Ramírez Ortega', 'David', 'david.ramirez@example.com', '', 1, '', 0),
(44, '', 'Jiménez Castro', 'Laura', 'laura.jimenez@example.com', '', 1, '', 0),
(45, '', 'Navarro Vega', 'Daniel', 'daniel.navarro@example.com', '', 1, '', 0),
(46, '', 'Romero Serrano', 'Elena', 'elena.romero@example.com', '', 1, '', 0),
(47, '', 'Molina Gil', 'Sergio', 'sergio.molina@example.com', '', 1, '', 0),
(48, '', 'Domínguez Rojas', 'Marta', 'marta.dominguez@example.com', '', 1, '', 0),
(49, '', 'Vázquez Cano', 'Adrián', 'adrian.vazquez@example.com', '', 1, '', 0),
(50, '', 'Ramos Herrera', 'Isabel', 'isabel.ramos@example.com', '', 1, '', 0),
(51, '', 'Ortega Medina', 'Miguel', 'miguel.ortega@example.com', '', 1, '', 0),
(52, '', 'Santos Prieto', 'Paula', 'paula.santos@example.com', '', 1, '', 0),
(53, '', 'Castillo León', 'Raúl', 'raul.castillo@example.com', '', 1, '', 0),
(54, '', 'Cruz Márquez', 'Beatriz', 'beatriz.cruz@example.com', '', 1, '', 0),
(55, '', 'Flores Núñez', 'Iván', 'ivan.flores@example.com', '', 1, '', 0),
(56, '', 'Blanco Pardo', 'Patricia', 'patricia.blanco@example.com', '', 1, '', 0),
(57, '', 'Moreno Iglesias', 'Andrés', 'andres.moreno@example.com', '', 1, '', 0),
(58, '', 'Suárez Peña', 'Silvia', 'silvia.suarez@example.com', '', 1, '', 0),
(59, '', 'Gutiérrez Lozano', 'Alberto', 'alberto.gutierrez@example.com', '', 1, '', 0),
(60, '', 'Aguilar Vidal', 'Rosa', 'rosa.aguilar@example.com', '', 1, '', 0),
(61, '', 'Méndez Calvo', 'Diego', 'diego.mendez@example.com', '', 1, '', 0),
(62, '', 'Cabrera Campos', 'Cristina', 'cristina.cabrera@example.com', '', 1, '', 0),
(63, '', 'Soto Parra', 'Fernando', 'fernando.soto@example.com', '', 1, '', 0),
(64, '', 'Reyes Salas', 'Nuria', 'nuria.reyes@example.com', '', 1, '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idCarrito`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `idCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
