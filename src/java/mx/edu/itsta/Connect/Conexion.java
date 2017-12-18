package mx.edu.itsta.Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yaquiii
 */
public class Conexion {

    static String login = "root";
    static String password = "";
    static String url = "jdbc:mysql://localhost:3306/bd_materia";

    Connection conn = null;
    Statement sql = null;

    public Conexion(String login, String password) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        this.login = login;
        this.password = password;
        this.ConectaraSQL();
    }

    public Conexion() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Conexion.login = "root";
        Conexion.password = "";
        this.ConectaraSQL();
    }

    public void ConectaraSQL() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection(url, login, password);
            sql = conn.createStatement();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Connection getConnection() {
        return conn;
    }

    public void desconectar() {
        try {
            sql.close();
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error mientras se cierra la conexión");
        }
    }
}
