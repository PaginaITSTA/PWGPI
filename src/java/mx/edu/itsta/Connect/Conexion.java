package mx.edu.itsta.Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.edu.itsta.DTO.DTOPersona;

/**
 *
 * @author Yaquiii
 */
public class Conexion {
//    static String bd = "bd_materia";

    static String login = "root";
    static String password = "";
//    static String port ="3306";
    static String url = "jdbc:mysql://localhost:3306/bd_materia";

    Connection conn = null;
    Statement sql = null;

    public Conexion(String login, String password) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        this.login = "root";
        this.password = "";
        this.ConectaraSQL();
    }

    /**
     * Constructor que establece la conexión con el usuario por default (root o
     * administrador)
     */
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
//        conn = null;
    }

    public boolean ingreso_datos(DTOPersona persona) {
        boolean encontrado = false;
        try {
            ConectaraSQL();
            System.out.println("Nombre de persona es: " + persona.getNombre());
            int i = sql.executeUpdate("INSERT INTO bd_materia.persona VALUES (null , '" + persona.getNombre() + "','"
                    + persona.getApellidoP() + "' , '" + persona.getApellidoM() + "');");
            encontrado = (i == 1) ? true : false;
            //System.out.println("Encontrado = " + i);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return encontrado;
    }


    
    
}    
    
    /**
     *
     * public static void main(String[] args) throws SQLException { try { //Solo
     * se conecta Conexion con = new Conexion();
     *
     * DTOPersona per = new DTOPersona(); per.setId_persona(15);
     * per.setNombre("Usuario2"); per.setApellidoP("ApellidoP");
     * per.setApellidoM("ApellidoM");
     *
     * System.out.println("Resultado es: " + con.ingreso_datos(per));
     *
     * } catch (ClassNotFoundException ex) {
     * Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex); }
     * catch (InstantiationException ex) {
     * Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex); }
     * catch (IllegalAccessException ex) {
     * Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex); }
     * }
     */
