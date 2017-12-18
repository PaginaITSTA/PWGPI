package mx.edu.itsta.DTO;

/**
 *
 * @author Yaquiii
 */
public class DTOPersona {

    public int idPersona = 1;
    public String nombre = "Nombre Default";
    public String apellidoP;
    public String apellidoM;

    public DTOPersona() {
    }

    public DTOPersona(int idPersona, String nombre, String apellidoP, String apellidoM) {
        this.idPersona = idPersona;
        this.nombre = nombre;
        this.apellidoP = apellidoP;
        this.apellidoM = apellidoM;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }

}
