DELIMITER $$

USE `bd_materia`$$

DROP FUNCTION IF EXISTS `verificarLogin`$$

CREATE DEFINER=`root`@`localhost` FUNCTION `verificarLogin`(email VARCHAR(45), passwd VARCHAR(40), tusuario VARCHAR(50)) RETURNS TINYINT(1)
BEGIN
	IF EXISTS(SELECT * FROM v_login WHERE Correo = email AND Contraseña = SHA1(passwd) AND TipoUsuario = tusuario) THEN
	RETURN TRUE;
	ELSE
	RETURN FALSE;
	END IF;
    END$$

DELIMITER ;