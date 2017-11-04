
package mx.edu.itsta.DAO;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mx.edu.itsta.Connect.Conexion;
import mx.edu.itsta.Controller.Controller;
import mx.edu.itsta.DTO.DTOUsuario;
import mx.edu.itsta.DTO.ModelosDTO;

/**
 *
 * @author Yaquiii
 */
public class DAOUsuario implements ModelosDAO{
private Controller controlador;

    public DAOUsuario(Controller Controller) {
        this.controlador = Controller;
    }
    
    @Override
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
    
    
    public boolean validarUsuario(String correo, String passwd) throws SQLException {
        /*Conexion conec = new Conexion();
        PreparedStatement con = conec.getConnection().prepareStatement("Select verificarLogin (?,?) as login");

        con.setString(1, correo);
        con.setString(2, passwd);

        System.out.println("[MYSQL ] SELECT  verificarLogin (?,?) as login {" + correo + ":" + passwd + "}");

        ResultSet res = con.executeQuery();
        if (res.next()) {
            if (res.getInt("login") == 1) {
                conec.desconectar();
                return true;
            } else {
                conec.desconectar();
                return false;
            }
        }
        conec.desconectar();*/
        return false;
    }
    
}
