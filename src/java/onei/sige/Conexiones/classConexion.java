package onei.sige.Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;

public class classConexion {

    private String db = "sige";
    private String user = "postgres";
    private String passwd = "postgresql";
    private String url = "jdbc:postgresql://localhost:5432/" + db;
    private Connection con;
    private static classConexion instance = new classConexion();

    private classConexion() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, user, passwd);
        } catch (Exception e) {
            System.out.println("Error al conectar con la db " + e.getMessage());
        }
    }

    public static classConexion getInstance() {
        return instance;
    }

    public Connection getConexion() {
        return con;
    }
}
