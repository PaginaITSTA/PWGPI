package mx.edu.itsta.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.itsta.Connect.Conexion;
import mx.edu.itsta.Controller.Controller;
import mx.edu.itsta.DTO.DTOLogin;
import mx.edu.itsta.DTO.DTOUsuario;
import mx.edu.itsta.DTO.ModelosDTO;

/**
 *
 * @author Yaquiii
 */
public class DAOUsuario implements ModelosDAO {

    Connection conn = null;
    Statement sql = null;

    public DAOUsuario() {
    }

    public int Agregar(ModelosDTO dto) throws SQLException {
        /*Conexion conn = new Conexion();
        conn.getConnection().setAutoCommit(false);
        CallableStatement PA_Agrega = conn.getConnection().
                prepareCall("{ call EmpleadoAgregar(?,?,?,?,?) }");
        PA_Agrega.setInt(1, ((DTOUsuario) dto).getId_usuario());
        PA_Agrega.setString(2, ((DTOUsuario) dto).getCorreo());
        PA_Agrega.setString(3, ((DTOUsuario) dto).getContraseña());
        PA_Agrega.setInt(4, ((DTOUsuario) dto).getDatosPersona().getId_persona());
        PA_Agrega.setInt(5, ((DTOUsuario) dto).getTipo_user());
        PA_Agrega.execute();
        conn.getConnection().commit();
        conn.desconectar();*/

        return ((DTOUsuario) dto).getId_usuario();
    }

    @Override
    public boolean Actualizar(ModelosDTO dto) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Eliminar(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelosDTO Buscar(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<ModelosDTO> Listar() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int validarUsuario(DTOLogin login) throws SQLException {
        int i = 0;
        //La operacion que se debe de ejecutar es: select bd_materia.verificarLogin('mail', 'pass');
        Conexion con;
        try {
            con = new Conexion();
            conn = con.getConnection();

            boolean encontrado = false;

            con.ConectaraSQL();
            sql = conn.createStatement();

            ResultSet rs = sql.executeQuery("select bd_materia.verificarLogin('" + login.getCorreo() + "', '" + login.getPass() + "') as resultado;");

            //Nos va a regresar un 1 si pasa y un 0 si es que no pasa
            while (rs.next()) {
                System.out.println("El resultado original del rs es: " + rs.getString("resultado"));

                i = Integer.parseInt(rs.getString("resultado"));
                System.out.println("El valor de i es: " + i);

            }

            con.desconectar();
            return i;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        return i;
    }

}
