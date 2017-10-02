package mx.edu.itsta.Controller;

/**
 *
 * @author Clair
 */
//Para importar los objetos que van a transportar la informacion.   
import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOuser;

public class Controller {

    /**
     *
     * @param dataUser
     * @return
     */
    public int validateUser(DTOLogin dataUser) {
        if (dataUser.getPass().equals("1")) {
            return 1;
        }
        return 0;
    }

    public int nuevoUsuario(DTOuser user) {
        String ape = user.getNombre();
        if (ape.length() > 0) {
            return 1;
        }
        return 0;
    }
}
