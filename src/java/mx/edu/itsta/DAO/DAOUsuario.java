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
import mx.edu.itsta.DTO.DTOUsuario;
import mx.edu.itsta.DTO.DTOuser;

/**
 *
 * @author Yaquiii
 */
public class DAOUsuario {

    Connection conn = null;
    Statement sql = null;

    public DAOUsuario() {
    }

    public int Agregar(DTOuser user) {
//        Conexion conn;
//        try {
//            conn = new Conexion();
//            conn.getConnection().setAutoCommit(false);
//            
//            CallableStatement PA_Agrega = conn.getConnection().
//                    prepareCall("{ call EmpleadoAgregar(?,?,?,?,?) }");
//            
//            PA_Agrega.setInt(1, ((DTOUsuario) dto).getId_usuario());
//            PA_Agrega.setString(2, ((DTOUsuario) dto).getCorreo());
//            PA_Agrega.setString(3, ((DTOUsuario) dto).getContraseña());
//            PA_Agrega.setInt(4, ((DTOUsuario) dto).getDatosPersona().getId_persona());
//            PA_Agrega.setInt(5, ((DTOUsuario) dto).getTipo_user());
//            PA_Agrega.execute();
//            conn.getConnection().commit();
//            conn.desconectar();
//
//            
//        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
//            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        return ((DTOUsuario) dto).getId_usuario();
        return 0;
    }

    public int validarUsuario(DTOLogin login) throws SQLException {
        int i = 0;
        //La operacion que se debe de ejecutar es: select bd_materia.verificarLogin('mail', 'pass');
        Conexion con;
        try {
            con = new Conexion();
            conn = con.getConnection();

            sql = conn.createStatement();
            ResultSet rs = sql.executeQuery("select bd_materia.verificarLogin('" + login.getCorreo() + "', '" + login.getPass() + "') as resultado;");

            //Nos va a regresar un 1 si pasa y un 0 si es que no pasa
            System.out.println("Acabo el resultset");
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
