package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOuser {

    public String idUser = "1";
    public String nombre = "Nombre default";
    public String apePaterno = "apePaterno";
    public String apeMaterno = "apeMaterno";
    public String correo = "e mail default";
    public String pass = "pass default";
    public String rePass = "";

    public DTOuser(String nombre, String apePaterno, String apeMaterno, String Correo, String pass, String rePass) {
        this.nombre = nombre;
        this.apePaterno = apePaterno;
        this.apeMaterno = apeMaterno;
        this.correo = Correo;
        this.pass = pass;
        this.rePass = rePass;
    }

    public DTOuser(String id, String nombre, String apePaterno, String apeMaterno, String Correo, String pass, String rePass) {
        this.idUser = id;
        this.nombre = nombre;
        this.apePaterno = apePaterno;
        this.apeMaterno = apeMaterno;
        this.correo = Correo;
        this.pass = pass;
        this.rePass = rePass;
    }

    public DTOuser() {
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
        return apeMaterno;
    }

    public void setApeMaterno(String apeMaterno) {
        this.apeMaterno = apeMaterno;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String Correo) {
        this.correo = Correo;
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
