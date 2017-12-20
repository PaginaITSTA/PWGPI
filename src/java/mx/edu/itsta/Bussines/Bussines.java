package mx.edu.itsta.Bussines;

import java.sql.SQLException;
import java.util.ArrayList;
import mx.edu.itsta.DAO.DAOFile;

//Área para las consultas a la DB
import mx.edu.itsta.DAO.DAOUsuario;

//Área de los modelos de transporte
import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOuser;
import mx.edu.itsta.DTO.DTOFile;

/**
 *
 * @author Clair
 */
public class Bussines {

    public int validUser(DTOLogin login) throws SQLException {
        DAOUsuario ingreso = new DAOUsuario();
        return ingreso.validarUsuario(login);
    }

    public int nuevoUsuario(DTOuser user) {
        DAOUsuario nuevoUser = new DAOUsuario();
        return nuevoUser.Agregar(user);
    }

    public int nuevoArchivo(DTOFile archivo) {
        DAOFile newFile = new DAOFile();
        return newFile.agregarArchivo(archivo);
    }

    public ArrayList<DTOuser> getEncargados() {
        DAOUsuario encargados = new DAOUsuario();
        return encargados.verEncargados();
    }
    
    public ArrayList<DTOuser> getAlumnos() {
        DAOUsuario encargados = new DAOUsuario();
        return encargados.verAlumnos();
    }
}
