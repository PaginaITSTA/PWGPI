-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: bd_materia
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `archivo`
--

DROP TABLE IF EXISTS `archivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `folder` varchar(300) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `src` varchar(300) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `created at` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivo`
--

LOCK TABLES `archivo` WRITE;
/*!40000 ALTER TABLE `archivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `archivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archivos`
--

DROP TABLE IF EXISTS `archivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivos` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` longblob,
  `id_tipoarchivo` int(11) NOT NULL,
  `id_tipouser` int(11) NOT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `id_tipoarchivo` (`id_tipoarchivo`),
  KEY `id_tipouser` (`id_tipouser`),
  CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`id_tipoarchivo`) REFERENCES `tipo_archivo` (`Id_tipoarchivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `archivos_ibfk_2` FOREIGN KEY (`id_tipouser`) REFERENCES `tipo_usuario` (`id_tipouser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivos`
--

LOCK TABLES `archivos` WRITE;
/*!40000 ALTER TABLE `archivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `archivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `Id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_persona` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (3,'Edgar David','Hernandez','Garcia'),(4,'Jair','Barcenas','Gomez'),(5,'Reynaldo','Ramirez','Hernandez');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_archivo`
--

DROP TABLE IF EXISTS `tipo_archivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_archivo` (
  `Id_tipoarchivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_tipoarchivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_archivo`
--

LOCK TABLES `tipo_archivo` WRITE;
/*!40000 ALTER TABLE `tipo_archivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_archivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id_tipouser` int(11) NOT NULL AUTO_INCREMENT,
  `nombreuser` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_tipouser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Alumno'),(2,'Encargado'),(3,'Administrador');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `Id_persona` int(11) NOT NULL,
  `id_tipouser` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`),
  KEY `Id_persona` (`Id_persona`),
  KEY `id_tipouser` (`id_tipouser`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_persona`) REFERENCES `persona` (`Id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipouser`) REFERENCES `tipo_usuario` (`id_tipouser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (5,'reynaldo12@gmail.com','4',5,2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_login`
--

DROP TABLE IF EXISTS `v_login`;
/*!50001 DROP VIEW IF EXISTS `v_login`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_login` AS SELECT 
 1 AS `Correo`,
 1 AS `Contraseña`,
 1 AS `TipoUsuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_usuarios`
--

DROP TABLE IF EXISTS `v_usuarios`;
/*!50001 DROP VIEW IF EXISTS `v_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_usuarios` AS SELECT 
 1 AS `Correo`,
 1 AS `Contraseña`,
 1 AS `TipoUsuario`,
 1 AS `Nombre`,
 1 AS `ApellidoPaterno`,
 1 AS `ApellidoMaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `valumnos`
--

DROP TABLE IF EXISTS `valumnos`;
/*!50001 DROP VIEW IF EXISTS `valumnos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `valumnos` AS SELECT 
 1 AS `Correo`,
 1 AS `Nombre`,
 1 AS `ApellidoPaterno`,
 1 AS `ApellidoMaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `varchivos`
--

DROP TABLE IF EXISTS `varchivos`;
/*!50001 DROP VIEW IF EXISTS `varchivos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `varchivos` AS SELECT 
 1 AS `Nombre Archivo`,
 1 AS `Tipo de Archivo`,
 1 AS `Tipo de Usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vencargado`
--

DROP TABLE IF EXISTS `vencargado`;
/*!50001 DROP VIEW IF EXISTS `vencargado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vencargado` AS SELECT 
 1 AS `Correo`,
 1 AS `Nombre`,
 1 AS `ApellidoPaterno`,
 1 AS `ApellidoMaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vtipoarchivo`
--

DROP TABLE IF EXISTS `vtipoarchivo`;
/*!50001 DROP VIEW IF EXISTS `vtipoarchivo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vtipoarchivo` AS SELECT 
 1 AS `IdTipoArchivo`,
 1 AS `Nombre TipoArchivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vtipousuario`
--

DROP TABLE IF EXISTS `vtipousuario`;
/*!50001 DROP VIEW IF EXISTS `vtipousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vtipousuario` AS SELECT 
 1 AS `IdTipoUsuario`,
 1 AS `Nombre TipoUsuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_materia'
--

--
-- Dumping routines for database 'bd_materia'
--
/*!50003 DROP FUNCTION IF EXISTS `verificarLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verificarLogin`(email VARCHAR(45), passwd VARCHAR(40), tusuario VARCHAR(50)) RETURNS tinyint(1)
BEGIN
	IF EXISTS(SELECT * FROM v_login WHERE Correo = email AND Contraseña = passwd AND TipoUsuario = tusuario) THEN
	RETURN TRUE;
	ELSE
	RETURN FALSE;
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarArchivo`(
  IN `pid` INT(11),
  IN `pnombreArchivo` LONGBLOB,
  IN `pidTipoArchivo` INT(11),
  IN `pidTipoUser` INT(11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombreArchivo)) = 0 THEN
    SELECT 'NO INGRESO EL NOMBRE DEL ARCHIVO' AS Mensaje;
    ROLLBACK;
  ELSEIF LENGTH(TRIM(pidTipoArchivo)) = 0  THEN
    SELECT 'NO INGRESO EL TIPO DE ARCHIVO' AS Mensaje;
    ROLLBACK;
  ELSEIF LENGTH(TRIM(pidTipoUser)) = 0  THEN
    SELECT 'NO INGRESO EL TIPO DE USUARIO' AS Mensaje;
    ROLLBACK;
  ELSE		
    IF NOT EXISTS (SELECT nombre_archivo FROM  archivos WHERE nombre_archivo = pnombreArchivo)THEN
      UPDATE archivos SET nombre_archivo = pnombreArchivo, id_tipoarchivo = pidTipoArchivo, id_tipouser = pidTipoUser WHERE id_documento = pid;
      SELECT 'EL ARCHIVO SE HA ACTUALIZADO CORRECTAMENTE' AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL ARCHIVO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPersona`(
  IN `pid` INT(11),
  IN `pnombrePersona` VARCHAR(30),
  IN `papellidoPaterno` VARCHAR(50),
  IN `papellidoMaterno` VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SHOW ERRORS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR SQLWARNING
BEGIN
  SHOW WARNINGS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR 1452
BEGIN
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombrePersona)) = 0 THEN
    SELECT 'NO INGRESO EL NOMBRE DE LA PERSONA' AS Mensaje;
    ROLLBACK;
  ELSEIF LENGTH (TRIM(papedllidoPaterno)) = 0 THEN
    SELECT 'NO INGRESO EL APELLIDO PATERNO DE LA PERSONA' AS Mensaje;
    ROLLBACK;
  ELSEIF LENGTH (TRIM(papellidoMaterno)) = 0 THEN
    SELECT 'NO INGRESO EL APELLIDO MATERNO DE LA PERSONA' AS Mensaje;
    ROLLBACK;
  ELSE
    IF NOT EXISTS (SELECT nombre_persona FROM  persona WHERE  correo = pCorreo)THEN
      UPDATE persona SET nombre_persona = pnombrePersona, apellidopaterno = papellidoPaterno, apellidomaterno = papellidoMaterno WHERE Id_persona = pid;
      SELECT 'LA PERSONA SE HA ACTUALIZADO CORRECTAMENTE' AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'LA PERSONA YA SE ENCUENTRA REGISTRADA' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarTipoArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarTipoArchivo`(
  IN `pId` INT,
  IN `pnombre_archivo` VARCHAR(50)
)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombre_archivo)) = 0 THEN
    SELECT 'NO INGRESO EL NOMBRE DEL TIPO DE ARCHIVO' AS Mensaje;
    ROLLBACK;
  ELSE
    IF NOT EXISTS (SELECT nombre_archivo FROM  tipo_archivo WHERE nombre_archivo=pnombre_archivo)THEN
      UPDATE tipo_archivo SET nombre_archivo = pnombre_archivo  WHERE Id_tipoarchivo = pId;
      SELECT 'EL TIPO DE ARCHIVO SE HA ACTUALIZADO CORRECTAMENTE' AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL TIPO DE ARCHIVO YA SE ENCUENTRA REGISTRADA' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarUsuario`(
  IN `pidUsuario` INT(11),
  IN `pCorreo` VARCHAR(20))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SHOW ERRORS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR SQLWARNING
BEGIN
  SHOW WARNINGS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR 1452
BEGIN
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pCorreo)) = 0 THEN
    SELECT 'NO ACTUALIZO EL CORREO' AS Mensaje;
    ROLLBACK;
  ELSE
    IF NOT EXISTS (SELECT pCorreo FROM  usuario WHERE  correo = pCorreo)THEN
      UPDATE usuario SET correo = pCorreo WHERE Id_usuario = pidUsuario;
      SELECT 'EL CORREO SE HA ACTUALIZADO CORRECTAMENTE' AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL CORREO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregaNuevoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregaNuevoUsuario`(
  
  IN pnombrePersona VARCHAR(30), 
  IN papellidoPaterno VARCHAR (50), 
  IN papellidoMaterno VARCHAR(50),  
  IN pCorreo VARCHAR(45), 
  IN pPassword VARCHAR (40), 
  IN pIdTipoUser INT(11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SHOW ERRORS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR SQLWARNING
BEGIN
  SHOW WARNINGS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR 1452
BEGIN
  ROLLBACK;
END;
START TRANSACTION;
  
  IF LENGTH(TRIM(pnombrePersona)) = 0  THEN
      SELECT 'NO INGRESO EL NOMBRE DE LA PERSONA' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(papellidoPaterno)) = 0  THEN
      SELECT 'NO INGRESO EL APELLIDO PATERNO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(papellidoMaterno)) = 0  THEN
      SELECT 'NO INGRESO EL APELLIDO MATERNO' AS Mensaje;
      ROLLBACK;  
  ELSEIF LENGTH(TRIM(pCorreo)) = 0  THEN
      SELECT 'NO INGRESO EL CORREO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pPassword)) = 0  THEN
      SELECT 'NO INGRESO EL PASSWORD' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pIdTipoUser)) = 0  THEN
      SELECT 'NO INGRESO EL ID DEL TIPO DE USUARIO' AS Mensaje;
  ELSE
      IF NOT EXISTS (SELECT nombre_persona FROM persona WHERE nombre_persona=pnombrePersona)THEN
         INSERT INTO persona VALUES (NULL,pnombrePersona, papellidoPaterno, papellidoMaterno);
         SELECT 'LA PERSONA SE HA REGISTRADO CORRECTAMENTE' AS Mensaje;
         set @val = (select max(Id_persona) from persona);
         INSERT INTO usuario VALUES (NULL,pCorreo, pPassword, @val, pIdTipoUser);
         SELECT 'EL USUARIO SE HA REGISTRADO CORRECTAMENTE' AS Mensaje;
         COMMIT;
               ELSE
          SELECT 'EL USUARIO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarArchivo`(
  IN pNombreArchivo longblob, 
  IN pIdTipoArchivo INT(11), 
  IN pIdTipoUsuario INT(11))
BEGIN  
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pNombreArchivo)) = 0  THEN
      SELECT 'NO CARGO EL ARCHIVO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pIdTipoArchivo)) = 0  THEN
      SELECT 'NO INGRESO EL TIPO DE ARCHIVO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pIdTipoUsuario)) = 0  THEN
      SELECT 'NO INGRESO EL TIPO DE USUARIO' AS Mensaje;
      ROLLBACK;
 ELSE
      IF NOT EXISTS (SELECT nombre_archivo FROM  archivos WHERE nombre_archivo=pNombreArchivo)THEN
         INSERT INTO archivos VALUES (NULL,pNombreArchivo, pIdTipoArchivo, pIdTipoUsuario);
         SELECT 'EL ARCHIVO SE  HA SUBIDO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'EL ARCHIVO NO SE HA SUBIDO CORRECTAMENTE' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarPersona`(
  IN pnombrePersona VARCHAR(30), 
  IN papellidoPaterno VARCHAR (50), 
  IN papellidoMaterno VARCHAR(50))
BEGIN  
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombrePersona)) = 0  THEN
      SELECT 'NO INGRESO EL NOMBRE' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(papellidoPaterno)) = 0  THEN
      SELECT 'NO INGRESO EL APELLIDO PATERNO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(papellidoMaterno)) = 0  THEN
      SELECT 'NO INGRESO EL APELLIDO MATERNO' AS Mensaje;
  ELSE
      IF NOT EXISTS (SELECT nombre_persona FROM  persona WHERE nombre_persona=pnombrePersona)THEN
         INSERT INTO persona VALUES (NULL,pnombrePersona,papellidoPaterno,papellidoMaterno);
         SELECT 'LA PERSONA SE HA REGISTRADO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'LA PERSONA YA SE ENCUENTRA REGISTRADA' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTipoArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTipoArchivo`(
  IN pnombreArchivo VARCHAR(40))
BEGIN  
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombreArchivo)) = 0  THEN
      SELECT 'NO INGRESO EL TIPO DE USUARIO' AS Mensaje;
      ROLLBACK;
  ELSE
      IF NOT EXISTS (SELECT nombre_archivo FROM  tipo_archivo WHERE nombre_archivo=pnombreArchivo)THEN
         INSERT INTO tipo_archivo VALUES (NULL, pnombreArchivo);
         SELECT 'EL TIPO DE ARCHIVO YA REGISTRADO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'EL TIPO DE ARCHIVO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTipoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTipoUsuario`(
  IN pnombreUser VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SHOW ERRORS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR SQLWARNING
BEGIN
  SHOW WARNINGS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR 1452
BEGIN
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pnombreUser)) = 0  THEN
      SELECT 'NO INGRESO EL TIPO DE USUARIO' AS Mensaje;
      ROLLBACK;
  ELSE
      IF NOT EXISTS (SELECT nombreuser FROM  tipo_usuario WHERE nombreuser=pnombreUser)THEN
         INSERT INTO tipo_usuario VALUES (NULL,pnombreUser);
         SELECT 'EL TIPO DE USUARIO YA REGISTRADO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'EL TIPO DE USUARIO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarUsuario`(
  IN pCorreo VARCHAR(45), 
  IN pPassword VARCHAR (40), 
  IN pIdPersona VARCHAR(50),
  IN pIdTipoUser INT(11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SHOW ERRORS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR SQLWARNING
BEGIN
  SHOW WARNINGS LIMIT 1;
  ROLLBACK;
END;
DECLARE EXIT HANDLER FOR 1452
BEGIN
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pCorreo)) = 0  THEN
      SELECT 'NO INGRESO EL CORREO' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pPassword)) = 0  THEN
      SELECT 'NO INGRESO LA CONTRASEÑA' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pIdPersona)) = 0  THEN
      SELECT 'NO INGRESO LA PERSONA' AS Mensaje;
      ROLLBACK;
  ELSEIF LENGTH(TRIM(pIdTipoUser)) = 0  THEN
      SELECT 'NO INGRESO EL TIPO DE USUARIO' AS Mensaje;
  ELSE
      IF NOT EXISTS (SELECT correo FROM  usuario WHERE correo=pCorreo)THEN
         INSERT INTO usuario VALUES (NULL,pCorreo,pPassword,pIdPersona,pIdTipoUser);
         SELECT 'EL USUARIO SE HA REGISTRADO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'EL USUARIO YA SE ENCUENTRA REGISTRADO' AS Mensaje;
      END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarTipoArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarTipoArchivo`(
IN pnombreArchivo VARCHAR(40))
BEGIN
SET @val = pnombreArchivo;
SET @sql = CONCAT("SELECT Nombre TipoArchivo FROM vtipoarchivo WHERE Nombre TipoArchivo LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarTipoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarTipoUsuario`(
IN pnombreUser VARCHAR(50))
BEGIN
SET @val = pnombreUser;
SET @sql = CONCAT("SELECT Nombre TipoUsuario FROM vtipousuario WHERE Nombre TipoUsuario LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarusuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarusuario`(
IN pCorreo VARCHAR(45))
BEGIN
SET @val = pCorreo;
SET @sql = CONCAT("SELECT Correo FROM v_usuarios WHERE Correo LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarUsuarios2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarUsuarios2`(
IN P_Nombre VARCHAR(30))
BEGIN
SET @val = P_Nombre;
SET @sql = CONCAT("SELECT Nombre FROM v_usuarios WHERE Nombre LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarArchivo`(
  IN `pid` INT (11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pid)) = 0 THEN
    SELECT 'NO ESCRIBIO NINGUN VALOR' AS  Mensaje;
    ROLLBACK;
  ELSE
    IF EXISTS (SELECT * FROM  `archivos` WHERE id_documento = pid)THEN
      DELETE FROM archivos WHERE id_documento=pid;   
      SELECT ('EL ARCHIVO SE ELIMINO CORRECTAMENTE') AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL ARCHIVO NO SE ENCUENTRA EN LA BASE DE DATOS' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPersona`(
  IN `pid` INT (11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pid)) = 0 THEN
    SELECT 'NO ESCRIBIO NINGUN VALOR' AS  Mensaje;
    ROLLBACK;
  ELSE
    IF EXISTS (SELECT * FROM  `persona` WHERE Id_persona = pid)THEN
      DELETE FROM persona WHERE Id_persona=pid;    
      SELECT ('LA PERSONA SE ELIMINO CORRECTAMENTE') AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'LA PERSONA NO SE ENCUENTRA EN LA BASE DE DATOS' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarTipoArchivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTipoArchivo`(
  IN `pid` INT (11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pid)) = 0 THEN
    SELECT 'NO ESCRIBIO NINGUN VALOR' AS  Mensaje;
    ROLLBACK;
  ELSE
    IF EXISTS (SELECT * FROM  `tipo_archivo` WHERE Id_tipoarchivo = pid)THEN
      DELETE FROM tipo_archivo WHERE Id_tipoarchivo=pid;   
      SELECT ('EL TIPO DE ARCHIVO SE ELIMINO CORRECTAMENTE') AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL TIPO DE ARCHIVO NO SE ENCUENTRA EN LA BASE DE DATOS' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarTipoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTipoUsuario`(
  IN `pid` INT (11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pid)) = 0 THEN
    SELECT 'NO ESCRIBIO NINGUN VALOR' AS  Mensaje;
    ROLLBACK;
  ELSE
    IF EXISTS (SELECT * FROM  `tipo_usuario` WHERE id_tipouser = pid)THEN
      DELETE FROM tipo_usuario WHERE id_tipouser=pid;   
      SELECT ('EL TIPO DE USUARIO SE ELIMINO CORRECTAMENTE') AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'EL TIPO DE USUARIO NO SE ENCUENTRA EN LA BASE DE DATOS' AS Mensaje;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarUsuario`(
  IN `pid` INT (11))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  SELECT 'rollback';
  ROLLBACK;
END;
START TRANSACTION;
  IF LENGTH (TRIM(pid)) = 0 THEN
    SELECT 'NO ESCRIBIO NINGUN VALOR' AS  Mensaje;
    ROLLBACK;
  ELSE
    IF EXISTS (SELECT * FROM  `usuario` WHERE Id_usuario = pid)THEN
      DELETE FROM usuario WHERE Id_usuario=pid;    
      SELECT ('EL USUARIO SE ELIMINO CORRECTAMENTE') AS Mensaje;
      COMMIT;
    ELSE 
      SELECT 'El USUARIO SE NO ENCUENTRA EN LA BASE DE DATOS' AS Mensaje;
    END IF;
  END IF;   
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_login`
--

/*!50001 DROP VIEW IF EXISTS `v_login`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_login` AS (select `usuario`.`correo` AS `Correo`,`usuario`.`password` AS `Contraseña`,`tipo_usuario`.`nombreuser` AS `TipoUsuario` from (`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `v_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_usuarios` AS select `usuario`.`correo` AS `Correo`,`usuario`.`password` AS `Contraseña`,`tipo_usuario`.`nombreuser` AS `TipoUsuario`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `valumnos`
--

/*!50001 DROP VIEW IF EXISTS `valumnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `valumnos` AS select `usuario`.`correo` AS `Correo`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) where (`tipo_usuario`.`nombreuser` = 'Alumno') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `varchivos`
--

/*!50001 DROP VIEW IF EXISTS `varchivos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `varchivos` AS (select `archivos`.`nombre_archivo` AS `Nombre Archivo`,`tipo_archivo`.`nombre_archivo` AS `Tipo de Archivo`,`tipo_usuario`.`nombreuser` AS `Tipo de Usuario` from ((`archivos` join `tipo_archivo` on((`archivos`.`id_tipoarchivo` = `tipo_archivo`.`Id_tipoarchivo`))) join `tipo_usuario` on((`archivos`.`id_tipouser` = `tipo_usuario`.`id_tipouser`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vencargado`
--

/*!50001 DROP VIEW IF EXISTS `vencargado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vencargado` AS select `usuario`.`correo` AS `Correo`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) where (`tipo_usuario`.`nombreuser` = 'Encargado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vtipoarchivo`
--

/*!50001 DROP VIEW IF EXISTS `vtipoarchivo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vtipoarchivo` AS (select `tipo_archivo`.`Id_tipoarchivo` AS `IdTipoArchivo`,`tipo_archivo`.`nombre_archivo` AS `Nombre TipoArchivo` from `tipo_archivo`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vtipousuario`
--

/*!50001 DROP VIEW IF EXISTS `vtipousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vtipousuario` AS (select `tipo_usuario`.`id_tipouser` AS `IdTipoUsuario`,`tipo_usuario`.`nombreuser` AS `Nombre TipoUsuario` from `tipo_usuario`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-01 17:46:08
