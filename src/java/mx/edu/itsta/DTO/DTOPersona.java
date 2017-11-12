package mx.edu.itsta.DTO;

/**
 *
 * @author Yaquiii
 */
public class DTOPersona extends ModelosDTO {
    private int id_persona;
    private String nombre;
    private String ApellidoP;
    private String ApellidoM;

    /**
     * @return the id_persona
     */
    public int getId_persona() {
        return id_persona;
    }

    /**
     * @param id_persona the id_persona to set
     */
    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the ApellidoP
     */
    public String getApellidoP() {
        return ApellidoP;
    }

    /**
     * @param ApellidoP the ApellidoP to set
     */
    public void setApellidoP(String ApellidoP) {
        this.ApellidoP = ApellidoP;
    }

    /**
     * @return the ApellidoM
     */
    public String getApellidoM() {
        return ApellidoM;
    }

    /**
     * @param ApellidoM the ApellidoM to set
     */
    public void setApellidoM(String ApellidoM) {
        this.ApellidoM = ApellidoM;
    }
}
