-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2024 a las 14:37:29
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
-- Base de datos: `knowhow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos`
--

CREATE TABLE `metodos` (
  `id_metodo` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tiempo_estudio` int(11) NOT NULL,
  `tiempo_descanso` int(11) NOT NULL,
  `ciclos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `password`) VALUES
('admin2@gmail.com', '$2y$10$TL0qxrOWyWXISNUZSglFrecRxGUwfhsvkFd6gsTbMrZFmAfwX9FJO'),
('Admin@gmail.com', '$2y$10$yUscPingg6HjbN2WbcVHrudGlJwPGPOuXqw9LV33hnHkxg1qe3jj2'),
('caracol@gmail.com', '$2y$10$dGmciHwCnQhYW6OnLeeCCeRtqLBMtYYoeqq6ILibRXtinYyaod5K6'),
('ManuelGarcia@gmail.com', '$2y$10$23e8o5zjdMHCl2vl/7GMwOq8VjHQtAkj1Ov6XQ8sxoXFZPmAcJ3U2'),
('paco@gmail.com', '$2y$10$GGLMCURE8hb1YIwxaXUNl.6o1RuIB/9l0xIOOdpODhzE2l3aJyRDG'),
('pepe2@gmail.com', '$2y$10$M.Q0NuAlWkpHA95An9ENxuNkvnOgZYCkwClkAoUQO7CXvEJAusl3K'),
('pepe@gmail.com', '$2y$10$cCApW6gXh32M2jpWs7dqYefOAnEs47HuJle5nVvHHjkYyE15bPBP6'),
('Prueba@gmail.com', '$2y$10$WUOjo.QbMqSvcr6nJpYKVOpBbEU7pZ1ur9RcSiVHUsgl3uF5hpi/e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `metodos`
--
ALTER TABLE `metodos`
  ADD PRIMARY KEY (`id_metodo`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `metodos`
--
ALTER TABLE `metodos`
  MODIFY `id_metodo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `metodos`
--
ALTER TABLE `metodos`
  ADD CONSTRAINT `metodos_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuarios` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
