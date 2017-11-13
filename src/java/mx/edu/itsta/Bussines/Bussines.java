package mx.edu.itsta.Bussines;

import java.sql.SQLException;
import mx.edu.itsta.DAO.DAOUsuario;
import mx.edu.itsta.DTO.DTOLogin;

/**
 *
 * @author Clair
 */
public class Bussines {

    public int validUser(DTOLogin login) throws SQLException {
        DAOUsuario ingreso = new DAOUsuario();
        return ingreso.validarUsuario(login);
    }
}
