package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOLogin {

    public String tipoUser;
    public String correo;
    public String pass;

    public DTOLogin(String tipoUser, String correo, String pass) {
        this.tipoUser = tipoUser;
        this.correo = correo;
        this.pass = pass;
    }

    public DTOLogin() {
    }
    
    public String getTipoUser() {
        return tipoUser;
    }

    public void setTipoUser(String tipoUser) {
        this.tipoUser = tipoUser;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}