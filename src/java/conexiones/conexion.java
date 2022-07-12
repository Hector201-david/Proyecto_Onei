package conexiones;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {

    Connection con;

    public conexion() {

        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sige", "postgres", "root");

        } catch (Exception e) {
            System.out.println("Error al conectar con la db " + e.getMessage());
        }

    }

    public Connection getConexion() {
        return con;
    }
}
