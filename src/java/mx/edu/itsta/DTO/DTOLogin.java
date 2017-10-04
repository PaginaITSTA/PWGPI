package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOLogin {

    public String tipoUser = "";
    public String correo = "";
    public String pass = "";

    public String error = "";
    public int acceso = 0;

    public DTOLogin(String tipoUser, String correo, String pass) {
        this.tipoUser = tipoUser;
        this.correo = correo;
        this.pass = pass;
    }

    public DTOLogin(String tipoUser, String correo, String pass, String error, int acceso) {
        this.tipoUser = tipoUser;
        this.correo = correo;
        this.pass = pass;
        this.error = error;
        this.acceso = acceso;
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

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public int getAcceso() {
        return acceso;
    }

    public void setAcceso(int acceso) {
        this.acceso = acceso;
    }

}
