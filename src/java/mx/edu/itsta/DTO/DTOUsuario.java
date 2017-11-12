package mx.edu.itsta.DTO;

/**
 *
 * @author Yaquiii
 */
public class DTOUsuario extends ModelosDTO{
    private int id_usuario;
    private String correo;
    private String contraseña;
    private DTOPersona DatosPersona;
    private int tipo_user;

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_Usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the contraseña
     */
    public String getContraseña() {
        return contraseña;
    }

    /**
     * @param contraseña the contraseña to set
     */
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    /**
     * @return the DatosPersona
     */
    public DTOPersona getDatosPersona() {
        return DatosPersona;
    }

    /**
     * @param DatosPersona the DatosPersona to set
     */
    public void setDatosPersona(DTOPersona DatosPersona) {
        this.DatosPersona = DatosPersona;
    }

    /**
     * @return the tipo_user
     */
    public int getTipo_user() {
        return tipo_user;
    }

    /**
     * @param tipo_user the tipo_user to set
     */
    public void setTipo_user(int tipo_user) {
        this.tipo_user = tipo_user;
    }
}
