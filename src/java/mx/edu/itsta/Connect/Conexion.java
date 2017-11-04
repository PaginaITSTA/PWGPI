package mx.edu.itsta.Connect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import mx.edu.itsta.DTO.DTOPersona;
/**
 *
 * @author Yaquiii
 */
public class Conexion{
//    static String bd = "bd_materia";
    static String login = "root";
    static String password = "";
//    static String port ="3306";
//    static String url = "jdbc:mysql://localhost:3306/bd_materia";
    
    Connection conn = null;
    Statement sql = null;
    
     public Conexion(String login, String password) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        this.login = "root";
        this.password = "";
        this.ConectaraSQL();
    }
    
     /**
     * Constructor que establece la conexión con el usuario por default (root o administrador)
     */
    public Conexion() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException{
        this.login = "root";
        this.password = "";
        this.ConectaraSQL();
    }
    
    public void ConectaraSQL() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
     System.out.println("conecta");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_materia","root","");
        sql = conn.createStatement();
        System.out.print("conexion establecida" );
    }catch(Exception e){
        System.out.print("Error en la conexion" +e);
    }
}
    
    
    
    
   public Connection getConnection() {
        return conn;
    }
   public void desconectar() {
       try{
       sql.close();
       conn.close();
       }catch(SQLException e){
           System.out.println("Error mientras se cierra la conexión");
       }
//        conn = null;
    }

   public boolean ingreso_datos(DTOPersona persona){
    boolean encontrado= false;
    try{
    ConectaraSQL();
    int i=sql.executeUpdate("INSERT INTO Persona VALUES ('"+persona.getId_persona()+"','"+persona.getNombre()+"',"
        +persona.getApellidoP()+","+persona.getApellidoM()+")");
       if(i > 0){
        encontrado =true;
       }
    } catch (Exception e){
    e.getStackTrace();
    }
    return encontrado;
    }
}
