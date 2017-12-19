package mx.edu.itsta.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.itsta.Connect.Conexion;
import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOuser;

/**
 *
 * @author Yaquiii
 */
public class DAOUsuario {

    Connection conn = null;
    Statement sql = null;
    CallableStatement cstmt = null;

    public DAOUsuario() {
    }

    public int Agregar(DTOuser user) {
        boolean resultado;
        int respuesta = 0;
        Conexion con;
        try {
            //call bd_materia.AgregaNuevoUsuario('Alguien', 'Ape P', 'Ape M', 'alguien@example.com', '123', 1);
            con = new Conexion();
            con.getConnection().setAutoCommit(false);
            cstmt = con.getConnection().prepareCall("call bd_materia.AgregaNuevoUsuario(?,?,?,?,?,?)");

            cstmt.setString(1, user.getNombre());
            cstmt.setString(2, user.getApePaterno());
            cstmt.setString(3, user.getMaterno());
            cstmt.setString(4, user.getCorreo());
            cstmt.setString(5, user.getPass());
            cstmt.setInt(6, user.getTipoUser());

            resultado = cstmt.execute();

            //con.getConnection().commit();
            if (resultado) {
                ResultSet rs = cstmt.getResultSet();

                rs.next();
                user.setRespuestaRegistro(rs.getString("Mensaje"));
            }

            con.desconectar();

            respuesta = (resultado) ? 1 : 0;

        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    public int validarUsuario(DTOLogin login) throws SQLException {
        int i = 0;
        //La operacion que se debe de ejecutar es: select bd_materia.verificarLogin('mail', 'pass');
        Conexion con;
        try {
            con = new Conexion();
            conn = con.getConnection();

            sql = conn.createStatement();
            ResultSet rs = sql.executeQuery("select bd_materia.verificarLogin('" + login.getCorreo() + "', '" + login.getPass() + "', '" + login.getTipoUser() + "') as resultado;");

            //Nos va a regresar un 1 si pasa y un 0 si es que no pasa
            //System.out.println("Acabo el resultset");
            while (rs.next()) {

                i = Integer.parseInt(rs.getString("resultado"));
            }

            con.desconectar();
            return i;

        } catch (java.lang.NullPointerException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        return i;
    }

}
