
package mx.edu.itsta.DAO;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import mx.edu.itsta.Connect.Conexion;
import mx.edu.itsta.Controller.Controller;
import mx.edu.itsta.DTO.DTOPersona;
import mx.edu.itsta.DTO.ModelosDTO;

/**
 *
 * @author Yaquiii
 */
public class DAOPersona implements ModelosDAO{
private Controller controlador;

    public DAOPersona(Controller Controller) {
        this.controlador = Controller;
    }
    
    @Override
    public int Agregar(ModelosDTO dto) throws SQLException {
//        Conexion conn = new Conexion();
//        conn.getConnection().setAutoCommit(false);
       /* CallableStatement PA_Agrega = conn.getConnection().
                prepareCall("{ call PersonaAgregar(?,?,?,) }");
        //PA_Agrega.setInt(1, ((PersonaVO) mvo).getId_persona());
        PA_Agrega.setString(1, ((DTOPersona) dto).getNombre());
        PA_Agrega.setString(2, ((DTOPersona) dto).getApellidoP());
        PA_Agrega.setString(3, ((DTOPersona) dto).getApellidoM());
        PA_Agrega.execute();
       //((DTOPersona) dto).setId_persona(conn.ultimoID());

        conn.getConnection().commit();
        conn.desconectar();*/
        return ((DTOPersona) dto).getId_persona();
        
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
    
}
