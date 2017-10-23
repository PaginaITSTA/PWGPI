package mx.edu.itsta.DTO;

/**
 *
 * @author Yaquiii
 */
public class DTOUsuario {
    private int id_empleado;
    private String correo;
    private String contraseña;
    private DTOPersona DatosPersona;
    private int tipo_user;

    /**
     * @return the id_empleado
     */
    public int getId_empleado() {
        return id_empleado;
    }

    /**
     * @param id_empleado the id_empleado to set
     */
    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
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
