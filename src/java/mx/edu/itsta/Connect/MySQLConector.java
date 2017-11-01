package mx.edu.itsta.Connect;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Clair
 */
public class MySQLConector {

    private String url = "jdbc:mysql://localhost/feedback?";
    private String user = "root";
    private String password = "erick";
    private Connection con = null;

    //Aquí debe de regresar la conección
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Error de Driver");
        } catch (SQLException e2) {
            System.out.println("Un error con la base de datos");
        }
        return this.con;
    }

    public void cerrarConnection() throws SQLException {
        if (this.con != null) {
            this.con.close();
        }
    }

    /*       
    
    public void cerrarConnection() throws SQLException{
        if (this.con!=null) {
            this.con.close();
        }
    }

    public conexion(){}
    
    
     */
}
