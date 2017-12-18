package mx.edu.itsta.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.itsta.Connect.Conexion;
import mx.edu.itsta.DTO.DTOFile;

/**
 *
 * @author Clair
 */
public class DAOFile {

    Connection conn = null;
    Statement sql = null;
    CallableStatement cstmt = null;

    public DAOFile() {
    }

    public int agregarArchivo(DTOFile archivo) {
        int respuesta = 0;
        boolean resultado;
        Conexion con;

        try {
            con = new Conexion();
            con.getConnection().setAutoCommit(false);
            //call bd_materia.agregarArchivo('Screenshot_3.png', 1, 3);
            cstmt = con.getConnection().prepareCall("call bd_materia.agregarArchivo(?,?,?);");

            cstmt.setString(1, archivo.nombreArchivo);
            cstmt.setString(2, archivo.idTipoArchivo);
            cstmt.setString(3, archivo.idTipoUsuario);

            resultado = cstmt.execute();

            if (resultado) {
                ResultSet rs = cstmt.getResultSet();

                rs.next();

                archivo.setRespuestaDB(rs.getString("Mensaje"));
            }

            con.desconectar();

            respuesta = (resultado) ? 1 : 0;

        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

}
