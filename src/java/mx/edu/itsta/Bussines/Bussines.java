package mx.edu.itsta.Bussines;

import java.sql.SQLException;

//Área para las consultas a la DB
import mx.edu.itsta.DAO.DAOUsuario;


//Área de los modelos de transporte
import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOuser;

/**
 *
 * @author Clair
 */
public class Bussines {

    public int validUser(DTOLogin login) throws SQLException {
        DAOUsuario ingreso = new DAOUsuario();
        return ingreso.validarUsuario(login);
    }
    
    public int nuevoUsuario(DTOuser user){
        DAOUsuario nuevoUser = new DAOUsuario();
        return nuevoUser.Agregar(user);
    }
}
