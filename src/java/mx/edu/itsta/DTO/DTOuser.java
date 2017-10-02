package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOuser {

    public String nombre;
    public String apePaterno;
    public String ApeMaterno;
    public String Correo;
    public String pass;
    public String rePass;

    public DTOuser(String nombre, String apePaterno, String ApeMaterno, String Correo, String pass, String rePass) {
        this.nombre = nombre;
        this.apePaterno = apePaterno;
        this.ApeMaterno = ApeMaterno;
        this.Correo = Correo;
        this.pass = pass;
        this.rePass = rePass;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApePaterno() {
        return apePaterno;
    }

    public void setApePaterno(String apePaterno) {
        this.apePaterno = apePaterno;
    }

    public String getApeMaterno() {
        return ApeMaterno;
    }

    public void setApeMaterno(String ApeMaterno) {
        this.ApeMaterno = ApeMaterno;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRePass() {
        return rePass;
    }

    public void setRePass(String rePass) {
        this.rePass = rePass;
    }

}
