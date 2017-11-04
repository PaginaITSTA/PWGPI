
package mx.edu.itsta.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import mx.edu.itsta.DTO.ModelosDTO;

/**
 *
 * @author Yaquiii
 */
public interface ModelosDAO {
    /**
     * Función genérica para agregar un registro en una tabla de la base de datos
     * @param dto Modelo DTO con los datos nuevos
     * @return ID del registro insertado
     * @throws java.sql.SQLException
     */
    public int Agregar(ModelosDTO dto)throws SQLException;

    /**
     * Función genérica para actualizar los registros de una tabla de la base de datos
     * @param dto Modelo DTO con los datos actualizados
     * @throws java.sql.SQLException
     */
    public boolean Actualizar(ModelosDTO dto)throws SQLException;

    /**
     * Función genérica que permite eliminar un registro de una tabla de la base de datos
     * @param id Id del registro a eliminar
     * @return True si se elimino el registro y False en caso contrario
     * @throws java.sql.SQLException
     */
    public boolean Eliminar(int id) throws SQLException;

    /**
     * Función genérica para buscar un registro de una tabla en la base de datos
     * @param id id del registro a buscar
     * @return Los datos en un objeto de la clase ModeloVO
     * @throws java.sql.SQLException
     */
    public ModelosDTO Buscar(int id) throws SQLException;

       /**
     * Función genérica para listar los registros de una tabla en la base de datos
     * @return Los datos de la tabla en un ArrayList
     * @throws java.sql.SQLException
     */
    public ArrayList<ModelosDTO> Listar() throws SQLException;
}


