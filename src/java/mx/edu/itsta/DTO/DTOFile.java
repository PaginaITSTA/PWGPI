package mx.edu.itsta.DTO;

/**
 *
 * @author Clair
 */
public class DTOFile {

    public String nombreArchivo = "";
    public String idTipoArchivo = "";
    public String idTipoUsuario = "";
    public String respuestaDB = "";

    public DTOFile() {
        //Constructor DTOFile vacío
    }

    public DTOFile(String nombreArchivo, String idTipoArchivo, String idTipoUsuario) {
        this.nombreArchivo = nombreArchivo;
        this.idTipoArchivo = idTipoArchivo;
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getNombreArchivo() {
        return nombreArchivo;
    }

    public void setNombreArchivo(String nombreArchivo) {
        this.nombreArchivo = nombreArchivo;
    }

    public String getIdTipoArchivo() {
        return idTipoArchivo;
    }

    public void setIdTipoArchivo(String idTipoArchivo) {
        this.idTipoArchivo = idTipoArchivo;
    }

    public String getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(String idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getRespuestaDB() {
        return respuestaDB;
    }

    public void setRespuestaDB(String respuestaDB) {
        this.respuestaDB = respuestaDB;
    }
}
