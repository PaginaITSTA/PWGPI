/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.24-log : Database - bd_materia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bd_materia` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `bd_materia`;

/*Table structure for table `archivo` */

DROP TABLE IF EXISTS `archivo`;

CREATE TABLE `archivo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `folder` varchar(300) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `src` varchar(300) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `created at` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `archivo` */

/*Table structure for table `archivos` */

DROP TABLE IF EXISTS `archivos`;

CREATE TABLE `archivos` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_tipoarchivo` int(11) NOT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `id_tipoarchivo` (`id_tipoarchivo`),
  CONSTRAINT `archivos_ibfk_3` FOREIGN KEY (`id_tipoarchivo`) REFERENCES `tipo_archivo` (`Id_tipoarchivo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `archivos` */

insert  into `archivos`(`id_documento`,`nombre_archivo`,`url`,`id_tipoarchivo`) values (1,'2.14.MVC.pdf','2',1),(2,'coloresPW.docx','1',1),(3,'Carta de Presentación.docx','2',1),(4,'Anteproyecto.docx','3',1),(5,'d3dx9_42.dll','1',1),(6,'CPY.ini','1',1),(7,'gpConfig.php','1',2),(8,'x.txt','1',3),(9,'Material.txt','c:/subidos/Material.txt',2),(10,'CALIDADPROYECTO.pdf','c:/subidos/CALIDADPROYECTO.pdf',1),(11,'C:\\Users\\Claudio\\Documents\\x.java','c:/subidos/C:\\Users\\Claudio\\Documents\\x.java',3);

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `Id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_persona` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `persona` */

insert  into `persona`(`Id_persona`,`nombre_persona`,`apellidopaterno`,`apellidomaterno`) values (24,'juan','perez','ramos'),(25,'CLAUDIO','OSORIO','ZUÑIGA'),(26,'Xochitl','Altamirano','Herrera'),(27,'rogelio','garcia','Hernandez'),(28,'flor','cruz','de la cruz'),(29,'lluvia','ponce','medellin'),(30,'jack','sparrow','morales'),(33,'raul','gonzalez','Hernandez'),(34,'julian','morales','garcia'),(35,'Jacqueline','Morales','Hernandez'),(36,'Guadalupe','Hernandez','Chavez'),(37,'alumno1','martinez','garcia'),(38,'docente2','apellidopa','apellidoma'),(39,'jasiel','gomez','perez'),(40,'docente3','u','h'),(41,'Jacquelin','Morales','Hernández'),(42,'jaci','maci','darci');

/*Table structure for table `tipo_archivo` */

DROP TABLE IF EXISTS `tipo_archivo`;

CREATE TABLE `tipo_archivo` (
  `Id_tipoarchivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_tipoarchivo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tipo_archivo` */

insert  into `tipo_archivo`(`Id_tipoarchivo`,`nombre_archivo`) values (1,'Actividad'),(2,'Material'),(3,'Apunte');

/*Table structure for table `tipo_usuario` */

DROP TABLE IF EXISTS `tipo_usuario`;

CREATE TABLE `tipo_usuario` (
  `id_tipouser` int(11) NOT NULL AUTO_INCREMENT,
  `nombreuser` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_tipouser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tipo_usuario` */

insert  into `tipo_usuario`(`id_tipouser`,`nombreuser`) values (1,'Alumno'),(2,'Encargado'),(3,'Administrador');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`Id_usuario`,`correo`,`password`,`Id_persona`,`id_tipouser`) values (8,'juan14@hotmail.com','123',24,1),(9,'CLAUDIOOSMAR1296@GMAIL.COM','12345',25,1),(10,'xochitl@gmail.com','xochitl',26,2),(11,'rogelio@hotmail.com','12',27,2),(12,'flornayeli@gmail.com','flor',28,1),(13,'lluvia@gmail.com','lluvia',29,2),(14,'sparrow@gmail.com','jack',30,1),(17,'docente1@gmail.com','uno',33,2),(18,'julian@gmail.com','123',34,1),(19,'jacmohe@hotmail.com','123',35,1),(20,'guada@gmail.com','lupe',36,2),(21,'alumno1@gmail.com','alumno',37,1),(22,'jacmohe@hotmail.com','jair',38,2),(23,'jasiel@gmail.com','jasiel',39,2),(24,'docente3@gmail.com','sec',40,2),(25,'jacque@gmail.com','123',41,1),(26,'admin@gmail.com','admin',41,3),(27,'darci@gmail.com','d',42,1);

/* Function  structure for function  `verificarLogin` */

/*!50003 DROP FUNCTION IF EXISTS `verificarLogin` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `verificarLogin`(email VARCHAR(45), passwd VARCHAR(40), tusuario VARCHAR(50)) RETURNS tinyint(1)
BEGIN
	IF EXISTS(SELECT * FROM vlogin WHERE Correo = email AND Contraseña = passwd AND TipoUsuario = tusuario) THEN
	RETURN TRUE;
	ELSE
	RETURN FALSE;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarArchivo`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarPersona` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarPersona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPersona`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarTipoArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarTipoArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarTipoArchivo`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarUsuario`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `AgregaNuevoUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `AgregaNuevoUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregaNuevoUsuario`(
  
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarArchivo`(
  IN pNombreArchivo longblob, 
  IN pIdTipoArchivo INT(11), 
  IN pIdTipoUsuario varchar(100))
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
 ELSE
      IF NOT EXISTS (SELECT nombre_archivo FROM  archivos WHERE nombre_archivo=pNombreArchivo)THEN
         INSERT INTO archivos VALUES (NULL,pNombreArchivo, pIdTipoUsuario, pIdTipoArchivo);
         SELECT 'EL ARCHIVO SE  HA SUBIDO CORRECTAMENTE' AS Mensaje;
         COMMIT;
      ELSE
          SELECT 'EL ARCHIVO NO SE HA SUBIDO CORRECTAMENTE' AS Mensaje;
      END IF;
  END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarPersona` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarPersona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarPersona`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarTipoArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarTipoArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTipoArchivo`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarTipoUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarTipoUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTipoUsuario`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `agregarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `agregarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarUsuario`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `consultarTipoArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `consultarTipoArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarTipoArchivo`(
IN pnombreArchivo VARCHAR(40))
BEGIN
SET @val = pnombreArchivo;
SET @sql = CONCAT("SELECT Nombre TipoArchivo FROM vtipoarchivo WHERE Nombre TipoArchivo LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `consultarTipoUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `consultarTipoUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarTipoUsuario`(
IN pnombreUser VARCHAR(50))
BEGIN
SET @val = pnombreUser;
SET @sql = CONCAT("SELECT Nombre TipoUsuario FROM vtipousuario WHERE Nombre TipoUsuario LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `consultarusuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `consultarusuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarusuario`(
IN pCorreo VARCHAR(45))
BEGIN
SET @val = pCorreo;
SET @sql = CONCAT("SELECT Correo FROM v_usuarios WHERE Correo LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `consultarUsuarios2` */

/*!50003 DROP PROCEDURE IF EXISTS  `consultarUsuarios2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarUsuarios2`(
IN P_Nombre VARCHAR(30))
BEGIN
SET @val = P_Nombre;
SET @sql = CONCAT("SELECT Nombre FROM v_usuarios WHERE Nombre LIKE","'%",@val,"%'");
PREPARE s1 FROM @sql;
EXECUTE s1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarArchivo`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarPersona` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarPersona` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPersona`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarTipoArchivo` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarTipoArchivo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTipoArchivo`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarTipoUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarTipoUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTipoUsuario`(
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarUsuario`(
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
 END */$$
DELIMITER ;

/*Table structure for table `v_usuarios` */

DROP TABLE IF EXISTS `v_usuarios`;

/*!50001 DROP VIEW IF EXISTS `v_usuarios` */;
/*!50001 DROP TABLE IF EXISTS `v_usuarios` */;

/*!50001 CREATE TABLE  `v_usuarios`(
 `Correo` varchar(45) ,
 `Contraseña` varchar(40) ,
 `TipoUsuario` varchar(50) ,
 `Nombre` varchar(30) ,
 `ApellidoPaterno` varchar(50) ,
 `ApellidoMaterno` varchar(50) 
)*/;

/*Table structure for table `valumnos` */

DROP TABLE IF EXISTS `valumnos`;

/*!50001 DROP VIEW IF EXISTS `valumnos` */;
/*!50001 DROP TABLE IF EXISTS `valumnos` */;

/*!50001 CREATE TABLE  `valumnos`(
 `Correo` varchar(45) ,
 `Nombre` varchar(30) ,
 `ApellidoPaterno` varchar(50) ,
 `ApellidoMaterno` varchar(50) 
)*/;

/*Table structure for table `varchivos` */

DROP TABLE IF EXISTS `varchivos`;

/*!50001 DROP VIEW IF EXISTS `varchivos` */;
/*!50001 DROP TABLE IF EXISTS `varchivos` */;

/*!50001 CREATE TABLE  `varchivos`(
 `Id` int(11) ,
 `Nombre Archivo` varchar(50) ,
 `Link` varchar(100) 
)*/;

/*Table structure for table `vencargado` */

DROP TABLE IF EXISTS `vencargado`;

/*!50001 DROP VIEW IF EXISTS `vencargado` */;
/*!50001 DROP TABLE IF EXISTS `vencargado` */;

/*!50001 CREATE TABLE  `vencargado`(
 `Correo` varchar(45) ,
 `Nombre` varchar(30) ,
 `ApellidoPaterno` varchar(50) ,
 `ApellidoMaterno` varchar(50) 
)*/;

/*Table structure for table `vlogin` */

DROP TABLE IF EXISTS `vlogin`;

/*!50001 DROP VIEW IF EXISTS `vlogin` */;
/*!50001 DROP TABLE IF EXISTS `vlogin` */;

/*!50001 CREATE TABLE  `vlogin`(
 `Correo` varchar(45) ,
 `Contraseña` varchar(40) ,
 `TipoUsuario` varchar(50) 
)*/;

/*Table structure for table `vtipoarchivo` */

DROP TABLE IF EXISTS `vtipoarchivo`;

/*!50001 DROP VIEW IF EXISTS `vtipoarchivo` */;
/*!50001 DROP TABLE IF EXISTS `vtipoarchivo` */;

/*!50001 CREATE TABLE  `vtipoarchivo`(
 `IdTipoArchivo` int(11) ,
 `Nombre TipoArchivo` varchar(40) 
)*/;

/*Table structure for table `vtipousuario` */

DROP TABLE IF EXISTS `vtipousuario`;

/*!50001 DROP VIEW IF EXISTS `vtipousuario` */;
/*!50001 DROP TABLE IF EXISTS `vtipousuario` */;

/*!50001 CREATE TABLE  `vtipousuario`(
 `IdTipoUsuario` int(11) ,
 `Nombre TipoUsuario` varchar(50) 
)*/;

/*View structure for view v_usuarios */

/*!50001 DROP TABLE IF EXISTS `v_usuarios` */;
/*!50001 DROP VIEW IF EXISTS `v_usuarios` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usuarios` AS select `usuario`.`correo` AS `Correo`,`usuario`.`password` AS `Contraseña`,`tipo_usuario`.`nombreuser` AS `TipoUsuario`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) */;

/*View structure for view valumnos */

/*!50001 DROP TABLE IF EXISTS `valumnos` */;
/*!50001 DROP VIEW IF EXISTS `valumnos` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valumnos` AS select `usuario`.`correo` AS `Correo`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) where (`tipo_usuario`.`nombreuser` = 'Alumno') */;

/*View structure for view varchivos */

/*!50001 DROP TABLE IF EXISTS `varchivos` */;
/*!50001 DROP VIEW IF EXISTS `varchivos` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `varchivos` AS (select `archivos`.`id_documento` AS `Id`,`archivos`.`nombre_archivo` AS `Nombre Archivo`,`archivos`.`url` AS `Link` from `archivos`) */;

/*View structure for view vencargado */

/*!50001 DROP TABLE IF EXISTS `vencargado` */;
/*!50001 DROP VIEW IF EXISTS `vencargado` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vencargado` AS select `usuario`.`correo` AS `Correo`,`persona`.`nombre_persona` AS `Nombre`,`persona`.`apellidopaterno` AS `ApellidoPaterno`,`persona`.`apellidomaterno` AS `ApellidoMaterno` from ((`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`))) join `persona` on((`usuario`.`Id_persona` = `persona`.`Id_persona`))) where (`tipo_usuario`.`nombreuser` = 'Encargado') */;

/*View structure for view vlogin */

/*!50001 DROP TABLE IF EXISTS `vlogin` */;
/*!50001 DROP VIEW IF EXISTS `vlogin` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vlogin` AS (select `usuario`.`correo` AS `Correo`,`usuario`.`password` AS `Contraseña`,`tipo_usuario`.`nombreuser` AS `TipoUsuario` from (`usuario` join `tipo_usuario` on((`usuario`.`id_tipouser` = `tipo_usuario`.`id_tipouser`)))) */;

/*View structure for view vtipoarchivo */

/*!50001 DROP TABLE IF EXISTS `vtipoarchivo` */;
/*!50001 DROP VIEW IF EXISTS `vtipoarchivo` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtipoarchivo` AS (select `tipo_archivo`.`Id_tipoarchivo` AS `IdTipoArchivo`,`tipo_archivo`.`nombre_archivo` AS `Nombre TipoArchivo` from `tipo_archivo`) */;

/*View structure for view vtipousuario */

/*!50001 DROP TABLE IF EXISTS `vtipousuario` */;
/*!50001 DROP VIEW IF EXISTS `vtipousuario` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtipousuario` AS (select `tipo_usuario`.`id_tipouser` AS `IdTipoUsuario`,`tipo_usuario`.`nombreuser` AS `Nombre TipoUsuario` from `tipo_usuario`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
