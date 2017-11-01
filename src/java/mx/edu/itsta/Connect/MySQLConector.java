package mx.edu.itsta.Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConector{
   static String bd = "bd_materia";
    static String login = "root";
    static String password = "";
    static String port ="3306";
    static String url = "jdbc:mysql://localhost/:"+port+"/"+bd;
    
    Connection conn = null;
    
     public MySQLConector(String login, String password) {
        this.login = "root";
        this.password = "";
    }
    
    public void ConectaraSQL() {
     System.out.println("conecta");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //obtenemos la conexión
            conn = DriverManager.getConnection(url,login,password);
            
            if (conn != null) {
                System.out.println("[MYSQL] Conexión a base de datos ");
            }
            }catch (SQLException | ClassNotFoundException e) {
            System.out.println("[MYSQL] Conexión a la base de datos " + bd + ".....FAILED");
            System.out.println(e.toString());
        }
    }
   

    public Connection getConnection() {
      return conn;
    }
    
    public void desconectar() {
        conn = null;
    }
}