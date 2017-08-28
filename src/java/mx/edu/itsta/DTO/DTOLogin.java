package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOLogin {

    public String nombre;
    public String usuario;
    public String apellido;
    public String correo;

    public DTOLogin() {
    }

    public DTOLogin(String nombre, String usuario, String apellido, String correo) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.apellido = apellido;
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

}
