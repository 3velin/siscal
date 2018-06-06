-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2018 a las 03:14:14
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsiscal`
--
CREATE DATABASE IF NOT EXISTS `dbsiscal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbsiscal`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idactividad` int(11) NOT NULL,
  `idplaninicial` int(11) NOT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `periodoactividad` varchar(45) DEFAULT NULL,
  `fecharegistro` timestamp NULL DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `idtipoactividad` int(11) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `asistenteaproximado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadcliente`
--

CREATE TABLE `actividadcliente` (
  `idactividadcliente` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `actividad_idactividad` int(11) NOT NULL,
  `actividad_idplaninicial` int(11) NOT NULL,
  `actividad_idtipoactividad` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  `lecturaactualmedidor` int(11) DEFAULT NULL,
  `fecharegistro` timestamp NULL DEFAULT NULL,
  `idempleadoresponsable` int(11) DEFAULT NULL,
  `suministro` varchar(45) DEFAULT NULL,
  `distrito` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  `nombre suministro` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `seriemedidor` varchar(45) DEFAULT NULL,
  `marcamedidor` varchar(45) DEFAULT NULL,
  `tipomedidor` varchar(45) DEFAULT NULL,
  `aniofabricamedidor` varchar(45) DEFAULT NULL,
  `fases` varchar(45) DEFAULT NULL,
  `ultimalectura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadresponsable`
--

CREATE TABLE `actividadresponsable` (
  `empleados_idempleados` int(11) NOT NULL,
  `actividades_idactividades` int(11) NOT NULL,
  `actividades_plan_inicial_idplan_inicial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjunto`
--

CREATE TABLE `adjunto` (
  `idadjunto` int(11) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `archivo` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `detalleactividad_iddetalleactividad` int(11) NOT NULL,
  `detalleactividad_idactividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleactividad`
--

CREATE TABLE `detalleactividad` (
  `iddetalleactividad` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecharegistro` timestamp NULL DEFAULT NULL,
  `idactividad` int(11) NOT NULL,
  `asistentetotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `apellidopaterno` varchar(120) DEFAULT NULL,
  `apellidomaterno` varchar(120) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fechanacimiento` timestamp NULL DEFAULT NULL,
  `fecharegistro` timestamp NULL DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `idtipoempleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacioncampo`
--

CREATE TABLE `informacioncampo` (
  `idinformacioncampo` int(11) NOT NULL,
  `cumple` varchar(45) DEFAULT NULL,
  `actividadcliente_idactividadcliente` int(11) NOT NULL,
  `actividadcliente_actividad_idactividad` int(11) NOT NULL,
  `actividadcliente_actividad_idplaninicial` int(11) NOT NULL,
  `actividadcliente_actividad_idtipoactividad` int(11) NOT NULL,
  `actividadcliente_cliente_idcliente` int(11) NOT NULL,
  `observacion_idobservacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `idmaterial` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `actividad_idactividad` int(11) NOT NULL,
  `actividad_idplaninicial` int(11) NOT NULL,
  `actividad_idtipoactividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `idobservacion` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipoinformacion_idtipoinformacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `permiso` bit(1) DEFAULT NULL,
  `idrol` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planinicial`
--

CREATE TABLE `planinicial` (
  `idplaninicial` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planinicial`
--

INSERT INTO `planinicial` (`idplaninicial`, `nombre`, `estado`) VALUES
(1, 'Plan inicial', 1),
(3, 'name', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoactividad`
--

CREATE TABLE `tipoactividad` (
  `idtipoactividad` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoactividad`
--

INSERT INTO `tipoactividad` (`idtipoactividad`, `nombre`, `estado`) VALUES
(1, 'Actividad', 1),
(2, 'temasocultos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleado`
--

CREATE TABLE `tipoempleado` (
  `idtipoempleado` int(11) NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinformacion`
--

CREATE TABLE `tipoinformacion` (
  `idtipoinformacion` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `contrasenia` varchar(100) DEFAULT NULL,
  `fecharegistro` timestamp NULL DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `empleado_idempleado` int(11) NOT NULL,
  `empleado_idtipoempleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idactividad`,`idplaninicial`,`idtipoactividad`),
  ADD KEY `fk_actividades_plan_inicial_idx` (`idplaninicial`),
  ADD KEY `fk_actividad_tipoactividad1_idx` (`idtipoactividad`);

--
-- Indices de la tabla `actividadcliente`
--
ALTER TABLE `actividadcliente`
  ADD PRIMARY KEY (`idactividadcliente`,`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`,`cliente_idcliente`),
  ADD KEY `fk_actividadcliente_actividad1_idx` (`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`),
  ADD KEY `fk_actividadcliente_cliente1_idx` (`cliente_idcliente`);

--
-- Indices de la tabla `actividadresponsable`
--
ALTER TABLE `actividadresponsable`
  ADD PRIMARY KEY (`empleados_idempleados`,`actividades_idactividades`,`actividades_plan_inicial_idplan_inicial`),
  ADD KEY `fk_empleados_has_actividades_actividades1_idx` (`actividades_idactividades`,`actividades_plan_inicial_idplan_inicial`),
  ADD KEY `fk_empleados_has_actividades_empleados1_idx` (`empleados_idempleados`);

--
-- Indices de la tabla `adjunto`
--
ALTER TABLE `adjunto`
  ADD PRIMARY KEY (`idadjunto`,`detalleactividad_iddetalleactividad`,`detalleactividad_idactividad`),
  ADD KEY `fk_adjunto_detalleactividad1_idx` (`detalleactividad_iddetalleactividad`,`detalleactividad_idactividad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `detalleactividad`
--
ALTER TABLE `detalleactividad`
  ADD PRIMARY KEY (`iddetalleactividad`,`idactividad`),
  ADD KEY `fk_detalleactividad_actividad1_idx` (`idactividad`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`,`idtipoempleado`),
  ADD KEY `fk_empleado_tipoempleado1_idx` (`idtipoempleado`);

--
-- Indices de la tabla `informacioncampo`
--
ALTER TABLE `informacioncampo`
  ADD PRIMARY KEY (`idinformacioncampo`,`actividadcliente_idactividadcliente`,`actividadcliente_actividad_idactividad`,`actividadcliente_actividad_idplaninicial`,`actividadcliente_actividad_idtipoactividad`,`actividadcliente_cliente_idcliente`,`observacion_idobservacion`),
  ADD KEY `fk_informacioncampo_actividadcliente1_idx` (`actividadcliente_idactividadcliente`,`actividadcliente_actividad_idactividad`,`actividadcliente_actividad_idplaninicial`,`actividadcliente_actividad_idtipoactividad`,`actividadcliente_cliente_idcliente`),
  ADD KEY `fk_informacioncampo_observacion1_idx` (`observacion_idobservacion`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idmaterial`,`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`),
  ADD KEY `fk_material_actividad1_idx` (`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`idobservacion`),
  ADD KEY `fk_informacioncampo_tipoinformacion1_idx` (`tipoinformacion_idtipoinformacion`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`,`idrol`,`idusuario`),
  ADD KEY `fk_permiso_rol1_idx` (`idrol`),
  ADD KEY `fk_permiso_usuario1_idx` (`idusuario`);

--
-- Indices de la tabla `planinicial`
--
ALTER TABLE `planinicial`
  ADD PRIMARY KEY (`idplaninicial`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `tipoactividad`
--
ALTER TABLE `tipoactividad`
  ADD PRIMARY KEY (`idtipoactividad`);

--
-- Indices de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  ADD PRIMARY KEY (`idtipoempleado`);

--
-- Indices de la tabla `tipoinformacion`
--
ALTER TABLE `tipoinformacion`
  ADD PRIMARY KEY (`idtipoinformacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`,`empleado_idempleado`,`empleado_idtipoempleado`),
  ADD KEY `fk_usuario_empleado1_idx` (`empleado_idempleado`,`empleado_idtipoempleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividadcliente`
--
ALTER TABLE `actividadcliente`
  MODIFY `idactividadcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividadresponsable`
--
ALTER TABLE `actividadresponsable`
  MODIFY `empleados_idempleados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `adjunto`
--
ALTER TABLE `adjunto`
  MODIFY `idadjunto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleactividad`
--
ALTER TABLE `detalleactividad`
  MODIFY `iddetalleactividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacioncampo`
--
ALTER TABLE `informacioncampo`
  MODIFY `idinformacioncampo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idmaterial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `idobservacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planinicial`
--
ALTER TABLE `planinicial`
  MODIFY `idplaninicial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoactividad`
--
ALTER TABLE `tipoactividad`
  MODIFY `idtipoactividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  MODIFY `idtipoempleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoinformacion`
--
ALTER TABLE `tipoinformacion`
  MODIFY `idtipoinformacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_actividad_tipoactividad1` FOREIGN KEY (`idtipoactividad`) REFERENCES `tipoactividad` (`idtipoactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_actividades_plan_inicial` FOREIGN KEY (`idplaninicial`) REFERENCES `planinicial` (`idplaninicial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `actividadcliente`
--
ALTER TABLE `actividadcliente`
  ADD CONSTRAINT `fk_actividadcliente_actividad1` FOREIGN KEY (`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`) REFERENCES `actividad` (`idactividad`, `idplaninicial`, `idtipoactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_actividadcliente_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `actividadresponsable`
--
ALTER TABLE `actividadresponsable`
  ADD CONSTRAINT `fk_empleados_has_actividades_actividades1` FOREIGN KEY (`actividades_idactividades`,`actividades_plan_inicial_idplan_inicial`) REFERENCES `actividad` (`idactividad`, `idplaninicial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empleados_has_actividades_empleados1` FOREIGN KEY (`empleados_idempleados`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `adjunto`
--
ALTER TABLE `adjunto`
  ADD CONSTRAINT `fk_adjunto_detalleactividad1` FOREIGN KEY (`detalleactividad_iddetalleactividad`,`detalleactividad_idactividad`) REFERENCES `detalleactividad` (`iddetalleactividad`, `idactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalleactividad`
--
ALTER TABLE `detalleactividad`
  ADD CONSTRAINT `fk_detalleactividad_actividad1` FOREIGN KEY (`idactividad`) REFERENCES `actividad` (`idactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_empleado_tipoempleado1` FOREIGN KEY (`idtipoempleado`) REFERENCES `tipoempleado` (`idtipoempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informacioncampo`
--
ALTER TABLE `informacioncampo`
  ADD CONSTRAINT `fk_informacioncampo_actividadcliente1` FOREIGN KEY (`actividadcliente_idactividadcliente`,`actividadcliente_actividad_idactividad`,`actividadcliente_actividad_idplaninicial`,`actividadcliente_actividad_idtipoactividad`,`actividadcliente_cliente_idcliente`) REFERENCES `actividadcliente` (`idactividadcliente`, `actividad_idactividad`, `actividad_idplaninicial`, `actividad_idtipoactividad`, `cliente_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_informacioncampo_observacion1` FOREIGN KEY (`observacion_idobservacion`) REFERENCES `observacion` (`idobservacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `fk_material_actividad1` FOREIGN KEY (`actividad_idactividad`,`actividad_idplaninicial`,`actividad_idtipoactividad`) REFERENCES `actividad` (`idactividad`, `idplaninicial`, `idtipoactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `fk_informacioncampo_tipoinformacion1` FOREIGN KEY (`tipoinformacion_idtipoinformacion`) REFERENCES `tipoinformacion` (`idtipoinformacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `fk_permiso_rol1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_permiso_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_empleado1` FOREIGN KEY (`empleado_idempleado`,`empleado_idtipoempleado`) REFERENCES `empleado` (`idempleado`, `idtipoempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
