package mx.edu.itsta.Controller;

/**
 *
 * @author Clair
 */
//Para importar los objetos que van a transportar la informacion.
import java.sql.SQLException;
import mx.edu.itsta.Bussines.Bussines;

import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOuser;
import mx.edu.itsta.DTO.DTOFile;

public class Controller {

    Bussines MyBuss = new Bussines();

    //Debe de retornar 1 en caso de ser correcto el acceso y cero en caso de no serlo.
    public int validateUser(DTOLogin dataUser) throws SQLException {
        return MyBuss.validUser(dataUser);
    }

    public int nuevoUsuario(DTOuser user) {
        return MyBuss.nuevoUsuario(user);
    }

    public int guardarArchivo(DTOFile archivo) {
        //System.out.println("Datos: " + archivo.getIdTipoArchivo() + ", " + archivo.getIdTipoUsuario() + ", " + archivo.getNombreArchivo());
        //System.out.println("");
        return MyBuss.nuevoArchivo(archivo);
    }
}
