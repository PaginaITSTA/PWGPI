package mx.edu.itsta.DAO;

import mx.edu.itsta.DTO.DTOLogin;

/**
 *
 * @author Clair
 */
public class DAOLogin {

    private DTOLogin usuario;

    public DAOLogin(DTOLogin usuario) {
        this.usuario = usuario;
    }

    public boolean compruebaEntrada() {
        return false;
    }

    public boolean nuevoUsuario() {
        return false;
    }

}
