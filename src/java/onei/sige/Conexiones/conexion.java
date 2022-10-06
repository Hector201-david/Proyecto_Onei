package onei.sige.Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {

    Connection con;

    public conexion() {

        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sige", "postgres", "postgresql");
            System.out.println("\n Conexion Exitosa con la DB");

        } catch (Exception e) {
            System.out.println("Error al Conectar con la DB " + e.getMessage());
        }

    }

    public Connection getConexion() {
        return con;
    }
}
